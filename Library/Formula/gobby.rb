require 'formula'

class Gobby < Formula
  url 'http://git.0x539.de/?p=gobby.git;a=snapshot;h=44eeb15f37d732cea9dc41fc72852c3231570ab0;sf=tgz'
  version '0.4.94'
  homepage 'http://gobby.0x539.de'
  md5 '8a3cd43db6bcee32c7e48063817916a0'

  # depends_on 'cmake'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
