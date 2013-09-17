require 'formula'

class Platypus < Formula
  homepage 'http://sveinbjorn.org/platypus'
  url 'https://github.com/sveinbjornt/Platypus/raw/4.8/Releases/platypus4.8.src.zip'
  sha1 '39d165b9579600cef637b45c70c82307697bb7be'
  head 'https://github.com/sveinbjornt/Platypus', :branch => 'master'

  depends_on :xcode

  def install
    cd 'Platypus 4.8 Source' do
      system "xcodebuild", "SYMROOT=build",
                           "-project", "Platypus.xcodeproj",
                           "-target", "platypus",
                           "-target", "ScriptExec",
                           "clean", "install"
      man1.install "CommandLineTool/platypus.1"
    end
    bin.install build_dir/'platypus_clt' => 'platypus'
    app_share.install contents/'Resources/MainMenu.nib'
    app_share.install contents/'MacOS/ScriptExec'
  end

  def test
    system "#{bin}/platypus", "-v"
  end

  def caveats
    <<-EOS.undent
      This formula only installs the command-line Platypus tool, not the GUI.
      If you want the GUI, download the app from the project's Web page directly.
    EOS
  end

  private

  def build_dir
    Pathname.new '/tmp/Platypus.dst'
  end

  def app_share
    share/'platypus'
  end

  def contents
    build_dir/'ScriptExec.app/Contents'
  end
end
