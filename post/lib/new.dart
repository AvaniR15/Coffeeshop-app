  // var bdy = TextEditingController();
  //   var tlt = TextEditingController();
  //   void postdata() async {
  //     var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  //     Map data = {'body': bdy.text, 'title': tlt.text};
  //     var response = await http.post(uri,
  //         headers: {
  //           'Content-Type': 'application/json',
  //         },
  //         body: jsonEncode(data));
  //     print(response.body);
  //   }





  // Column(
  //         children: [
  //           TextField(
  //             controller: bdy,
  //           ),
  //           TextField(
  //             controller: tlt,
  //           ),
  //           ElevatedButton(
  //               onPressed: () {
  //                 postdata();
  //               },
  //               child: Text('OK'))
  //         ],
  //       ),