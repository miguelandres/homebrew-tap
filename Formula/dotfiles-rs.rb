class DotfilesRs < Formula
  desc "Dotfiles management framework"
  homepage "https://github.com/miguelandres/dotfiles"
  version "0.9.0"
  url "https://github.com/miguelandres/dotfiles-rs/archive/refs/tags/nightly-2022-10-27.tar.gz"
  sha256 "5859a8ee49a5fd931b80b0930ad996604d3ec1fb9e9ba62693d69580f15cb227"
  license "MIT"

  depends_on "rustup-init" => :build

  def install
    system "rustup-init", "-y", "--default-toolchain", "nightly", "--profile", "default"
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "which", "dotfiles"
  end
end
