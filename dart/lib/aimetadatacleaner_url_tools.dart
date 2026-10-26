class Urls {
  static const base = 'https://aimetadatacleaner.pro';
  static const pages = <String, String>{
    'detect': '/detect',
    'blog': '/blog',
    'remove-exif': '/remove-exif',
    'remove-gps': '/remove-gps',
    'remove-c2pa': '/remove-c2pa',
  };

  String homeUrl() => base + '/';

  String pageUrl(String name) {
    final path = pages[name];
    if (path == null) throw ArgumentError('unknown page: $name');
    return base + path;
  }

  String toolUrl(String slug) {
    const allowed = [
      'clean-image-metadata',
      'clean-video-metadata',
      'clean-pdf-metadata',
      'batch-metadata-cleaner',
      'fingerprint-protection',
    ];
    if (!allowed.contains(slug)) throw ArgumentError('unknown tool: $slug');
    return base + '/' + slug;
  }
}
