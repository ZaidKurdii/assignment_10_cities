import 'package:flutter/material.dart';
import '../../mock/mock_data.dart';

class ImageDitaleScreen extends StatelessWidget {
  var index;

  ImageDitaleScreen({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Kurdistan's Cities"),
          centerTitle: true,
          backgroundColor: Colors.black.withOpacity(0.5),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                    child:
                    Image.asset(mockData[index]
                    ["image"].toString()),
                  ),
                  IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Text(mockData[index]["first_name"].toString(),
                        style: TextStyle(
                          fontSize: 50,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(mockData[index]["define"].toString(),
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
