import 'package:dio/dio.dart';

tokenInterceptor(Dio dio) {
  dio.interceptors.add(InterceptorsWrapper(onResponse: (response, handler) {
    return handler.next(response);
  }, onError: (err, handler) {
    return handler.next(err);
  }, onRequest: (options, handler) {
    return handler.next(options); //continue
  }));
}
