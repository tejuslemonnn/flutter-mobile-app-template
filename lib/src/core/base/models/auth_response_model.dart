import 'package:flutter_mobile_template/src/core/init/utils/typedefs.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'auth_response_model.g.dart';

@JsonSerializable()
class AuthResponseModel extends INetworkModel<AuthResponseModel> {
  bool? success;
  String? message;
  String? token;

  AuthResponseModel({
    this.success,
    this.message,
    this.token,
  });

  @override
  fromJson(JsonMap json) {
    return _$AuthResponseModelFromJson(json);
  }

  @override
  JsonMap toJson() {
    return _$AuthResponseModelToJson(this);
  }

  factory AuthResponseModel.fromJson(JsonMap json) =>
      _$AuthResponseModelFromJson(json);
}
