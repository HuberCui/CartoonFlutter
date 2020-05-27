import 'package:dio/dio.dart';
import 'dart:collection';
import 'http_result.dart';
import 'http_code.dart';
import 'interceptors/http_response_interceptor.dart';
enum RequestMethod {
  get_method,
  post_method,
  put_method,
  delete_method
}
final HttpManager httpManager = HttpManager();

class HttpManager{

  Dio _dio = new Dio();

  //构造方法
  HttpManager(){
     _dio.interceptors.add(ResponseInterceptors());
  }


  /*
  * 网络请求
  * [ url] 请求url
  * [ params] 请求参数
  * [ header] 外加头
  * [ option] 配置
  * noTip 是否提示
  * */
  Future netFetch(url,params,Map<String, dynamic> header,RequestMethod requestMethod,{noTip = false}) async{
    Options options = new Options(method: "get");


    Map<String, dynamic> headers = new HashMap();
    if (header != null) {
      headers.addAll(header);
    }else{
      headers.addAll({"Authorization": "Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==",
        "Accept": "application/json"});
    }
    options.headers = headers;
    switch (requestMethod){
      case RequestMethod.get_method:
        options.method = "get";
        break;
      case RequestMethod.post_method:
        options.method = "post";
        break;
      case RequestMethod.put_method:
        options.method = "put";
        break;
      case RequestMethod.delete_method:
        options.method = "delete";
        break;
    }
//  返回  HttpResult
    resultError(DioError e) {
      Response errorResponse;
      if (e.response != null) {
        errorResponse = e.response;
      } else {
        errorResponse = new Response(statusCode: 666);
      }
      if (e.type == DioErrorType.CONNECT_TIMEOUT ||
          e.type == DioErrorType.RECEIVE_TIMEOUT) {
        errorResponse.statusCode = HttpCode.NETWORK_TIMEOUT;
      }
      return new HttpResult(
          HttpCode.errorHandleFunction(errorResponse.statusCode, e.message, noTip),
          false,
          errorResponse.statusCode);
    }

    Response response;
    try {
      response = await _dio.request(url, data: params, options: options);
    } on DioError catch (e) {
      return resultError(e);
    }
    if (response.data is DioError) {
      return resultError(response.data);
    }
    return response.data;






  }


}