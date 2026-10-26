local M = {}
local BASE = "https://aimetadatacleaner.pro"
local PAGES = {
  ["detect"] = "/detect",
  ["blog"] = "/blog",
  ["remove-exif"] = "/remove-exif",
  ["remove-gps"] = "/remove-gps",
  ["remove-c2pa"] = "/remove-c2pa",
}
local TOOLS = {
  "clean-image-metadata",
  "clean-video-metadata",
  "clean-pdf-metadata",
  "batch-metadata-cleaner",
  "fingerprint-protection",
}

function M.home_url()
  return BASE .. "/"
end

function M.page_url(name)
  local path = PAGES[name]
  if not path then error("unknown page: " .. tostring(name)) end
  return BASE .. path
end

function M.tool_url(slug)
  local ok = false
  for _, item in ipairs(TOOLS) do
    if item == slug then ok = true end
  end
  if not ok then error("unknown tool: " .. tostring(slug)) end
  return BASE .. "/" .. slug
end

return M
