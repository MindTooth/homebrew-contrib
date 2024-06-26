class Sshpass < Formula
  desc "Noninteractive ssh password provider"
  homepage "https://sourceforge.net/projects/sshpass/"
  url "https://downloads.sourceforge.net/project/sshpass/sshpass/1.10/sshpass-1.10.tar.gz"
  sha256 "ad1106c203cbb56185ca3bad8c6ccafca3b4064696194da879f81c8d7bdfeeda"
  license "GPL-2.0-or-later"
  head "https://git.code.sf.net/p/sshpass/code-git sshpass-code-git", branch: "main"

  def install
    system "./configure", *std_configure_args
    system "make", "install"
  end

  test do
    system bin/"sshpass"
  end
end
