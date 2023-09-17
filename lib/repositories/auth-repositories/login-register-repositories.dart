import 'package:our_building/data/remote-data-sourse/base-api-services.dart';
import 'package:our_building/data/remote-data-sourse/network-api-services.dart';

import '../../core/class/app_data/app-links.dart';


class AuthLoginSignUpRepositories {
  BaseApiServices apiServices = NetworkApiServices();

  Future<dynamic> loginApi(Map<String, String> data) async {
    try {
      Map<String, String> header = {};
      var response = await apiServices.getPostApiResponse(
        url: AppLinks.login,
        data: data,
        header: header,
      );
      // ترجع jsonDecoded في حالة النجاح
      return response;
    } catch (e) {
      rethrow;
    }
  }
  //
  Future<dynamic> registerApi(Map<String, String> data) async {
    try {
      Map<String, String> header = {};
      var response = await apiServices.getPostApiResponse(
        url: AppLinks.register,
        data: data,
        header: header,
      );
      // ترجع jsonDecoded في حالة النجاح
      return response;
    } catch (e) {
      rethrow;
    }
  }
}