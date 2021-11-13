class DezoomifyRs < Formula
  desc "Zoomable image downloader for Google Arts & Culture, Zoomify, IIIF, and others"
  homepage "https://dezoomify-rs.ophir.dev"
  url "https://github.com/lovasoa/dezoomify-rs/releases/download/v2.7.2/dezoomify-rs-macos.tgz"
  sha256 "f068b7d71dd15143b95dc3f3ca5950e6f9108df696968289e75c2dd483661623"
  license "GPL-3.0-only"

  def install
    bin.install "dezoomify-rs"
  end

  test do
    system "which", "dezoomify-rs"
  end
end
