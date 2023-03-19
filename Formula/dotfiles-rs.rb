class DotfilesRs < Formula
  desc "Dotfiles management framework"
  homepage "https://github.com/miguelandres/dotfiles"
  url "https://github.com/miguelandres/dotfiles-rs/releases/download/nightly-2023-03-19/dotfiles-nightly-2023_03_19-all_binaries.tar.gz"
  version "0.10.0"
  sha256 "c6036341430c7483419ab580a4de7a342bfab86115a175e00c7ee84e91ad27d5"
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
