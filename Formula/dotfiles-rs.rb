class DotfilesRs < Formula
  desc "Dotfiles management framework"
  homepage "https://github.com/miguelandres/dotfiles"
  url "https://github.com/miguelandres/dotfiles-rs/releases/download/nightly-2022-12-02/dotfiles-nightly-2022_12_02-all_binaries.tar.gz"
  version "0.9.0"
  sha256 "bfcdb81d2f0471fef5921fb443c09cbaed34e6d87fda6e90fb2e5de4146616ce"
  license "MIT"

  def install
    if OS.mac?
      bin.install "dotfiles-macos" => "dotfiles"
    elsif Hardware::CPU.intel?
      bin.install "dotfiles-x86_64" => "dotfiles"
    elsif Hardware::CPU.is_64_bit?
      bin.install "dotfiles-aarch64" => "dotfiles"
    else
      bin.install "dotfiles-armv7" => "dotfiles"
    end

    file = bin/"dotfiles"
    system "chmod", "+x", file.to_s
  end

  test do
    system "which", "dotfiles"
  end
end
