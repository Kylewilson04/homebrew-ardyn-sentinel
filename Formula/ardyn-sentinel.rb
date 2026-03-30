class ArdynSentinel < Formula
  desc "Sovereign AI inference stack for Apple Silicon"
  homepage "https://www.ardyn.ai"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/KyleWilson04/ardyn-sentinel-v1/releases/download/v0.1.0/ardyn-sentinel-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    end
  end

  def install
    bin.install "ardyn-sentinel"
  end

  test do
    system "#{bin}/ardyn-sentinel", "--version"
  end
end
