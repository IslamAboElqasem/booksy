import 'package:book_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:book_app/Features/home/presentation/view_models/feature_books_cubit/featured_books_cubit.dart';
import 'package:book_app/Features/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:book_app/Features/search/data/repos/search_repo_impl.dart';
import 'package:book_app/Features/search/presebtation/view_model/search_cubit/search_cubit.dart';
import 'package:book_app/constant.dart';
import 'package:book_app/core/utilits/app_routes.dart';
import 'package:book_app/core/utilits/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        ),
        BlocProvider(
          create: (context) => SearchCubit(
            getIt.get<SearchRepoIpl>(),
          )..featchResultOfSearch(),
        )
      ],
      child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kprimaryColor,
            textTheme: GoogleFonts.montserratAlternatesTextTheme(
                Typography.blackHelsinki),
          )),
    );
  }
}
