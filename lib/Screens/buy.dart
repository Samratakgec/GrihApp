import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grihapp/Screens/info.dart';

class Buy extends StatefulWidget {
  const Buy({super.key});

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  // bool isvisibile = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Buy'),
      // ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 20,
          ),
          //New Card
          SizedBox(
            width: 150,
            height: 200,
            child: Card(
              elevation: 5,
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        children: [
                          Text('Owner Name'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Type'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Location'),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(':'),
                          SizedBox(
                            height: 10,
                          ),
                          Text(':'),
                          SizedBox(
                            height: 10,
                          ),
                          Text(':'),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text('ABCD XYZ'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('3 BHK'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Vaishali, Ghaziabad, UP'),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const Info());
                    },
                    child: Container(
                        width: 150,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text('Tap for More info'),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
