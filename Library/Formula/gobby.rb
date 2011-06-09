require 'formula'

class Gobby < Formula
  url 'http://releases.0x539.de/gobby/gobby-0.4.12.tar.gz'
  head 'git://git.0x539.de/git/gobby.git'
  homepage 'http://gobby.0x539.de'
  md5 '835cc48f5177196e4a18610c2cb013bf'
  
  depends_on 'pkg-config'
  depends_on 'gtkmm'
  depends_on 'libxml++'
  depends_on 'gtksourceview'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
