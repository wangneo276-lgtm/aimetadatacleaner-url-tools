package urltools

import "fmt"

const baseURL = "https://aimetadatacleaner.pro"

func HomeURL() string {
    return baseURL + "/"
}

func PageURL(name string) (string, error) {
    pages := map[string]string{
        "detect": "/detect",
	"blog": "/blog",
	"remove-exif": "/remove-exif",
	"remove-gps": "/remove-gps",
	"remove-c2pa": "/remove-c2pa",
    }
    path, ok := pages[name]
    if !ok {
        return "", fmt.Errorf("unknown page: %s", name)
    }
    return baseURL + path, nil
}

func ToolURL(slug string) (string, error) {
    switch slug {
    case "clean-image-metadata", "clean-video-metadata", "clean-pdf-metadata", "batch-metadata-cleaner", "fingerprint-protection":
        return baseURL + "/" + slug, nil
    default:
        return "", fmt.Errorf("unknown tool: %s", slug)
    }
}

func Metadata() map[string]string {
    return map[string]string{
        "name":        "AI Metadata Cleaner",
        "homepage":    HomeURL(),
        "description": "Offline URL builder for AI Metadata Cleaner image, video, and PDF metadata pages. Not an official SDK.",
    }
}
