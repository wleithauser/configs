c.hints.chars = "arstdhneio"
c.qt.args = ["ppapi-widevine-path=/usr/lib/qt/plugins/ppapi/libwidevinecdmadapter.so"]
c.tabs.show = "multiple"
config.bind(',m', 'spawn mpv {url}')
config.bind(',M', 'hint links spawn mpv {url}')
config.source('nord-qutebrowser.py')
