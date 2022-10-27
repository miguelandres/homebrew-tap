class DotfilesRs < Formula
  desc "Dotfiles management framework"
  homepage "https://github.com/miguelandres/dotfiles"
  url "https://github.com/miguelandres/dotfiles-rs/releases/download/nightly-2022-10-27/dotfiles-nightly-2022_10_27-macos-universal.tar.gz"
  sha256 "76ecf96f93ab8c3d527365b6face205d3fa77650678d1dd75286d4eb1e67b0b1"
  license "MIT"

  def install
    bin.install "dotfiles"
  end

  test do
    system "which", "dotfiles"
  end
end
