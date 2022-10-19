class DotfilesRs < Formula
  desc "Dotfiles management framework"
  homepage "https://github.com/miguelandres/dotfiles"
  url "https://github.com/miguelandres/dotfiles-rs/releases/download/nightly-2022-10-19/dotfiles-nightly-2022_10_19-macos-universal.tar.gz"
  sha256 "672743d95447a039373f95b1f78dd868828d12018093faa110842435ff03d079"
  license "MIT"

  def install
    bin.install "dotfiles"
  end

  test do
    system "which", "dotfiles"
  end
end
