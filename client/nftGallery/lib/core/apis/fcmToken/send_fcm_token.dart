import 'package:final_template/app_imports.dart';
import 'package:final_template/core/apis/base/custom_http_client.dart';

class SendFcmTokenDataSource extends CustomHttpClient {
  Future<dynamic> sendFcmtoken({
    required String strFcmToken,
    required String strUserId,
  }) async {
    String strURL = AppUrls.URL_SEND_FCM_TOKEN;

    var bodyData = {
      'fcm_token': strFcmToken,
      'user_id': strUserId,
    };

    final response = await post(Uri.parse(strURL), bodyData);
    if (response.statusCode == 200) {
      return "token";
    } else {}
  }
}
