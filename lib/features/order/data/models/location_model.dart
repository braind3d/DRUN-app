import 'package:meta/meta.dart';

import '../../domain/entities/location.dart';

class LocationCoordinatesModel extends LocationCoordinates {
  final num latitude;
  final num longitude;

  LocationCoordinatesModel({
    @required this.latitude,
    @required this.longitude,
  })  : assert(latitude != null),
        assert(longitude != null),
        super(latitude: latitude, longitude: longitude);

  factory LocationCoordinatesModel.fromEntity(
    LocationCoordinates locationCoordinates,
  ) {
    return LocationCoordinatesModel(
      latitude: locationCoordinates.latitude,
      longitude: locationCoordinates.longitude,
    );
  }

  Map<String, dynamic> toJSON() {
    return {'latitude': this.latitude, 'longitude': this.longitude};
  }
}
