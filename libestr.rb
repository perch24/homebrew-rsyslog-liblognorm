require 'formula'

class Libestr < Formula
  
  homepage 'http://libestr.adiscon.com/'
  url 'http://libestr.adiscon.com/files/download/libestr-0.1.10.tar.gz'
  sha256 'bd655e126e750edd18544b88eb1568d200a424a0c23f665eb14bbece07ac703c'

  option :universal

  depends_on "pkg-config" => :build

  def install
    ENV.universal_binary if build.universal?
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    (testpath/"test.c").write <<-EOS.undent
      #include "stdio.h"
      #include <libestr.h>
      int main() {
        printf("%s\\n", es_version());
        return 0;
      }
    EOS
    system ENV.cc, "test.c", "-L#{lib}", "-lestr", "-o", "test"
    system "./test"
  end
end
