import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  bool isvisible1 = true, isvisble2 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Detailed info'),
      ),
      body: Column(
        children: [
          CarouselSlider(
            items: [
              SizedBox(
                // height: double.infinity,
                // width: double.infinity,
                child: Image.asset('assets/images/flat1.jpg'),
              ),
              SizedBox(
                // height: double.infinity,
                // width: double.infinity,
                child: Image.asset('assets/images/flat2.webp'),
              ),
              SizedBox(
                // height: double.infinity,
                // width: double.infinity,
                child: Image.asset('assets/images/flat3.jpg'),
              ),
              // SizedBox(
              //   height: double.infinity,
              //   width: double.infinity,
              //   child: Image.asset('assets/images/flat4.avif'),
              // ),
            ],
            options: CarouselOptions(
                // height: 200, // Adjust the height as needed

                //aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
                enlargeCenterPage: true,
                autoPlay: true, // Set to true for auto-play
                autoPlayInterval:
                    const Duration(seconds: 3), // Time between auto-plays
                autoPlayAnimationDuration:
                    const Duration(milliseconds: 800), // Animation duration
                viewportFraction: 1),
          ),
          const SizedBox(
            height: 30,
          ),
          Visibility(
            visible: isvisible1,
            child: InkWell(
              onTap: () {
                isvisible1 = false;
                isvisble2 = true;
                setState(() {});
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(child: Text('Click for payment')),
              ),
            ),
          ),
          Visibility(
              visible: isvisble2,
              child: const Column(
                children: [
                  Text('Exact Location',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  Card(
                      elevation: 5,
                      child: SizedBox(
                          height: 150,
                          width: 180,
                          child: Center(
                            child: Text(
                              'Flat No. **, Plot No.***, Sector-*, Vaishali, Gzb, UP',
                              style: TextStyle(fontSize: 20),
                            ),
                          ))),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Contact details',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  Card(
                      elevation: 5,
                      child: SizedBox(
                          height: 100,
                          width: 180,
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text('1234567890'),
                                SizedBox(
                                  height: 15,
                                ),
                                Text('abc@xyz.com')
                              ],
                            ),
                          ))),
                ],
              ))
        ],
      ),
    ));
  }
}
