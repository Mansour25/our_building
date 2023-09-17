
abstract class BaseApiServices {
  Future<dynamic> getGetApiResponse({
    required String url,
    required Map<String, String> header,
  });

  Future<dynamic> getPostApiResponse({
    required String url,
    required dynamic data,
    required Map<String, String> header,
  });
}
