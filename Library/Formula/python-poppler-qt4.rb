require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class PythonPopplerQt4 < Formula
  homepage 'https://code.google.com/p/python-poppler-qt4/'
  url 'https://python-poppler-qt4.googlecode.com/files/python-poppler-qt4-0.16.3.tar.gz'
  sha1 'fe6aa650a1a917caeedd407ae0c428a5de9eefb8'

  depends_on :python2 => '2.6'
  depends_on 'sip'
  depends_on 'poppler' => 'with-qt4'
  depends_on 'qt'
  depends_on 'pyqt'

  def install
    python do
      system python, "setup.py", "build"
      system python, "setup.py", "install", "--prefix=#{prefix}"
    end
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test python-poppler-qt4`.
    system "false"
  end
end
