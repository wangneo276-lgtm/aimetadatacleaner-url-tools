<?php

declare(strict_types=1);

namespace AimetaUrlTools;

final class Urls
{
    private const BASE = 'https://aimetadatacleaner.pro';

    public static function homeUrl(): string
    {
        return self::BASE . '/';
    }

    public static function pageUrl(string $name): string
    {
        $pages = [
            'detect' => '/detect',
            'blog' => '/blog',
            'remove-exif' => '/remove-exif',
            'remove-gps' => '/remove-gps',
            'remove-c2pa' => '/remove-c2pa',
        ];
        if (!array_key_exists($name, $pages)) {
            throw new \InvalidArgumentException('unknown page: ' . $name);
        }
        return self::BASE . $pages[$name];
    }

    public static function toolUrl(string $slug): string
    {
        $allowed = ['clean-image-metadata', 'clean-video-metadata', 'clean-pdf-metadata', 'batch-metadata-cleaner', 'fingerprint-protection'];
        if (!in_array($slug, $allowed, true)) {
            throw new \InvalidArgumentException('unknown tool: ' . $slug);
        }
        return self::BASE . '/' . $slug;
    }
}
