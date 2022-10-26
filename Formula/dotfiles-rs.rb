class DotfilesRs < Formula
  desc "Dotfiles management framework"
  homepage "https://github.com/miguelandres/dotfiles"
  url "https://github.com/miguelandres/dotfiles-rs/releases/download/nightly-2022-10-26/dotfiles-nightly-2022_10_26-macos-universal.tar.gz"
  sha256 "c3fb3ce6d2df29d4aa0b80a5d7720012e8d45f9570d9e53aa5cbc61399c0d3ca"
  license "MIT"

  def install
    bin.install "dotfiles"
  end

  test do
    system "which", "dotfiles"
  end
end
