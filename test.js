import test from 'node:test';
import assert from 'node:assert/strict';
import { homeUrl, metadata, pageUrl, toolUrl } from './index.js';

test('metadata points at the live site', () => {
  const data = metadata();
  assert.equal(data.name, "AI Metadata Cleaner");
  assert.equal(data.homepage, "https://aimetadatacleaner.pro/");
  assert.equal(data.homepage.includes(' '), false);
});

test('pages', () => {
  assert.equal(pageUrl("detect"), "https://aimetadatacleaner.pro/detect");
  assert.equal(pageUrl("remove-exif"), "https://aimetadatacleaner.pro/remove-exif");
  assert.equal(pageUrl("remove-gps"), "https://aimetadatacleaner.pro/remove-gps");
  assert.equal(pageUrl("remove-c2pa"), "https://aimetadatacleaner.pro/remove-c2pa");
  assert.equal(pageUrl("blog"), "https://aimetadatacleaner.pro/blog");
});

test('unknown page', () => {
  assert.throws(() => pageUrl('not-a-page'), /unknown page/);
});

test('toolUrl', () => {
  assert.equal(toolUrl("clean-image-metadata"), "https://aimetadatacleaner.pro/clean-image-metadata");
  assert.equal(toolUrl("clean-video-metadata"), "https://aimetadatacleaner.pro/clean-video-metadata");
  assert.equal(toolUrl("clean-pdf-metadata"), "https://aimetadatacleaner.pro/clean-pdf-metadata");
  assert.equal(toolUrl("batch-metadata-cleaner"), "https://aimetadatacleaner.pro/batch-metadata-cleaner");
  assert.equal(toolUrl("fingerprint-protection"), "https://aimetadatacleaner.pro/fingerprint-protection");
  assert.throws(() => toolUrl('not-listed'), /unknown tool/);
});

test('home', () => {
  assert.equal(homeUrl(), "https://aimetadatacleaner.pro/");
});
