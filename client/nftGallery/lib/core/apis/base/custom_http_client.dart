import 'package:final_template/app_imports.dart';
import 'package:http/http.dart' as http;

class CustomHttpClient {
  http.Client client = http.Client();

  Future<http.Response> get(Uri url) async {
    var response = await client.get(url, headers: {
      AppStrings.STRING_CONTENT_TYPE: AppStrings.STRING_APPLICATION_JSON,
      AppStrings.STRING_ACCESS_TOKEN_KEY: HelperUser.getAuthToken()
    });
    return response;
  }

  Future<http.Response> post(Uri url, var bodyData) async {
    var response = await client.post(url, body: bodyData, headers: {
      AppStrings.STRING_CONTENT_TYPE: AppStrings.STRING_APPLICATION_JSON,
      AppStrings.STRING_ACCESS_TOKEN_KEY: HelperUser.getAuthToken()
    });
    return response;
  }

  Future<http.Response> delete(Uri url, var bodyData) async {
    var response = await client.delete(url, body: bodyData, headers: {
      AppStrings.STRING_CONTENT_TYPE: AppStrings.STRING_APPLICATION_JSON,
      AppStrings.STRING_ACCESS_TOKEN_KEY: HelperUser.getAuthToken()
    });
    return response;
  }

  Future<http.Response> put(Uri url, var bodyData) async {
    var response = await client.put(url, body: bodyData, headers: {
      AppStrings.STRING_CONTENT_TYPE: AppStrings.STRING_APPLICATION_JSON,
      AppStrings.STRING_ACCESS_TOKEN_KEY: HelperUser.getAuthToken()
    });
    return response;
  }
}
