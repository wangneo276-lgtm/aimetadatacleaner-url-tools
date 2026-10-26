package pro.aimetadatacleaner;

import java.util.Map;
import java.util.Set;

public final class Urls {
    public static final String BASE = "https://aimetadatacleaner.pro";
    private static final Map<String, String> PAGES = Map.of(
        "detect", "/detect",
        "blog", "/blog",
        "remove-exif", "/remove-exif",
        "remove-gps", "/remove-gps",
        "remove-c2pa", "/remove-c2pa"
    );
    private static final Set<String> TOOLS = Set.of(
        "clean-image-metadata",
        "clean-video-metadata",
        "clean-pdf-metadata",
        "batch-metadata-cleaner",
        "fingerprint-protection"
    );

    private Urls() {}

    public static String homeUrl() {
        return BASE + "/";
    }

    public static String pageUrl(String name) {
        String path = PAGES.get(name);
        if (path == null) {
            throw new IllegalArgumentException("unknown page: " + name);
        }
        return BASE + path;
    }

    public static String toolUrl(String slug) {
        if (!TOOLS.contains(slug)) {
            throw new IllegalArgumentException("unknown tool: " + slug);
        }
        return BASE + "/" + slug;
    }
}
