import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shimmer_effect/Shimmer%20Effect/shimmer_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDataFetched = false;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      setState(() {
        isDataFetched = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: isDataFetched == false
            ? const ShimmerList()
            : ListView.builder(
                itemCount: 20,
                itemBuilder: (context, position) {
                  return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/pizza.png"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Cheesy Urban Tarqa Pizza",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Summer Special 20% OFF",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.blueAccent),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Deals Availabe",
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          )
                        ],
                      ));
                }),
      ),
    );
  }
}
