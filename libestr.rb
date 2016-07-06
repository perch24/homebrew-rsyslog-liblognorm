require 'formula'

class Libestr < Formula
  
  homepage 'http://libestr.adiscon.com/'
  url 'http://libestr.adiscon.com/files/download/libestr-0.1.10.tar.gz'
  sha256 'bd655e126e750edd18544b88eb1568d200a424a0c23f665eb14bbece07ac703c'

  depends_on "autoconf" => :build
  depends_on "automake" => :build

  def install
    system "autoreconf", "-vfi"
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

end
