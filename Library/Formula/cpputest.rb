require "formula"

class Cpputest < Formula
  homepage "http://www.cpputest.org/"
  url "https://github.com/cpputest/cpputest/releases/download/3.7.2/cpputest-3.7.2.tar.gz"
  sha1 "6a20695ba0094bf5db089da5baf08aca7101c1c6"

  bottle do
    cellar :any
    sha256 "0a423cd7875cf7e7e1d650b47fc81b2f609f7e4306e63939d8a8f73949bd38b7" => :yosemite
    sha256 "e20d81ca7436928b79328b32c19158def2e31da83b698531c71c6503cf6ff626" => :mavericks
    sha256 "dbde383c51725ef3fb71480f59627e64158c5639cb827e76d7c944b0d354fa9b" => :mountain_lion
  end

  head do
    url "https://github.com/cpputest/cpputest.git"
    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
  end

  def install
    system "./autogen.sh" if build.head?
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
