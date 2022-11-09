import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final dynamic name;

  const DetailScreen(
      {Key? key, required this.name})
      : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListTile(
          leading: Icon(Icons.person),
          title: Text(widget.name["title"]),
          subtitle: Text(widget.name["age"].toString()),
          trailing: SizedBox(
            width: 100,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(widget.name[""
                    "qualification"]),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.search),
         ] ),),),
      ),
    );
  }
}
