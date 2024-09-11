import 'dart:math';

import 'package:flutter/material.dart';
import 'package:post/coffemodel.dart';
import 'package:post/main.dart';

class coffepage extends StatefulWidget {
  Coffeemodel? cof;
  var rs;
  coffepage({super.key, this.cof, this.rs});

  @override
  State<coffepage> createState() => _coffepageState();
}

class _coffepageState extends State<coffepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 900,
          width: 400,
          decoration: BoxDecoration(),
          child: Stack(
            children: [
              Image.network(
                widget.cof!.image,
                height: 300,
                width: 400,
                fit: BoxFit.values.first,
              ),
              Positioned(
                child: InkWell(
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    return main();
                  },
                ),
                height: 20,
                top: 20,
              ),
              Positioned(
                child: Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.white,
                ),
                height: 20,
                top: 20,
                right: 20,
              ),
              Positioned(
                child: Text(
                  widget.cof!.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                // height: 20,
                top: 230,
                left: 20,
              ),
              Positioned(
                child: Text(
                  widget.cof!.category,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                // height: 20,
                top: 260,
                left: 20,
              ),
              Positioned(
                child: Container(
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.orangeAccent),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        size: 11,
                        Icons.star,
                        color: Colors.white,
                      ),
                      Text(
                        widget.cof!.rating.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                // height: 20,
                top: 250,
                right: 20,
              ),
              Positioned(
                child: Container(
                  height: 900,
                  width: 400,
                  child: Column(
                    children: [
                      Divider(
                        height: 30,
                        color: Colors.transparent,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.green.shade100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Divider(
                              indent: 10,
                            ),
                            Text(
                              'Coffee',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              '|',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 19),
                            ),
                            Text(
                              'Chocolate',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              '|',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 19),
                            ),
                            Text(
                              widget.cof!.roastLevel,
                              style: TextStyle(color: Colors.black),
                            ),
                            Divider(
                              indent: 10,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                ),
                top: 280,
                bottom: 0,
                right: 0,
              ),
              Positioned(
                child: Text(
                  'Coffee Size',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                // height: 20,
                top: 375,
                left: 20,
              ),
              Divider(
                height: 30,
              ),
              Positioned(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(7),
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: widget.cof!.size == 'Small'
                                ? const Color.fromARGB(224, 6, 113, 60)
                                : Colors.transparent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Small',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 11),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        indent: 45,
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: widget.cof!.size == 'Medium'
                                ? const Color.fromARGB(224, 6, 113, 60)
                                : Colors.transparent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              ' Medium',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 11),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        indent: 45,
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: widget.cof!.size == 'Large'
                                ? const Color.fromARGB(224, 6, 113, 60)
                                : Colors.transparent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              ' Large',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 11),
                            )
                          ],
                        ),
                      ),
                    ]),
                top: 420,
                left: 20,
              ),
              Positioned(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Divider(
                      height: 15,
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        widget.cof!.description,
                      ),
                    )
                  ],
                ),
                top: 490,
                left: 30,
              ),
              Positioned(
                child: Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      Container(
                        padding: EdgeInsets.all(7),
                        height: 70,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(224, 6, 113, 60)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Add To Cart',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            Text(
                              '|',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 19),
                            ),
                            Text(widget.cof!.price.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25))
                          ],
                        ),
                      )
                    ])),
                bottom: 20,
                left: 23,
              )
            ],
          ),
        ),
      ),
    );
  }
}
