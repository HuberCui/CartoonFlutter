import 'package:dio/dio.dart';
import 'package:fluttercartoon/net/http_result.dart';
import 'package:fluttercartoon/net/http_code.dart';
class ResponseInterceptors extends InterceptorsWrapper {
  @override
  onResponse(Response response) async {
    RequestOptions option = response.request;
    var value;
    try {
      var header = response.headers[Headers.contentTypeHeader];
      if ((header != null && header.toString().contains("text"))) {
        value = new HttpResult(response.data["data"]["returnData"], true, HttpCode.SUCCESS);
      } else if (response.statusCode >= 200 && response.statusCode < 300) {
        value = new HttpResult(response.data["data"]["returnData"], true, HttpCode.SUCCESS,
            headers: response.headers);
      }
    } catch (e) {
      print(e.toString() + option.path);
      value = new HttpResult(response.data["data"]["returnData"], false, response.statusCode,
          headers: response.headers);
    }
    return value;
  }
}