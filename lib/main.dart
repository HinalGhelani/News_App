import 'package:flutter/material.dart';
import 'package:news_app/Helper_class.dart';
import 'package:news_app/Modal_class.dart';
import 'Global.dart';
import 'detail_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => MyApp(),
      'detail': (context) => DetailPage(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                  ? Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: GlobalVar.title.map((e) {
                              return Container(
                                padding: const EdgeInsets.all(15),
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey.shade900),
                                alignment: Alignment.center,
                                child: Text(
                                  e,
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              );
                            }).toList()),
                          ),
                        ),
                        Expanded(
                          flex: 9,
                          child: SingleChildScrollView(
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
                                                      fit: BoxFit.cover)),
                                            ),
                                          ),
                                          Text(
                                            "${e['title']}",
                                            style: TextStyle(
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
                          ),
                        )
                      ],
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
