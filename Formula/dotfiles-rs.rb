class DotfilesRs < Formula
  desc "Dotfiles management framework"
  homepage "https://github.com/miguelandres/dotfiles"
  url "https://github.com/miguelandres/dotfiles-rs/releases/download/v1.0.0/dotfiles-v1_0_0-all_binaries.tar.gz"
  version "1.0.0"
  sha256 "6d7621a468b5aa35149b2cb7cfc50e004e9cd7f6f85929af47da16d0dd577a3e"
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
