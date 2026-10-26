package pro.aimetadatacleaner;

public final class UrlsTest {
    public static void main(String[] args) {
        if (!Urls.homeUrl().equals("https://aimetadatacleaner.pro/")) {
            throw new AssertionError("home");
        }
        if (!Urls.pageUrl("detect").equals("https://aimetadatacleaner.pro/detect")) {
            throw new AssertionError("page");
        }
        if (!Urls.toolUrl("clean-image-metadata").equals("https://aimetadatacleaner.pro/clean-image-metadata")) {
            throw new AssertionError("tool");
        }
        System.out.println("ok");
    }
}
