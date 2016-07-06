require 'formula'

class Libfastjson < Formula
  
  homepage 'https://github.com/rsyslog/libfastjson'
  url 'http://download.rsyslog.com/libfastjson/libfastjson-0.99.2.tar.gz'
  sha256 '6ff053d455243a81014f37b4d81c746d9b8d40256a56326c3a7921c8bf458dfd'

  depends_on "autoconf" => :build
  depends_on "automake" => :build

  def install
    system "autoreconf", "-vfi"
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

end
