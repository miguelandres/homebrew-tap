class DotfilesRs < Formula
  desc "Dotfiles management framework"
  homepage "https://github.com/miguelandres/dotfiles"
  url "https://github.com/miguelandres/dotfiles-rs/releases/download/nightly-2022-10-18/dotfiles-nightly-2022_10_18-macos-universal.tar.gz"
  sha256 "27ed6eb00f76bda200fa4ff7ebfe9957d00acc2f580e93aa19c9167c02d30dad"
  license "MIT"

  def install
    bin.install "dotfiles"
  end

  test do
    system "which", "dotfiles"
  end
end
