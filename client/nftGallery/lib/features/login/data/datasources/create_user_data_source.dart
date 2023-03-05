import 'dart:convert';

import 'package:final_template/features/login/data/models/create_user_model.dart';
import 'package:final_template/features/login/domain/entities/create_user_entity.dart';

import '../../../../core/apis/base/custom_http_client.dart';
import '../../../../core/constants/url_constants.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/helpers/utils.dart';

abstract class CreateUserDataSource{
  Future<CreateUserModel> createUser(CreateUserEntity entity);
}

class CreateUserDataSourceImpl implements CreateUserDataSource{
  CustomHttpClient customHttpClient = CustomHttpClient();
  @override
  Future<CreateUserModel> createUser(CreateUserEntity entity) async{
    final url = Uri.parse(URL_CREATE_USER);
    final bodyData = jsonEncode({
      "email" : entity.email,
      "password" : entity.password,
      "name" : entity.name
    });
    try{
      final response = await customHttpClient.post(url,bodyData);
      Utils.printLogs("createuserresponse,,," + response.body);
      if (response.statusCode == 200 || response.statusCode == 400) {
        if (json.decode(response.body)["status"] == true) {
          final generateOtpModel =
          CreateUserModel.fromJson(json.decode(response.body)['entity']);
          return generateOtpModel;
        }
        else {
          throw ApiException(message: json.decode(response.body)["message"][0]);
        }
      } else if (response.statusCode == 404) {
        throw ApiException(message: json.decode(response.body)["message"]);
      } else {
        throw ServerException();
      }
    }catch(error){
      throw ServerException();
    }



  }
  
}