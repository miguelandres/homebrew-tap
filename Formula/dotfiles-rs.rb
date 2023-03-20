class DotfilesRs < Formula
  desc "Dotfiles management framework"
  homepage "https://github.com/miguelandres/dotfiles"
  url "https://github.com/miguelandres/dotfiles-rs/releases/download/nightly-2023-03-20/dotfiles-nightly-2023_03_20-all_binaries.tar.gz"
  version "0.10.1"
  sha256 "2c07bed5443aa63a48346d81d28d722f8288aeb1ff1347e364444f1e2102a630"
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

    File.chmod(0555, bin/"dotfiles")
  end

  test do
    system "which", "dotfiles"
  end
end
