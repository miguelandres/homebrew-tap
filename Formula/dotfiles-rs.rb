class DotfilesRs < Formula
  desc "Dotfiles management framework"
  homepage "https://github.com/miguelandres/dotfiles"
  url "https://github.com/miguelandres/dotfiles-rs/releases/download/nightly-2023-02-07/dotfiles-nightly-2023_02_07-all_binaries.tar.gz"
  version "0.9.1"
  sha256 "c3f529980e029067a627b1b968633185e35bd696702c37d48335be6f899a7fad"
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
