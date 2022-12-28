// helpers
import '../../grpc_test.dart';

List<Album> findAlbums(int albumId) {
  return staticAbums
      .where((album) => album['id'] == albumId)
      .map(convertToAlbum)
      .toList();
}

List<Photo> findPhotos(int albumId) {
  return staticPhotos
      .where((photo) => photo['albumId'] == albumId)
      .map(convertToPhoto)
      .toList();
}

Album convertToAlbum(Map<String, Object> album) => Album.fromJson(
      '{"1": ${album['id']}, "2": "${album['title']}"}',
    );

Photo convertToPhoto(Map photo) => Photo.fromJson(
    '{"1": ${photo['albumId']}, "2": ${photo['id']}, "3": "${photo['title']}", "4": "${photo['url']}"}');
