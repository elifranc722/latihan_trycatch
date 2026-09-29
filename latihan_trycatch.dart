import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
//   Future<void> tarikdata() async {
//     var response = await http.get(
//       Uri.parse('https://jsonplaceholder.typicode.com/users'),
//     );

//     var data = jsonDecode(response.body);
//     print("nama saya ${data[1]['name']}, username saya ${data[1]['email']}, kota saya ${data[1]['address']['city']}");
//   }
// await tarikdata();

//   Future<List<dynamic>> tarikdata() async {
//     try {
//         var response = await http.get(
//         Uri.parse('https://jsonplaceholder.typicode.com/users'),
//       );

//       var data = jsonDecode(response.body);
//         return data;
//     } catch (e) {
//         print(e);
//         return[];
//     }
// }

// List<dynamic> hasil = await tarikdata();
  //=====================FOR=====================
  // for(var i = 0; i < hasil.length; i++){
  //   print("==========================");
  //   print('${hasil[i]['name']}    ${hasil[i]['username']}   ${hasil[i]['address']['city']}');
  // }

  //=====================FOR IN=====================
  // for(var element in hasil){
  //    print("==========================");
  //   print('${hasil[element]['name']}    ${hasil[element]['username']}   ${hasil[element]['address']['city']}');
  // }

  //=====================FOR EACH=====================
  // hasil.forEach((element){
  //   print("==========================");
  //   print(
  //     '${hasil[element]['name']}    ${hasil[element]['username']}   ${hasil[element]['address']['city']}',
  //   );
  // });


  //=====================LATIHAN FOR=====================
  //print title, price, stock
  Future<Map<dynamic, dynamic>> tarikdata() async {
    try {
        var response = await http.get(
        Uri.parse('https://dummyjson.com/products'),
      );

      var data = jsonDecode(response.body);
        return data;
    } catch (e) {
        print(e);
        return{};
    }
}

var hasil = await tarikdata();
for(var i = 0; i < hasil['product'].length; i++){
    print('===================================================');
    print('${hasil['product'][i]['title']}    ${hasil['product'][i]['price']}   ${hasil['product'][i]['stock']}');
  }
}