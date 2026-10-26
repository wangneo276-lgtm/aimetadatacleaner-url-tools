package = 'aimetadatacleaner-url-tools'
version = '0.1.1-1'
source = { url = 'git+https://github.com/wangneo276-lgtm/aimetadatacleaner-url-tools.git', tag = 'v0.1.1', dir = 'lua' }
description = { summary = 'Offline URL helpers for AI Metadata Cleaner', detailed = 'Offline URL builder for AI Metadata Cleaner image, video, and PDF metadata pages. Not an official SDK.', homepage = 'https://aimetadatacleaner.pro/', license = 'MIT' }
dependencies = { 'lua >= 5.1' }
build = { type = 'builtin', modules = { aimetadatacleaner_url_tools = 'aimetadatacleaner_url_tools.lua' } }
