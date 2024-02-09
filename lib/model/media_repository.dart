import 'package:mvvmtemplate/model/media.dart';
import 'package:mvvmtemplate/model/services/base_service.dart';
import 'package:mvvmtemplate/model/services/media_service.dart';

class MediaRepository {
  final BaseService _mediaService = MediaService();

  Future<List<Media>> fetchMediaList(String value) async {
    dynamic response = await _mediaService.getResponse(value);
    final jsonData = response['results'] as List;
    List<Media> mediaList =
        jsonData.map((tagJson) => Media.fromJson(tagJson)).toList();
    print(mediaList[0].previewUrl);
    return mediaList;
  }
}
