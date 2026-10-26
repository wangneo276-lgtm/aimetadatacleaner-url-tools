import 'package:aimetadatacleaner_url_tools/aimetadatacleaner_url_tools.dart';

void main() {
  final urls = Urls();
  if (urls.homeUrl() != 'https://aimetadatacleaner.pro/') throw StateError('home');
  if (urls.pageUrl('detect') != 'https://aimetadatacleaner.pro/detect') throw StateError('page');
  if (urls.toolUrl('clean-image-metadata') != 'https://aimetadatacleaner.pro/clean-image-metadata') {
    throw StateError('tool');
  }
}
