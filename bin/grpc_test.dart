import 'package:grpc_test/grpc_test.dart';

void main(List<String> arguments) {
  final album = Album()
    ..id = 1
    ..title = 'Album Title';
  print(album);

  final album_2 =
      Album.fromJson('{"1": ${staticAbums[0]['id']}, "2": "${staticAbums[0]['title']}"}');

  print(album_2);
  // print(album_2.clone());
  // print(album_2.copyWith((album) => album.setField(2, 'album title updated')));
  print(album_2.writeToJson());
}
