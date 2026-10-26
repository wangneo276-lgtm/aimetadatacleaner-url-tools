package urltools

import "testing"

func TestPages(t *testing.T) {
    if HomeURL() != "https://aimetadatacleaner.pro/" {
        t.Fatalf("home %s", HomeURL())
    }
    got, err := PageURL("detect")
    if err != nil || got != "https://aimetadatacleaner.pro/detect" {
        t.Fatalf("detect %s %v", got, err)
    }
    if _, err := PageURL("not-a-page"); err == nil {
        t.Fatal("expected unknown page")
    }
    tool, err := ToolURL("clean-pdf-metadata")
    if err != nil || tool != "https://aimetadatacleaner.pro/clean-pdf-metadata" {
        t.Fatalf("tool %s %v", tool, err)
    }
}
