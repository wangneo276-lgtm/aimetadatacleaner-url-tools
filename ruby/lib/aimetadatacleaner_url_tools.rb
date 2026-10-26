module AimetadatacleanerUrlTools
  BASE = "https://aimetadatacleaner.pro"
  PAGES = { "detect" => "/detect", "blog" => "/blog", "remove-exif" => "/remove-exif", "remove-gps" => "/remove-gps", "remove-c2pa" => "/remove-c2pa" }
  def self.home_url
    BASE + "/"
  end

  def self.page_url(name)
    path = PAGES[name]
    raise ArgumentError, "unknown page: #{name}" if path.nil?
    BASE + path
  end

  def self.tool_url(slug)
    allowed = ["clean-image-metadata", "clean-video-metadata", "clean-pdf-metadata", "batch-metadata-cleaner", "fingerprint-protection"]
    raise ArgumentError, "unknown tool: #{slug}" unless allowed.include?(slug)
    BASE + "/" + slug
  end
end
