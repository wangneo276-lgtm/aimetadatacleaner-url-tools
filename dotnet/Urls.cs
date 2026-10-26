using System;
using System.Collections.Generic;

namespace AiMetadataCleaner.UrlTools;

public static class Urls
{
    public const string Base = "https://aimetadatacleaner.pro";
    private static readonly Dictionary<string, string> Pages = new()
    {
        { "detect", "/detect" },
        { "blog", "/blog" },
        { "remove-exif", "/remove-exif" },
        { "remove-gps", "/remove-gps" },
        { "remove-c2pa", "/remove-c2pa" },
    };

    public static string HomeUrl() => Base + "/";

    public static string PageUrl(string name)
    {
        if (!Pages.TryGetValue(name, out var path))
            throw new ArgumentException("unknown page: " + name);
        return Base + path;
    }

    public static string ToolUrl(string slug)
    {
        string[] allowed = new[] { "clean-image-metadata", "clean-video-metadata", "clean-pdf-metadata", "batch-metadata-cleaner", "fingerprint-protection" };
        if (Array.IndexOf(allowed, slug) < 0)
            throw new ArgumentException("unknown tool: " + slug);
        return Base + "/" + slug;
    }
}
