import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location extends Equatable {
  /// Optional. Altitude, in meters, of the location.
  final double altitude;

  /// Required. Latitude, in degrees, of the location.
  final double latitude;

  /// Required. Longitude, in degrees, of the location.
  final double longitude;

  /// Optional. Text displayed on the lock screen when the pass is currently relevant.
  /// For example, a description of the nearby location such as “Store nearby on 1st and Main.”
  final String relevantText;

  Location({
    this.altitude,
    this.latitude,
    this.longitude,
    this.relevantText,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  List<Object> get props => [
        this.altitude,
        this.latitude,
        this.longitude,
        this.relevantText,
      ];
}
