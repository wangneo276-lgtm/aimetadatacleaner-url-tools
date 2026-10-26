import unittest
from aimetadatacleaner_url_tools import home_url, metadata, page_url, tool_url

class UrlTests(unittest.TestCase):
    def test_metadata(self):
        data = metadata()
        self.assertEqual(data["name"], "AI Metadata Cleaner")
        self.assertEqual(data["homepage"], "https://aimetadatacleaner.pro/")
        self.assertNotIn(" ", data["homepage"])

    def test_pages(self):
        self.assertEqual(page_url("detect"), "https://aimetadatacleaner.pro/detect")
        self.assertEqual(page_url("remove-exif"), "https://aimetadatacleaner.pro/remove-exif")
        self.assertEqual(page_url("blog"), "https://aimetadatacleaner.pro/blog")

    def test_unknown_page(self):
        with self.assertRaises(ValueError):
            page_url("not-a-page")

    def test_tools(self):
        self.assertEqual(tool_url("clean-image-metadata"), "https://aimetadatacleaner.pro/clean-image-metadata")
        self.assertEqual(tool_url("clean-pdf-metadata"), "https://aimetadatacleaner.pro/clean-pdf-metadata")
        with self.assertRaises(ValueError):
            tool_url("not-listed")

    def test_home(self):
        self.assertEqual(home_url(), "https://aimetadatacleaner.pro/")

if __name__ == "__main__":
    unittest.main()
