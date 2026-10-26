const BASE = "https://aimetadatacleaner.pro";
const PAGES = {"detect": "/detect", "blog": "/blog", "remove-exif": "/remove-exif", "remove-gps": "/remove-gps", "remove-c2pa": "/remove-c2pa"};

function join(path) {
  return BASE + path;
}

export function homeUrl() {
  return BASE + "/";
}

export function pageUrl(name) {
  if (!Object.prototype.hasOwnProperty.call(PAGES, name)) {
    throw new Error(`unknown page: ${name}`);
  }
  return join(PAGES[name]);
}

const TOOLS = new Set(["clean-image-metadata", "clean-video-metadata", "clean-pdf-metadata", "batch-metadata-cleaner", "fingerprint-protection"]);
export function toolUrl(slug) {
  if (!TOOLS.has(slug)) {
    throw new Error(`unknown tool: ${slug}`);
  }
  return join("/" + slug);
}

export function metadata() {
  const canonicalPages = { home: homeUrl() };
  for (const name of Object.keys(PAGES)) canonicalPages[name] = pageUrl(name);
  canonicalPages.tool = toolUrl("clean-image-metadata");
  return {
    name: "AI Metadata Cleaner",
    homepage: homeUrl(),
    description: "Offline URL builder for AI Metadata Cleaner image, video, and PDF metadata pages. Not an official SDK.",
    canonicalPages,
    tags: ["metadata", "exif", "url-builder"],
  };
}
