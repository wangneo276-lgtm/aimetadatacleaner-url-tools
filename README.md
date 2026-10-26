# aimetadatacleaner-url-tools

`aimetadatacleaner-url-tools` builds canonical HTTPS URLs for [AI Metadata Cleaner](https://aimetadatacleaner.pro/).

Offline URL builder for AI Metadata Cleaner image, video, and PDF metadata pages. Not an official SDK.

The helper only concatenates known page slugs. It does not call the site, upload files, or sign in.

## JavaScript

```js
import { pageUrl, toolUrl } from 'aimetadatacleaner-url-tools';

pageUrl('detect'); // https://aimetadatacleaner.pro/detect
toolUrl('clean-image-metadata'); // https://aimetadatacleaner.pro/clean-image-metadata
```

## Python

```python
from aimetadatacleaner_url_tools import page_url, tool_url

page_url('detect')  # https://aimetadatacleaner.pro/detect
tool_url('clean-image-metadata')  # https://aimetadatacleaner.pro/clean-image-metadata
```

Source: https://github.com/wangneo276-lgtm/aimetadatacleaner-url-tools

License: MIT.
