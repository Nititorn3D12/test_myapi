// ignore_for_file: file_names
import 'package:http/http.dart' as http;
import 'dart:convert';
// TODO: import BMRModel.dart
import 'BMRmodel.dart';


class BMRservice {
  static Future<BMRmodel> calculateBMR(double weight, double height, String gender, double age) async {
    var parameters = 'weight=$weight&height=$height&gender=$gender&age=$age';
    var api = 'https://pirun.ku.ac.th/~faaspsu/edu/mobile/calculatebmr.php';
    var url = Uri.parse('$api?$parameters');

    // TODO: call API using http library
    //       and keep response message into variable

    var response = await http.get(url);
    
    
    Map<String, dynamic> jsondata = json.decode(response.body);

    // TODO: map JSON message into BMRModel
    BMRmodel result = BMRmodel.fromJson(jsondata);

    return result;
  }
}
