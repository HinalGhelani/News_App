import 'package:flutter/material.dart';
import 'package:news_app/Helper_class.dart';
import 'package:news_app/Modal_class.dart';
import 'package:news_app/splashscreen.dart';
import 'Global.dart';
import 'detail_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash_screen',
    routes: {
      '/': (context) => const MyApp(),
      'splash_screen': (context) => const SplashScreen(),
      'detail': (context) => const DetailPage(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String select = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "News App",
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // all
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          select = "all";
                          GlobalVar.cartegory = "all";
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (select == "all")
                              ? Colors.white
                              : Colors.grey.shade900,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "All",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: (select == "all")
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    //  sports
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          select = "sports";
                          GlobalVar.cartegory = "sports";
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (select == "sports")
                              ? Colors.white
                              : Colors.grey.shade900,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Sports",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: (select == "sports")
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // education
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          select = "education";
                          GlobalVar.cartegory = "education";
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (select == "education")
                              ? Colors.white
                              : Colors.grey.shade900,
                        ),
                        alignment: Alignment.center,
                        child:  Text(
                          "Education",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: (select == "education")
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // science
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          select = "science";
                          GlobalVar.cartegory = "science";
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (select == "science")
                              ? Colors.white
                              : Colors.grey.shade900,
                        ),
                        alignment: Alignment.center,
                        child:  Text(
                          "Science",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: (select == "science")
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // business
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          select = "business";
                          GlobalVar.cartegory = "business";
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (select == "business")
                              ? Colors.white
                              : Colors.grey.shade900,
                        ),
                        alignment: Alignment.center,
                        child:  Text(
                          "Business",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: (select == "business")
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // world
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          select = "world";
                          GlobalVar.cartegory = "world";
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (select == "world")
                              ? Colors.white
                              : Colors.grey.shade900,
                        ),
                        alignment: Alignment.center,
                        child:  Text(
                          "World",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: (select == "world")
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // miscellaneous
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          select = "miscellaneous";
                          GlobalVar.cartegory = "miscellaneous";
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (select == "miscellaneous")
                              ? Colors.white
                              : Colors.grey.shade900,
                        ),
                        alignment: Alignment.center,
                        child:  Text(
                          "Miscellaneous",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: (select == "miscellaneous")
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // health
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          select = "health";
                          GlobalVar.cartegory = "health";
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (select == "health")
                              ? Colors.white
                              : Colors.grey.shade900,
                        ),
                        alignment: Alignment.center,
                        child:  Text(
                          "Health",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: (select == "health")
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // technology
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          select = "technology";
                          GlobalVar.cartegory = "technology";
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (select == "technology")
                              ? Colors.white
                              : Colors.grey.shade900,
                        ),
                        alignment: Alignment.center,
                        child:  Text(
                          "Technology",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: (select == "technology")
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // cricket
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          select = "cricket";
                          GlobalVar.cartegory = "cricket";
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (select == "cricket")
                              ? Colors.white
                              : Colors.grey.shade900,
                        ),
                        alignment: Alignment.center,
                        child:  Text(
                          "Cricket",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: (select == "cricket")
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // football
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          select = "football";
                          GlobalVar.cartegory = "football";
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (select == "football")
                              ? Colors.white
                              : Colors.grey.shade900,
                        ),
                        alignment: Alignment.center,
                        child:  Text(
                          "Football",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: (select == "football")
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // google
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          select = "google";
                          GlobalVar.cartegory = "google";
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (select == "google")
                              ? Colors.white
                              : Colors.grey.shade900,
                        ),
                        alignment: Alignment.center,
                        child:  Text(
                          "Google",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: (select == "google")
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: FutureBuilder(
                future: APIHelper.apiHelper.fetchData(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text("Error: ${snapshot.error}"),
                    );
                  } else if (snapshot.hasData) {
                    News? data = snapshot.data;
                    return (data != null)
                        ? SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: data.data.map(
                                (e) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      // height: 260,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                Navigator.of(context).pushNamed(
                                                    'detail',
                                                    arguments: e);
                                              });
                                            },
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 15),
                                              height: 190,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "${e['imageUrl']}"),
                                                    fit: BoxFit.cover),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "${e['title']}",
                                            style: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          // Row(
                                          //   mainAxisAlignment:
                                          //       MainAxisAlignment.spaceBetween,
                                          //   children: [
                                          //     Text(
                                          //       "${e['author']}",
                                          //       style: const TextStyle(
                                          //           fontSize: 15,
                                          //           color: Colors.black,
                                          //           fontWeight:
                                          //               FontWeight.w500),
                                          //     ),
                                          //     Text(
                                          //       "${e['time']}",
                                          //       style: const TextStyle(
                                          //           fontSize: 15,
                                          //           color: Colors.black,
                                          //           fontWeight:
                                          //               FontWeight.w500),
                                          //     ),
                                          //   ],
                                          // )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                          )
                        : const Center(
                            child: Text("No Data"),
                          );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}

// Column(
// children: [
// Row(
// children: [
// Container(
// height: 40,
// width: 100,
// decoration: BoxDecoration(
// color: Colors.white12,
// borderRadius: BorderRadius.circular(10),
// border: Border.all(color: Colors.black,width: 1),
// ),
// child: Text(""),
// ),
// ],
// )
// ],
// ),
