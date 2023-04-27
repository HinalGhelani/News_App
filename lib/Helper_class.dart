import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/Global.dart';
import 'package:news_app/Modal_class.dart';



class APIHelper {
  APIHelper._();

  static final APIHelper apiHelper = APIHelper._();

  Future<News?> fetchData() async {
    String api = "https://inshorts.deta.dev/news?category=${GlobalVar.cartegory}";

    http.Response res = await http.get(Uri.parse(api));

    if (res.statusCode == 200) {
      Map decodedData = jsonDecode(res.body);

      // List<Covid> allData =
      //     decodedData.map((e) => Covid.fromJson(json: e)).toList();
      News news = News.fromJson(json: decodedData);

      return news;
    }
  }
}

