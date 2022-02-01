import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled/Model_Class/model_class.dart';

Future GetApi()async{
  String Api="https://jsonplaceholder.typicode.com/photos";
  http.Response res=await http.get(Uri.parse(Api));
  if(res.statusCode==200){
    List data=jsonDecode(res.body);
    return data.map((e) => Photo.fromJson(e)).toList();

  }
}