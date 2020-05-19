//网络返回的数据
class HttpResult {
  var data;
  bool result;
  int code;
  var headers;

  HttpResult(this.data, this.result, this.code, {this.headers});
}