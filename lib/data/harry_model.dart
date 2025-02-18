import 'package:freezed_annotation/freezed_annotation.dart';

part 'harry_model.freezed.dart';
part 'harry_model.g.dart';

@freezed
class HarryModel with _$HarryModel {
  const factory HarryModel({
    required String fullName,
    required String nickname,
    required String hogwartsHouse,
    required String interpretedBy,
    required List<String> children,
    required String image,
    required String birthdate,
    required int index,
  }) = _HarryModel;

  factory HarryModel.fromJson(Map<String, dynamic> json) =>
      _$HarryModelFromJson(json);
}
