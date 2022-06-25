import 'package:assignment_10_cities/mock/mock_data.dart';
import 'package:flutter/material.dart';

import 'imageCitiesDetails.dart';

class ImageHomeScreen extends StatelessWidget {
  const ImageHomeScreen({Key? key}) : super(key: key);

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: mockData.length,
                      itemBuilder: (context, index){
                        return GestureDetector(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                child: Image.asset(mockData[index]
                                ["image"].toString(),
                                  width: 350,
                                  height: 400,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 200),
                                child: Positioned(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 50,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[400],
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Text(
                                        mockData[index]["first_name"].toString(),
                                        style: TextStyle(
                                          fontSize: 25,
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ImageDitaleScreen(
                                  index: index,
                                )));
                          },
                        );
                       
                  }),
              ),
          ],
        )),
    );
  }
}
