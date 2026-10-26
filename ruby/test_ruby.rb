require "minitest/autorun"
require_relative "lib/aimetadatacleaner_url_tools"

class UrlTest < Minitest::Test
  def test_pages
    assert_equal "https://aimetadatacleaner.pro/", AimetadatacleanerUrlTools.home_url
    assert_equal "https://aimetadatacleaner.pro/detect", AimetadatacleanerUrlTools.page_url("detect")
    assert_equal "https://aimetadatacleaner.pro/clean-image-metadata", AimetadatacleanerUrlTools.tool_url("clean-image-metadata")
  end
end
