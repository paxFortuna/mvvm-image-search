import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';

part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    //required String previewURL,
    @JsonKey(name: 'previewURL')
    required String previewUrl,
    required String tags,
  }) = _Photo;

  factory Photo.fromJson(Map<String, Object?> json) => _$PhotoFromJson(json);
}


// import 'package:json_annotation/json_annotation.dart';
//
// part 'photo.g.dart';
//
// @JsonSerializable(explicitToJson: true)
// class Photo {
//   final String previewURL;
//   final String tags;
//
//   Photo({
//     required this.previewURL,
//     required this.tags,
// });
//
//   factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
//
//   Map<String, dynamic> toJson() => _$PhotoToJson(this);
// }

// class Photo {
//   final int id;
//   final String previewURL;
//   final String tags;
//
//   Photo({
//     required this.id,
//     required this.previewURL,
//     required this.tags,
//   });
//
//   factory Photo.fromJson(Map<String, dynamic> json) {
//     return Photo(
//       id: json['id'] as int,
//       previewURL: json['previewURL'] as String,
//       tags: json['tags'] as String,
//     );
//   }
//
//   @override
//   String toString() {
//     return 'Photo{id: $id, previewURL: $previewURL, tags: $tags}';
//   }
// }