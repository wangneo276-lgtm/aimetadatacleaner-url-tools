use aimetadatacleaner_url_tools::{home_url, metadata, page_url, tool_url};

#[test]
fn metadata_has_homepage() {
    let data = metadata();
    assert!(data.iter().any(|(k, v)| *k == "name" && v == "AI Metadata Cleaner"));
    assert!(data.iter().any(|(k, v)| *k == "homepage" && v == "https://aimetadatacleaner.pro/"));
    assert_eq!(home_url(), "https://aimetadatacleaner.pro/");
}

#[test]
fn pages_match() {
    assert_eq!(page_url("detect").unwrap(), "https://aimetadatacleaner.pro/detect");
    assert_eq!(page_url("remove-c2pa").unwrap(), "https://aimetadatacleaner.pro/remove-c2pa");
    assert!(page_url("not-a-page").is_err());
}

#[test]
fn tool_url_matches() {
    assert_eq!(tool_url("clean-image-metadata").unwrap(), "https://aimetadatacleaner.pro/clean-image-metadata");
    assert_eq!(tool_url("fingerprint-protection").unwrap(), "https://aimetadatacleaner.pro/fingerprint-protection");
    assert!(tool_url("not-listed").is_err());
}
