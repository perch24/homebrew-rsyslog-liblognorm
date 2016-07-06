require "formula"

class Liblognorm < Formula
  homepage "http://www.liblognorm.com"
  url "http://www.liblognorm.com/files/download/liblognorm-1.1.3.tar.gz"
  sha256 "8e370460a152057abc577d59acbe60b7846312897e56f8f9d3e74edf9c621951"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on 'perch24/homebrew-rsyslog-liblognorm/libestr'

  def install
    system "autoreconf", "-vfi"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

end
