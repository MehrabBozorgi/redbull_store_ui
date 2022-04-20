import 'package:flutter/material.dart';
import 'package:flutter_redbull_ui/model.dart';
import 'package:flutter_redbull_ui/styles.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  List<ModelClass> modelClass = [
    ModelClass(
        color: drink1Color,
        id: '1',
        title1: 'CLASSIC',
        title2: 'RedBull',
        title3: 'ENERGY DRINK',
        image: 'img1.png',
        price: '\$2.99'),
    ModelClass(
        color: drink2Color,
        id: '2',
        title1: 'BEST CLASSIC',
        title2: 'RedBull',
        title3: 'SUGAR FREE',
        image: 'img2.png',
        price: '\$5.00'),
    ModelClass(
        color: drink3Color,
        id: '3',
        title1: 'ALL NEW',
        title2: 'RedBull',
        title3: 'FESTIVAL EDITION',
        image: 'img3.png',
        price: '\$3.99'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu_rounded,
                        color: Colors.grey[800],
                      ),
                      const Text(
                        'Drinks',
                        style: titleBlackStyle,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey[800],
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: buttonColor,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: Text(
                            'Redbull',
                            style: cat1Style,
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: greyColor,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: Text(
                            'Monster',
                            style: catStyle,
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: greyColor,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: Text(
                            'Heineken zero',
                            style: catStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: modelClass.length,
                      itemBuilder: (context, index) => Card(
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            color: modelClass[index].color,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            elevation: 5,
                            child: SizedBox(
                              height: 220,
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          modelClass[index].title1,
                                          style: title1Style,
                                        ),
                                        Text(
                                          modelClass[index].title2,
                                          style: title2Style,
                                        ),
                                        Text(
                                          modelClass[index].title3,
                                          style: title1Style,
                                        ),
                                        const SizedBox(height: 20),
                                        Text(
                                          modelClass[index].price,
                                          style: title2Style,
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      modelClass[index].image,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: drink1Color,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: drink1Color,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.white38,
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: MediaQuery.of(context).size.height - 88,
                    child: Image.asset(
                      'img1.png',
                      // height: MediaQuery.of(context).size.height-20,
                      width: MediaQuery.of(context).size.width - 150,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'ALL NEW',
                          style: title1Style,
                        ),
                        Text(
                          'Redbull',
                          style: title2Style,
                        ),
                        Text(
                          'ENERGY DRINK',
                          style: title1Style,
                        ),
                        Text(
                          '\$19',
                          style: title2Style,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 1.40,
                      height: 315,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Not recommended for children, pregnant or nursing women and persons sensitive to caffeine. Phenylketonurics: Contains Phenylalanine. This product is labelled to United States standards an may differ from similar products sold elsewhere in its ingredients, labeling and Allergen warnings.Inspired by functional drinks from the Far East, Dietrich Mateschitz founded Red Bull in the mid-1980s.',
                        style: descStyle,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 130,
                    right: 20,
                    child: Column(
                      children: [
                        Column(
                          children: const [
                            Text(
                              'QUANTITY',
                              style: cat1Style,
                            ),
                            Text(
                              '750',
                              style: title2Style2,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
                          children: const [
                            Text(
                              'ALCOHOL',
                              style: cat1Style,
                            ),
                            Text(
                              '1.3 %',
                              style: title2Style2,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
                          children: const [
                            Text(
                              'SUGAR',
                              style: cat1Style,
                            ),
                            Text(
                              '5.7 %',
                              style: title2Style2,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 25,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 5,
                        primary: buttonColor,
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Add to Bag',
                        style: cat1Style,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
