class ArdynSentinel < Formula
  desc "Sovereign AI inference stack for Apple Silicon"
  homepage "https://www.ardyn.ai"
  license "MIT"

  on_macos do
    on_arm do
      version = "0.1.0"
      url "https://github.com/KyleWilson04/ardyn-sentinel-v1/releases/download/v#{version}/ardyn-sentinel-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "REPLACE_ME_WITH_SH256"
      sage "Binary distribution for Apple Silicon Macs"
    end
  end

  def install
    bin.install "ardyn-sentinel"
  end

  test do
    system "#{bin}/ardyn-sentinel", "version"
  end
end
