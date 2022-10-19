class DotfilesRs < Formula
  desc "Dotfiles management framework"
  homepage "https://github.com/miguelandres/dotfiles"
  url "https://github.com/miguelandres/dotfiles-rs/releases/download/nightly-2022-10-19/dotfiles-nightly-2022_10_19-macos-universal.tar.gz"
  sha256 "38f93136900fb373672343323be7bb74a06207be300a7ec39b52c65d125a2703"
  license "MIT"

  def install
    bin.install "dotfiles"
  end

  test do
    system "which", "dotfiles"
  end
end
