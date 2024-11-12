part of 'main_function.dart';

mixin ApiService {
  Future<String> dioGet({required String url, required String requestName}) async {
    http.Dio dio = http.Dio();
    dynamic cResponse;
    try {
      C.showLog(log: '$requestName : $url');
      http.Response response = await dio.get(url);
      cResponse = response.data;
      C.showLog(log: '$requestName response : $cResponse');
    } on http.DioException catch (e) {
      C.showLog(log: '--${e.response}\n-${e.message}');
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
          W.messageInfo(message: 'Koneksi timeout, periksa jaringan Anda').then((_) {
            return dioGet(url: url, requestName: requestName);
          });
        case DioExceptionType.badResponse:
          throw 'Terjadi kesalahan dari server: ${e.response?.statusCode}';
        default:
          throw 'Terjadi kesalahan, coba lagi nanti';
      }
    }
    C.showLog(log: '$requestName response : $cResponse');
    return jsonEncode(cResponse);
  }

  Future<String> sendHTTPost({
    required String url,
    required Map<String, dynamic> request,
    String requestName = "",
    String deviceID = "",
    String authorization = "",
    bool useAuth = true,
    int? timeoutDuration = 30,
  }) async {
    http.Response response;

    String cResponse = "";
    try {
      if (requestName.isEmpty) requestName = url;
      // C.showLog(log: '--$enp');
      http.Dio client = http.Dio();
      Map<String, dynamic> headers = <String, dynamic>{
        if (useAuth) "Authorization": authorization,
      };
      C.showLog(log: "$requestName Request: $request");
      C.showLog(log: "$requestName URL: $url");
      response = await client
          .post(
            url,
            data: request,
            options: http.Options(
              headers: headers,
            ),
          )
          .timeout(Duration(
            seconds: timeoutDuration!,
          ));

      // cResponse = jsonEncode(response.data);
      C.showLog(log: "$requestName Response: $response");
    } on TimeoutException {
      C.showLog(log: '--Timeout');
      W.messageInfo(message: 'Timeout, coba lagi').then((value) async {
        return sendHTTPost(
          url: url,
          request: request,
          deviceID: deviceID,
          authorization: authorization,
          timeoutDuration: timeoutDuration,
          requestName: requestName,
          useAuth: useAuth,
        );
      });
    } on http.DioException catch (e) {
      C.showLog(log: '--DioException aa ${e.response?.data ?? e.message}');
      // jika tidak mendapat respon

      if (e.response != null) {
        C.showLog(
          log: "$requestName responseError: ${e.response?.statusCode} ${e.response?.statusMessage}",
        );
        C.showLog(
          log: "$requestName responseError: ${e.response?.data}",
        );
        W.messageInfo(message: e.response?.data["errorMessage"]);
      } else {
        C.showLog(
          log: "$requestName requestError:  ${e.response}",
        );
      }
    }

    return cResponse;
  }
}
