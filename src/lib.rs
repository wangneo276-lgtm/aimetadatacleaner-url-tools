const BASE: &str = "https://aimetadatacleaner.pro";

fn join(path: &str) -> String {
    format!("{BASE}{path}")
}

pub fn home_url() -> String {
    format!("{BASE}/")
}

pub fn page_url(name: &str) -> Result<String, &'static str> {
    let path = match name {
        "detect" => "/detect",
        "blog" => "/blog",
        "remove-exif" => "/remove-exif",
        "remove-gps" => "/remove-gps",
        "remove-c2pa" => "/remove-c2pa",
        _ => return Err("unknown page"),
    };
    Ok(join(path))
}

pub fn tool_url(slug: &str) -> Result<String, &'static str> {
    let path = match slug {
        "clean-image-metadata" => "/clean-image-metadata",
        "clean-video-metadata" => "/clean-video-metadata",
        "clean-pdf-metadata" => "/clean-pdf-metadata",
        "batch-metadata-cleaner" => "/batch-metadata-cleaner",
        "fingerprint-protection" => "/fingerprint-protection",
        _ => return Err("unknown tool"),
    };
    Ok(join(path))
}

pub fn metadata() -> Vec<(&'static str, String)> {
    vec![
        ("name", "AI Metadata Cleaner".to_string()),
        ("homepage", home_url()),
        ("description", "Offline URL builder for AI Metadata Cleaner image, video, and PDF metadata pages. Not an official SDK.".to_string()),
    ]
}
