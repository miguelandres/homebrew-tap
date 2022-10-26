class DotfilesRs < Formula
  desc "Dotfiles management framework"
  homepage "https://github.com/miguelandres/dotfiles"
  url "https://github.com/miguelandres/dotfiles-rs/releases/download/nightly-2022-10-25/dotfiles-nightly-2022_10_25-macos-universal.tar.gz"
  sha256 "f9ef500972ae1918387909340ff8fa316f7ac7ec3eb56f04366d014ba2a936db"
  license "MIT"

  def install
    bin.install "dotfiles"
  end

  test do
    system "which", "dotfiles"
  end
end
