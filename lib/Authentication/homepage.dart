import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:grihapp/Authentication/login.dart';
import 'package:grihapp/Authentication/signup.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 5,
            title: const Text(
              'GrihApp',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              InkWell(
                child: Container(
                  width: 300,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(child: Text('Login (Already user?)')),
                ),
                onTap: () {
                  Get.to(const Login());
                },
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: Container(
                  width: 300,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(child: Text('SignUp (New user?)')),
                ),
                onTap: () {
                  Get.to(const Signup());
                },
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Our Features',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              //features cr
              SizedBox(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 250.0),
                    //   child: Container(
                    //     //color: Colors.blue,
                    //     height: 100,
                    //     child: Image.asset(
                    //       'assets/images/inv1.png',
                    //       fit: BoxFit.cover,
                    //     ),
                    //     width: 100,
                    //   ),
                    // ),
                    CarouselSlider(
                      items: const [
                        SizedBox(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Provide a platform for sellers to list properties',
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                  'including details such as price, location, images, and specifications.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 30)),
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Implement filters for users to search for properties based on',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 30),
                              ),
                              Text('location, price, size, and other criteria.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 30)),
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Offer a communication channel between buyers and sellers to inquire ',
                                style: TextStyle(fontSize: 28),
                              ),
                              Text(
                                  'about properties, schedule viewings, or negotiate terms.',
                                  style: TextStyle(fontSize: 28)),
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Permit users to save or favorite properties to revisit them later or track their interest.',
                                style: TextStyle(fontSize: 33),
                              ),
                              // Text(
                              //     'and videos to showcase the property\'s features and attributes.',
                              //     style: TextStyle(fontSize: 25)),
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Allow for comprehensive property descriptions, high-quality images',
                                style: TextStyle(fontSize: 25),
                              ),
                              Text(
                                  'and videos to showcase the property\'s features and attributes.',
                                  style: TextStyle(fontSize: 25)),
                            ],
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                          //height: 200, // Adjust the height as needed

                          //aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
                          enlargeCenterPage: true,
                          autoPlay: true, // Set to true for auto-play
                          autoPlayInterval: const Duration(
                              seconds: 3), // Time between auto-plays
                          autoPlayAnimationDuration: const Duration(
                              milliseconds: 800), // Animation duration
                          viewportFraction: 1),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 250.0),
                    //   child: SizedBox(
                    //     height: 80,
                    //     child: Image.asset('assets/images/inv2.png'),
                    //     width: 80,
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
