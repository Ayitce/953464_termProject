class TravelsInfo {
  String name;
  String tagLine;
  String description;
  String image;
  List<String> images;

  TravelsInfo({
    required this.name,
    required this.tagLine,
    required this.description,
    required this.image,
    required this.images,
  });

  void setDescription(String newDescription) {
    this.description = newDescription;
  }
}

final List<TravelsInfo> travelsInfo = [
  TravelsInfo(
    name: 'Khun Chang Khian',
    tagLine: "Khun Chang Khian - Where It All Begins",
    description:
        'If visiting Chiang Mai in the winter must not miss to visit Thailand Sakura or Phaya Sua Krong Flower in full bloom all over the beautiful mountain Khun Chang Kian or Khun Chang Kian Highland Agricultural Research Station and Training Center. The closest to the city of Chiang Mai. In January every year, there will be pink flowers for us to see. to take beautiful photos and get cold wind.',
    image: 'assets/images/ChangKian.jpg',
    images: [
      "https://tatapi.tourismthailand.org/tatfs/Image/CustomPOI/Picture/P03007664_1.jpeg",
      "https://chiangmaiguideline.com/wp-content/uploads/2017/09/Khun-Chang%E2%80%93Khian08.jpg",
      "https://tz-mag-media.s3.ap-southeast-1.amazonaws.com/wp-content/uploads/2017/10/23143210/212.jpg",
      "https://www.chiangmaitravelhub.com/wp-content/uploads/2015/04/Khun-Chang-Khian-4-scaled.jpg",
      "https://static.thairath.co.th/media/HCtHFA7ele6Q2dUK4Fvubl7kG9wfSkb3et5mV4pohQl6PTZTgqfk6pgiZKDT5U6cwX.jpg",
    ],
  ),
  TravelsInfo(
    name: 'Doi Luang Chiang Dao',
    tagLine: "Doi Luang - Always Natural",
    description:
        'Doi Luang Chiang Dao It is another attraction in Chiang Mai that is famous for its beauty and abundance of nature. The third highest in the country is 2,275 meters above sea level, making everyone want to go up and experience the beauty of nature. Let us see beautiful natural views. Nice place to go to sleep and watch the sea of stars. Wake up early and enjoy the sea of mist.',
    image: 'assets/images/Doiluang.jpg',
    images: [
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/bf/dd/5b/caption.jpg?w=1200&h=-1&s=1",
      "http://mychiangmaitravel.com/wp-content/uploads/2017/08/hiking-at-doi-luang-chiang-dao01.jpg",
      "https://live.staticflickr.com/3712/12157273716_4b7da62e21_b.jpg",
      "https://sites.google.com/site/20hillsofnorthernthailand/_/rsrc/1500277707556/doi-luang-chiang-dao/16080_og_1.jpeg",
      "https://blog.takemetour.com/wp-content/uploads/2019/07/Doi-Luang-Chiang-Dao-1.jpg",
    ],
  ),
  TravelsInfo(
    name: 'Doi Inthanon National Park',
    tagLine: "Doi Inthanon - The highest mountain in Thailand",
    description:
        'Popular tourists go up to Doi Inthanon. to walk in the rainforest filled with tall and tall trees Moss and green ferns around Ang Ka Luang area. Feel the freshness from nature. Stop to take pictures at the highest point on the mountain top and pay respects to Phra Mahathat Naphamethaneedon. and Phra Mahathat Nopphon Bhumisiri Beautiful among the mountains.',
    image: 'assets/images/Inthanon.jpg',
    images: [
      "https://windows10spotlight.com/wp-content/uploads/2022/11/797c1d68668c8eca9c2996f1ff6cb3f7.jpg",
      "https://localinsider.storage.googleapis.com/2021/09/12613.jpg",
      "https://www.thestupidbear.com/wp-content/uploads/2022/03/Visiting-Doi-Inthanon-National-Park.jpg",
      "https://tz-mag-media.s3.ap-southeast-1.amazonaws.com/wp-content/uploads/2019/04/08093741/01_resized.jpg",
      "https://cdn-imgix.headout.com/tour/34234/TOUR-IMAGE/cf74c561-cc3a-4fba-a20b-5598ff20204a-17934-chiang-mai--join-tour-walking-doi-inthanon-national-park-one-day-01.jpg?w=744&h=465&auto=compress%2Cformat&crop=faces&fit=min",
    ],
  ),
  TravelsInfo(
    name: 'Montha Than Waterfall',
    tagLine: "Montha Than Waterfall — Vacation Paradise",
    description:
        'Montathan Waterfall, also known as San Pa Yang Waterfall is located in Doi Suthep-Pui National Park, Suthep Subdistrict, Mueang Chiang Mai District. Chiang Mai Province. In fact, the waterfall here has 9 levels, but due to the danger of the route, the national park Only 2 floors are open for sightseeing.',
    image: 'assets/images/Monthatan.jpg',
    images: [
      "https://www.outdoorproject.com/sites/default/files/styles/hero_image_desktop_2x/public/1569891626/montha_than_waterfall-thailand-5.jpg?itok=XBi2RAmp",
      "https://d6qyz3em3b312.cloudfront.net/upload/images/media/2020/05/13/shutterstock_1361077337.2048x1024.jpg",
      "https://thailandtourismdirectory.go.th/assets/upload/2017/12/07/2017120709d51a05fdd4e3395abd678a0f7eb379145114.jpg",
      "https://image.kkday.com/v2/image/get/w_960%2Cc_fit%2Cq_55%2Ct_webp/s1.kkday.com/product_134428/20221013162317_JD986/jpg",
      "https://www.thaitravelloc.com/picture/pic301-4.jpg",
    ],
  ),
  TravelsInfo(
    name: 'Doi Suthep',
    tagLine: "Doi Suthep, visit and love us",
    description: 'Anyone who has traveled to Chiang Mai and hasn'
        't gone Wat Phra That Doi Suthep considered to have not reached Chiang Mai Ever since Wat Phra That Doi Suthep has been a sanctuary of Chiang Mai since ancient times. Located on the top of Doi Suthep There is also Seven-headed Naga Ladder which stretches up to 300 steps and a golden pagoda in Chiang Saen style It is a beautiful Lanna art. In addition, this place is a relic for people born in the Year of the Goat according to Lanna beliefs.',
    image: 'assets/images/Suthep.jpg',
    images: [
      "https://images.unsplash.com/photo-1547113848-625eb6d4e0b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=436&q=80",
      "https://images.unsplash.com/photo-1597496858689-24785b96adb3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
      "https://img.itinari.com/page/content/original/8e252021-61e2-4713-a288-698aeac3c0c3-mongkolchuewong.jpg?ch=DPR&dpr=2.625&w=994&s=c3bd78f34a8c2dacc98e1017df59e3e1",
      "https://img.freepik.com/free-photo/wat-phra-that-doi-suthep-chiang-mai-thailand_335224-1144.jpg",
      "https://mythailandtours.com/wp-content/uploads/2017/11/Doi-Suthep-temple-night-tour-3.jpg",
    ],
  ),
];
