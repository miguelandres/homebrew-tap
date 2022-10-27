class DotfilesRs < Formula
  desc "Dotfiles management framework"
  homepage "https://github.com/miguelandres/dotfiles"
  url "https://api.github.com/repos/miguelandres/dotfiles-rs/tarball/nightly-2022-10-27"
  sha256 "7029e0f7fcdbc66ca754081aadcc740f4680ce04023413d58f5b702ea86a7f7a"
  license "MIT"

  depends_on "rustup-init"

  def install
    system "rustup-init", "" 
    bin.install "dotfiles"
  end

  test do
    system "which", "dotfiles"
  end
end
