class DotfilesRs < Formula
  desc "Dotfiles management framework"
  homepage "https://github.com/miguelandres/dotfiles"
  url "https://github.com/miguelandres/dotfiles-rs/releases/download/v1.2.0/dotfiles-nightly-2026_06_11-all_binaries.tar.gz"
  version "1.2.0"
  sha256 "b443f683325b87ca043b0945100cad0d2fed3dbe3bb676cd3edb3d94fe1378c7"
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
