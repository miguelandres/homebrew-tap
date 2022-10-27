class DezoomifyRs < Formula
  desc "Zoomable image downloader for Google Arts & Culture, Zoomify, IIIF, and others"
  homepage "https://dezoomify-rs.ophir.dev"
  url "https://github.com/lovasoa/dezoomify-rs/archive/refs/tags/v2.9.2.tar.gz"
  sha256 "33bdc75ada73faacd5551ecc7da2e4c99a6fa62fb7c9325db3d83b22e9eb8157"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "which", "dezoomify-rs"
  end
end
