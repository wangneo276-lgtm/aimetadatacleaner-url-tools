const BASE = "https://aimetadatacleaner.pro";
const PAGES: Record<string, string> = {
  detect: "/detect",
  blog: "/blog",
  "remove-exif": "/remove-exif",
  "remove-gps": "/remove-gps",
  "remove-c2pa": "/remove-c2pa",
};
const TOOLS = [
  "clean-image-metadata",
  "clean-video-metadata",
  "clean-pdf-metadata",
  "batch-metadata-cleaner",
  "fingerprint-protection",
];

export function homeUrl(): string {
  return BASE + "/";
}

export function pageUrl(name: string): string {
  const path = PAGES[name];
  if (!path) throw new Error("unknown page: " + name);
  return BASE + path;
}

export function toolUrl(slug: string): string {
  if (!TOOLS.includes(slug)) throw new Error("unknown tool: " + slug);
  return BASE + "/" + slug;
}
