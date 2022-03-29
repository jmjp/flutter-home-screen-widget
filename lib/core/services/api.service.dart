import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio(BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com/',
    connectTimeout: 5000,
    receiveTimeout: 3000,
  ));

  Future<Response> get(String url) async {
    return await dio.get(url);
  }
  Future<Response> post(String url, {data}) async {
    return await dio.post(url, data: data);
  }
  Future<Response> put(String url, {data}) async {
    return await dio.put(url, data: data);
  }
  Future<Response> delete(String url) async {
    return await dio.delete(url);
  }
  Future<Response> patch(String url, {data}) async {
    return await dio.patch(url, data: data);
  }
}
