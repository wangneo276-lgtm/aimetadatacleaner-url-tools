from __future__ import annotations

_BASE = "https://aimetadatacleaner.pro"
_BRAND = "AI Metadata Cleaner"
_DESCRIPTION = "Offline URL builder for AI Metadata Cleaner image, video, and PDF metadata pages. Not an official SDK."
_TAGS = ["metadata", "exif", "url-builder"]
_PAGES = {
    "detect": "/detect",
    "blog": "/blog",
    "remove-exif": "/remove-exif",
    "remove-gps": "/remove-gps",
    "remove-c2pa": "/remove-c2pa"
}
_TOOLS = ["clean-image-metadata", "clean-video-metadata", "clean-pdf-metadata", "batch-metadata-cleaner", "fingerprint-protection"]

def _join(path: str) -> str:
    return _BASE + path

def home_url() -> str:
    return _BASE + "/"

def page_url(name: str) -> str:
    try:
        path = _PAGES[name]
    except KeyError:
        raise ValueError(f"unknown page: {name}") from None
    return _join(path)

def tool_url(slug: str) -> str:
    if slug not in _TOOLS:
        raise ValueError(f"unknown tool: {slug}")
    return _join("/" + slug)

def metadata() -> dict[str, object]:
    pages = {"home": home_url()}
    for name in _PAGES:
        pages[name] = page_url(name)
    pages["tool"] = tool_url("clean-image-metadata")
    return {
        "name": _BRAND,
        "homepage": home_url(),
        "description": _DESCRIPTION,
        "canonicalPages": pages,
        "tags": list(_TAGS),
    }
