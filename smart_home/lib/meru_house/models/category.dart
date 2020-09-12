class Category {
  Category({
    this.title = '',
    this.imagePath = '',
    this.lessonCount = 0,
    this.money = 0,
    this.rating = 0.0,
    this.link = '',
  });

  String title;
  int lessonCount;
  int money;
  double rating;
  String imagePath;
  String link;

//  static List<Category> categoryList = <Category>[
//    Category(
//      imagePath: 'assets/design_course/interFace1.png',
//      title: 'User interface Design',
//      lessonCount: 24,
//      money: 25,
//      rating: 4.3,
//    ),
//    Category(
//      imagePath: 'assets/design_course/interFace2.png',
//      title: 'User interface Design',
//      lessonCount: 22,
//      money: 18,
//      rating: 4.6,
//    ),
//    Category(
//      imagePath: 'assets/design_course/interFace1.png',
//      title: 'User interface Design',
//      lessonCount: 24,
//      money: 25,
//      rating: 4.3,
//    ),
//    Category(
//      imagePath: 'assets/design_course/interFace2.png',
//      title: 'User interface Design',
//      lessonCount: 22,
//      money: 18,
//      rating: 4.6,
//    ),
//  ];

  static List<Category> popularCourseList = <Category>[
    Category(
      imagePath: 'assets/images/intercom.png',
      title: 'Intercom',
      lessonCount: 12,
      money: 25,
      rating: 5,
      link: 'intercom.dart'
    ),
    Category(
      imagePath: 'assets/images/accessControl.png',
      title: 'Access control',
      lessonCount: 28,
      money: 208,
      rating: 5,
      link: 'access_control.dart'
    ),
    Category(
      imagePath: 'assets/images/cctv.png',
      title: 'CCTV',
      lessonCount: 12,
      money: 25,
      rating: 5,
      link: 'cctv.dart'
    ),
    Category(
      imagePath: 'assets/images/smartFarm.png',
      title: 'Smart Farming.',
      lessonCount: 28,
      money: 208,
      rating: 5,
      link: 'smart_farming.dart'
    ),
  ];
}
