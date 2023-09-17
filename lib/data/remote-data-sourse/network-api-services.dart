import 'dart:convert';
import 'dart:io';
import 'package:our_building/data/remote-data-sourse/base-api-services.dart';
import 'package:http/http.dart' as http;
import '../app-exception.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future getGetApiResponse({
    required String url,
    required Map<String, String> header,
  }) async {
    dynamic responseJson;
    try {
      final _url = Uri.parse(url);
      final response = await http.Client()
          .get(
            _url,
            headers: header,
          )
          .timeout(
            const Duration(seconds: 10),
          );
      responseJson = handleResponse(response);
      // عند أخذ هذا المتغير يتم تحويله الى model في صفحة repositories
      return responseJson;
    } catch (e) {
      throw FetchDataException(
        'حدث خطأ غير معروف, حاول لاحقاً .',
      );
    }
  }

  @override
  Future getPostApiResponse({
    required String url,
    required data,
    required Map<String, String> header,
  }) async {
    dynamic responseJson;
    try {
      final _url = Uri.parse(url);
      final response = await http.Client()
          .post(
            _url,
            body: data,
            headers: header,
          ).timeout(
            const Duration(seconds: 10),
          );
      responseJson = handleResponse(response);
      // عند أخذ هذا المتغير يتم تحويله الى model في صفحة repositories
      return responseJson;
    } catch (e) {
      throw FetchDataException(
        'حدث خطأ غير معروف, حاول لاحقاً .',
      );
    }
  }
}
dynamic handleResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      dynamic responseJson = jsonDecode(response.body);
      return responseJson;
    case 400:
      throw BadRequestException(response.body.toString());
    case 401:
      throw UnautherisedException(response.body.toString());
    case 403:
      throw ForbiddenException(response.body.toString());
    case 404:
      throw NotFoundException(response.body.toString());
    case 500:
      throw ServerErrorException(response.body.toString());
    case 503:
      throw ServiceUnavailableException(response.body.toString());
    default:
      throw FetchDataException(
        'حدث خطأ أثناء التواصل مع الخادم\nمع رمز الحالة ${response.statusCode.toString()}',
      );
  }
}
