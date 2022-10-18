class DezoomifyRs < Formula
  desc "Zoomable image downloader for Google Arts & Culture, Zoomify, IIIF, and others"
  homepage "https://dezoomify-rs.ophir.dev"
  url "https://github.com/lovasoa/dezoomify-rs/releases/download/v2.9.1/dezoomify-rs-macos.tgz"
  sha256 "679fe72bf725e9f05cb95fd528aa0abc4b4c49d953ff7e2f8a963bf0c081152a"
  license "GPL-3.0-only"

  def install
    bin.install "dezoomify-rs"
  end

  test do
    system "which", "dezoomify-rs"
  end
end
