import 'package:flutter/material.dart';
import 'package:untitled/Model_Class/model_class.dart';
import 'package:untitled/services/Api_Service.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  late Future getAllPost;
  @override
  void initState() {
    getAllPost=GetApi();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getAllPost,
       // initialData:GetApi(),
        builder: (context,AsyncSnapshot snapshot){
          if(snapshot.hasError){
            return const Text("Data Has NotfoUnd!");
          }
          if(snapshot.hasData){
            List data=snapshot.data;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context,i){
                return ListTile(
                  title: Text(data[i].title),
                );
              }
            );
          }
          return const Center(child: CircularProgressIndicator());
        }
      ),
    );
  }
}
