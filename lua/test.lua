local M = require "aimetadatacleaner_url_tools"
assert(M.home_url() == "https://aimetadatacleaner.pro/")
assert(M.page_url("detect") == "https://aimetadatacleaner.pro/detect")
assert(M.tool_url("clean-image-metadata") == "https://aimetadatacleaner.pro/clean-image-metadata")
print("ok")
