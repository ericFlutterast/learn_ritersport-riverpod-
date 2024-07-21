import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.g.dart';

@JsonSerializable()
class ItemModel {
  const ItemModel({
    required this.iconIndex,
    required this.title,
    required this.description,
    required this.openedData,
  });

  final int iconIndex;
  final String title;
  final String description;
  final String openedData;

  factory ItemModel.fromJson(Map<String, Object?> json) => _$ItemModelFromJson(json);

  Map<String, Object?> toJson() => _$ItemModelToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemModel &&
          runtimeType == other.runtimeType &&
          other.title == title &&
          other.iconIndex == iconIndex &&
          other.description == description &&
          other.openedData == openedData;

  @override
  int get hashCode => Object.hash(
        iconIndex,
        title,
        description,
        openedData,
      );
}
