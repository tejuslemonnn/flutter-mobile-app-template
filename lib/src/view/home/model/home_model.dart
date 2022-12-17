import 'package:flutter_mobile_template/src/core/init/utils/typedefs.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'home_model.g.dart';

/// [HomeModel] is not a correct naming. Named as such as an example,
/// please edit here according to the project's requirements.

@JsonSerializable()
class HomeModel extends INetworkModel<HomeModel> {
  String? id;

  HomeModel({
    this.id,
  });

  @override
  fromJson(JsonMap json) {
    return _$HomeModelFromJson(json);
  }

  @override
  JsonMap toJson() {
    return _$HomeModelToJson(this);
  }

  factory HomeModel.fromJson(JsonMap json) => _$HomeModelFromJson(json);
}
