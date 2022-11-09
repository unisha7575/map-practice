import 'package:flutter/material.dart';
import 'package:map_practice_nisha/detail_screen.dart';

class MyMap extends StatefulWidget {
  const MyMap({Key? key}) : super(key: key);

  @override
  State<MyMap> createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  Map<String, dynamic> nisha = {
    "title": "Nisha",
    "age": 20,
    "qualification": ""
  };
  List<Map<String, dynamic>> list = [

    {
      "title": "Nisha",
      "age": 20,
      "qualification": "",
    },
    {
      "title": "Prity",
      "age": 16,
      "qualification": "11th",
    },
    {
      "title": "Navya",
      "age": 6,
      "qualification": "1st",
    },
    {
      "title": "jhanvi",
      "age": 4,
      "qualification": "Nursary",
    },
    {
      "title": "sweta",
      "age": 13,
      "qualification": "10th",
    },
    {
      "title": "Sonal",
      "age": 23,
      "qualification": "Gradution",
    },
    {
      "title": "pooja",
      "age": 25,
      "qualification": "Gradution",
    },
    {
      "title": "Sarda",
      "age": 20,
      "qualification": "Gradution",
    },
    {"title": "Priyanka", "age": 23, "qualification": "Gradution"},
    {"title": "Muskan", "age": 18, "qualification": "Matric"},
    {
      "title": "Choti",
      "age": 15,
      "qualification": "8Th",
    },
    {
      "title": "Shruti",
      "age": 10,
      "qualification": "6th",
    }
  ];

  @override
  Widget build(BuildContext context) {
    print("line17: ${list.length}");
    return Scaffold(
      appBar: AppBar(
        title: Text("My Map"),
      ),
      body: ListView(
          children: List.generate(list.length, (index) {
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(name:list[index] )));
          },
          child: Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(list[index]['title']),
              subtitle: Text(list[index]['qualification']),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(list[index]['age'].toString()),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
            ),
          ),
        );
      })),
    );
  }
}
