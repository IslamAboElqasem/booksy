class AssetsData {
  static const logo = 'assets/images/Logo.png';
  static const book1 = 'assets/images/test_image.png';
  static const book2 = 'assets/images/the_pychology_of_money.png';
  static const book3 = 'assets/images/Company_of_one.png';
  static const book4 = 'assets/images/matt_ridley.png';
  static const book5 =
      'assets/images/13 Horror Novels By Women To Terrify You This Fall.png';
  static const book6 =
      'assets/images/15 Animal Adventure Books Like The One and Only Ivan - Batch of Books.png';
  static const book7 =
      'assets/images/All the New Books to Read This November, From Sci-Fi Novels to Memoirs.png';
  static const book8 =
      'assets/images/Poster_ 24X36 Harry Potter And the Deathly Hallows - Book Cover Premiu (2).png';
  static const book9 =
      'assets/images/Rich Dad Poor Dad Summary (5 Minutes)_ 20 Lessons Learned & PDF file.png';
  static const book10 =
      'assets/images/Spirit Untamed_ The Movie Novel (Paperback) - Walmart_com.png';

  static const List listOfBooks = [
    book1,
    book2,
    book3,
    book4,
    book5,
    book6,
    book7,
    book8,
    book9,
    book10,
  ];
  static Map mapOfBestSeller = {
    AssetsData.listOfBooks[6]: [
      'Harry Potter and the Philosopher’s Stone ',
      'J.k. Rowling',
      '19.99 £',
      '4.3',
      '(4083)',
      '6'
    ],
    AssetsData.listOfBooks[8]: [
      'Rich Dad Poor Dad ',
      'Robert T. Kiysosaki',
      '12.33 £',
      '4.8',
      '(15189)',
      '8',
    ],
    AssetsData.listOfBooks[1]: [
      'The Pychology Of Money ',
      'Morgan Housel',
      '18.00 £',
      '4.6',
      '(5466)',
      '1'
    ],
    AssetsData.listOfBooks[4]: [
      'The Hidden People ',
      'Alison LittleWood',
      '15.99 £',
      '4.1',
      '(3224)',
      '4'
    ],
  };

  int getNumberOfBooks() {
    return listOfBooks.length;
  }

  int getNumberOfBestSellerBooks() {
    return mapOfBestSeller.length;
  }
}
