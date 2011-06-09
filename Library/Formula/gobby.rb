require 'formula'

class Gobby < Formula
  url 'http://releases.0x539.de/gobby/gobby-0.4.12.tar.gz'
  homepage 'http://gobby.0x539.de'
  md5 '835cc48f5177196e4a18610c2cb013bf'

  # depends_on 'cmake'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
