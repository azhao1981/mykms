# 截屏 视屏处理

## [ShareX](https://github.com/ShareX/ShareX)

免费的 Windows 截屏录制工具。
功能强大支持全屏截图、滚动截图、检测窗口截图、GIF 录制等，截图后还支持在图片上增加文字、水印、特效、马赛克等，
最后可直接上传图床得到链接，丝滑地完成整个截图流程

需要[下载 ffmpeg](https://www.gyan.dev/ffmpeg/builds/#release-builds)

下载 ffmpeg-release-full.7z

https://github.com/BtbN/FFmpeg-Builds/releases

下载了 ffmpeg-n4.4.1-2-gcc33e73618-win64-lgpl-4.4.zip,但这个缺少 libx264

截屏就会报 Unknown encoder 'libx264'

fixed: 见 https://superuser.com/questions/512368/unknown-encoder-libx264-on-windows
