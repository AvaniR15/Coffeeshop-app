import 'dart:convert';
// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:post/coffee.dart';
import 'package:post/coffemodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    getdata();
    super.initState();
  }

  getdata() async {
    var uri = Uri.parse('https://node-server-ymb5.onrender.com/coffee');
    var response = await http.get(uri);
    var data = coffeemodelFromJson(response.body);
    print(data[0].name);
    setState(() {
      items = data;
    });
  }

  List<Coffeemodel> items = [];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // void initState() {
    //   getdata();
    //   super.initState();
    // }

    // List s = [Icon(Icons.search), Text('Search coffeee...')];
    var data =
        'https://images.unsplash.com/photo-1503240778100-fd245e17a273?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
    var rs = '50';
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue.shade50,
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white70,
              ),
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              width: 370,
              height: 1000,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/flagged/photo-1595514191830-3e96a518989b?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fG1hbiUyMGltYWdlJTIwcm91bmR8ZW58MHx8MHx8fDA%3D'),
                      ),
                      Divider(
                        indent: 50,
                      ),
                      Icon(
                        Icons.location_on,
                        color: Colors.green.shade900,
                      ),
                      Text('Lagos,Nigeria'),
                      Divider(
                        indent: 90,
                      ),
                      Icon(
                        Icons.notifications_active_outlined,
                        color: Colors.black,
                      )
                    ],
                  ),
                  Divider(
                    height: 15,
                    color: Colors.transparent,
                  ),
                  Text(
                    'Good Morning , David',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Divider(
                    height: 15,
                    color: Colors.transparent,
                  ),

//  Row(
//                         children: [
//                           Icon(
//                             Icons.search,
//                             color: Colors.grey.shade700,
//                             // color: Colors.orange,
//                           ),

//                           Icon(
//                             Icons.filter_list_sharp,
//                             color: Colors.orange,
//                           )
//                         ],
//                       ),

                  TextField(
                    style: TextStyle(decorationColor: Colors.blue),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      hintText:
                          '   Search coffee....                                                      ',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(
                        Icons.filter_list,
                        color: Colors.orange,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  Divider(
                    height: 20,
                    color: Colors.transparent,
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                  ),
                  Divider(
                    height: 15,
                    color: Colors.transparent,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(7),
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromARGB(224, 6, 113, 60)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              ' ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11),
                            ),
                            Icon(
                              Icons.coffee_sharp,
                              color: Colors.white,
                            ),
                            Text(
                              'Cappuccino',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.coffee_maker_sharp,
                              color: Colors.black,
                            ),
                            Text(
                              ' Cold Brew',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 11),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.icecream,
                              color: Colors.black,
                            ),
                            Text(
                              '  Espresso',
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: Container(
                            // padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            // height: 300,
                            width: 150,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(
                                  height: 15,
                                  color: Colors.transparent,
                                ),

                                Stack(
                                  children: [
                                    Container(
                                      height: 90, width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: NetworkImage(
                                                  items[index].image))),
                                      // child: Image.network(
                                      //   'https://images.unsplash.com/photo-1503240778100-fd245e17a273?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                      //   height: 80,
                                      //   width: 130,
                                    ),
                                    Positioned(
                                      child: Container(
                                        height: 16,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.orange),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 10,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              items[index].rating,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            )
                                          ],
                                        ),
                                      ),
                                      right: 10,
                                      top: 5,
                                    ),
                                  ],
                                ),
                                // ),

                                Text(items[index].name),
                                Text(
                                  items[index].category,
                                  style: TextStyle(fontSize: 11),
                                ),
                                Divider(
                                  height: 15,
                                  color: Colors.transparent,
                                ),
                                Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceBetween,
                                  children: [
                                    Divider(
                                      indent: 5,
                                    ),
                                    Text('Rs.'),
                                    Text(
                                      items[index].price.toString(),
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Divider(
                                      indent: 35,
                                    ),
                                    Icon(Icons.add_box_rounded,
                                        color: const Color.fromARGB(
                                            224, 6, 113, 60))
                                  ],
                                )
                              ],
                            ),
                          ),
                          onDoubleTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                getdata();
                                return coffepage(
                                  cof: items[index],
                                  rs: rs,
                                );
                              },
                            ));
                          },
                        );
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Special Offer',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Divider(
                        indent: 10,
                      ),
                      Icon(
                        Icons.fireplace_rounded,
                        color: Colors.amber.shade900,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 120,
                    width: 500,
                    // child: ListView.builder(
                    //   scrollDirection: Axis.vertical,
                    //   itemBuilder: (context, index) {
                    //     return Container(
                    //       padding: EdgeInsets.all(20),
                    //       margin: EdgeInsets.all(20),
                    //       // height: 100,
                    //       width: 50,
                    //       decoration: BoxDecoration(color: Colors.white),
                    //       child: Column(
                    //         children: [Text('acsvhgKGJJGJHH')],
                    //       ),
                    //     );
                    //   },
                    // ),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            // height: 300,
                            width: 200,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Divider(
                                //   height: 15,
                                //   color: Colors.transparent,
                                // ),

                                Container(
                                  height: 80, width: 90,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                              items[index].image))),
                                  // child: Image.network(
                                  //   'https://images.unsplash.com/photo-1503240778100-fd245e17a273?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                  //   height: 80,
                                  //   width: 130,
                                ),
                                // ),

                                Divider(
                                  indent: 15,
                                  color: Colors.transparent,
                                ),
                                Column(
                                  children: [
                                    Divider(
                                      height: 20,
                                      color: Colors.transparent,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.orange,
                                      ),
                                      height: 15,
                                      width: 90,
                                      child: Center(
                                        child: Text(
                                          items[index].category,
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 150,
                                      child: Text(
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        items[index].description,
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    // Text(
                                    //   'cappuccino for the',
                                    //   style: TextStyle(fontSize: 12),
                                    // ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          onDoubleTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                getdata();
                                return coffepage(
                                  cof: items[index],
                                );
                              },
                            ));
                          },
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.home,
                            color: const Color.fromARGB(224, 6, 113, 60),
                          ),
                          Text('Home'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.favorite_border,
                              color: const Color.fromARGB(224, 6, 113, 60)),
                          Text(
                            'Favourite',
                            style: TextStyle(
                                color: const Color.fromARGB(224, 6, 113, 60)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.trolley,
                              color: const Color.fromARGB(224, 6, 113, 60)),
                          Text(
                            'Cart',
                            style: TextStyle(
                                color: const Color.fromARGB(224, 6, 113, 60)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.person_2_outlined,
                              color: const Color.fromARGB(224, 6, 113, 60)),
                          Text(
                            'Account',
                            style: TextStyle(
                                color: const Color.fromARGB(224, 6, 113, 60)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
