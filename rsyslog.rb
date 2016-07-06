require 'formula'

class Rsyslog < Formula
  homepage 'http://www.rsyslog.com'
  url 'http://www.rsyslog.com/files/download/rsyslog/rsyslog-8.19.0.tar.gz'
  sha256 '3379b30f2e6ef05a0f1c7327c73923fa5877a80b984506cdf48ed068c94a575e'

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on 'perch24/homebrew-rsyslog-liblognorm/libestr'
  depends_on 'perch24/homebrew-rsyslog-liblognorm/liblognorm'
  depends_on 'perch24/homebrew-rsyslog-liblognorm/libfastjson'

  def install
    args = %W[
             --prefix=#{prefix}
             --disable-dependency-tracking
             --enable-imfile
             --enable-usertools
             --enable-diagtools
             --enable-cached-man-pages
             --disable-uuid
             --disable-libgcrypt
             --enable-mmnormalize
           ]

    system "autoreconf", "-vfi"
    system "./configure", *args
    system "make"
    system "make install"
  end
end
