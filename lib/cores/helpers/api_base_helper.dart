// import 'dart:convert';
// import 'dart:io';

// import 'package:http/http.dart' as http;

// import 'app_exception.dart';

// class ApiBaseHelper {
//   Future<dynamic> get(String url, Map<String, String> header) async {
//     var responseJson;
//     try {
//       final response =
//           await http.get(Uri.parse(baseUrl + url), headers: header);
//       print("tttttttttttttttttttttttttt");
//       print(response.body);

//       responseJson = _returnResponse(response);

//       // print("\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\");
//       // print(responseJson);
//       // print("\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\");
//       // print(response.body);
//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     }
//     return responseJson;
//   }

//   Future<dynamic> post(
//       String url, Map<String, dynamic> body, Map<String, String> header) async {
//     var responseJson;
//     try {
//       print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!8888888888888888888");

//       final response = await http.post(Uri.parse(baseUrl + url),
//           body: body, headers: header);
//       print("##########################");
//       print(response.body);
//       print("##########################");

//       responseJson = _returnResponse(response);
//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     }
//     return responseJson;
//   }

//   Future<dynamic> put(
//       String url, Map<String, String> header, Map<String, String> body) async {
//     var responseJson;
//     try {
//       final response =
//           await http.put(Uri.parse(baseUrl + url), headers: header, body: body);
//       responseJson = _returnResponse(response);
//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     }
//     return responseJson;
//   }

//   Future<dynamic> delete(String url, Map<String, String> header) async {
//     var responseJson;
//     try {
//       final response =
//           await http.delete(Uri.parse(baseUrl + url), headers: header);
//       responseJson = _returnResponse(response);
//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     }
//     return responseJson;
//   }

//   dynamic _returnResponse(http.Response response) {
//     print(response.body);
//     switch (response.statusCode) {
//       case 200:
//       case 201:
//         var responseJson = json.decode(response.body);
//         return responseJson;
//       case 400:
//         throw BadRequestException(response.body);
//       case 401:
//       case 403:
//         throw UnauthorisedException(response.body);
//       case 500:
//       default:
//         print(response.statusCode);
//         print(response.request);
//         throw FetchDataException(
//             'Error occurred while Communication with Server with StatusCode : ${response.statusCode}');
//     }
//   }
// }
