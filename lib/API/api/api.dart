import 'dart:convert';
import 'package:http/http.dart' as http;


class CallApi{

  postData(data,apiData) async{
    var baseUrl = Uri.http("quickmudrafinonline.in","/$apiData");
    return await http.post(
        baseUrl,
        body: jsonEncode(data),
    );
  }









  _setHeaders()=>{
    // 'Authorization' : '4ccda7514adc0f13595a585205fb9761',
    'Content-type' : 'application/json',
  };
}