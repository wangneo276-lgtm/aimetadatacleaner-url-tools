import Foundation

public enum UrlError: Error { case unknown(String, String) }

public enum Urls {
    public static let base = "https://aimetadatacleaner.pro"
    private static let pages = [
        "detect": "/detect",
        "blog": "/blog",
        "remove-exif": "/remove-exif",
        "remove-gps": "/remove-gps",
        "remove-c2pa": "/remove-c2pa",
    ]
    private static let tools = [
        "clean-image-metadata",
        "clean-video-metadata",
        "clean-pdf-metadata",
        "batch-metadata-cleaner",
        "fingerprint-protection",
    ]

    public static func homeUrl() -> String { base + "/" }

    public static func pageUrl(_ name: String) throws -> String {
        guard let path = pages[name] else { throw UrlError.unknown("page", name) }
        return base + path
    }

    public static func toolUrl(_ slug: String) throws -> String {
        guard tools.contains(slug) else { throw UrlError.unknown("tool", slug) }
        return base + "/" + slug
    }
}
