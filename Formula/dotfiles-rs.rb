class DotfilesRs < Formula
  desc "Dotfiles management framework"
  homepage "https://github.com/miguelandres/dotfiles"
  url "https://github.com/miguelandres/dotfiles-rs/archive/refs/tags/nightly-2022-10-27.tar.gz"
  sha256 "7029e0f7fcdbc66ca754081aadcc740f4680ce04023413d58f5b702ea86a7f7a"
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
