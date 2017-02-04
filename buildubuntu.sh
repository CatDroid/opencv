# apt-get install libgtk2.0-dev  会出错 
#  depends libpango1.0-dev (>= 1.32.4) 
#  depends libcairo2-dev (>= 1.13.0~20140204) 
# 结果追查到
#  apt-cache policy libfontconfig1 看到版本是  2.11.0-0ubuntu4.1
# 但是 apt-get install libfontconfig1-dev 会出错在 " 依赖: libfontconfig1 (= 2.11.0-0ubuntu4) 但是 2.11.0-0ubuntu4.1 正要被安装"
# 也就是
# 所以需要 apt-get update   apt-get install libfontconfig1-dev 或者可以直接 apt-get install libgtk2.0-dev
# 目前来看libfontconfig1-dev是从源 deb http://security.ubuntu.com/ubuntu trusty-security main  下载的

PKG_CONFIG_PATH=/home/hanlon/Cat6/git_qq_yun/ffmpeg/ubuntu/lib/pkgconfig cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=$(pwd)/openCVubuntu  -DBUILD_EXAMPLES=ON 

#-DCMAKE_LIBRARY_PATH="/home/hanlon/Cat6/git_qq_yun/ffmpeg/ubuntu/lib" -DCMAKE_INCLUDE_PATH="/home/hanlon/Cat6/git_qq_yun/ffmpeg/ubuntu/include"

# -D WITH_FFMPEG
