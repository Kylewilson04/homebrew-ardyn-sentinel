class ArdynSentinel < Formula
  desc "Sovereign AI inference stack for Apple Silicon"
  homepage "https://www.ardyn.ai"
  license "MIT"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/KyleWilson04/ardyn-sentinel-v1/releases/download/v0.4.0/ardyn-sentinel-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "acffba39416ce51422cd1cbc15a8d6ca6ec32353f7ee0061392800defd6840b2"
    end
  end

  def install
    bin.install "ardyn-sentinel"
  end

  test do
    system "#{bin}/ardyn-sentinel", "--version"
  end
end
