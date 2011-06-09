require 'formula'

class Gobby < Formula
  url 'git://git.0x539.de/git/gobby.git'
  homepage 'http://gobby.0x539.de'
  md5 ''

  # depends_on 'cmake'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
