#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = 'shoh8'
SITENAME = 'blog.datemega.net'
SITEURL = ''

PATH = 'content'

TIMEZONE = 'Asia/Tokyo'

DEFAULT_LANG = 'ja'

THEME = 'theme'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
LINKS = (('BB is watching you', '#'),)

# Social widget
SOCIAL = (('Twitter', 'https://twitter.com/shoh8'),
          ('github', 'https://github.com/shoh8'),)

DEFAULT_PAGINATION = 5

# Uncomment following line if you want document-relative URLs when developing
#RELATIVE_URLS = True

USE_FOLDER_AS_CATEGORY = True
DEFAULT_CATEGORY = 'misc'
DISPLAY_PAGES_ON_MENU = True

STATIC_PATHS = { 'extra' , 'images', 'static'}
EXTRA_PATH_METADATA = {
    'extra/CNAME': {'path': 'CNAME'},
}
