class ArdynSentinel < Formula
  desc "Sovereign AI inference stack for Apple Silicon"
  homepage "https://www.ardyn.ai"
  license "MIT"
  version "0.3.6"

  on_macos do
    on_arm do
      url "https://github.com/KyleWilson04/ardyn-sentinel-v1/releases/download/v0.3.6/ardyn-sentinel-0.3.6-aarch64-apple-darwin.tar.gz"
      sha256 "2520e9755fe1bc2ab771097037cf09ac912a658b6410ccb7241d3a9c448c3953"
    end
  end

  def install
    bin.install "ardyn-sentinel"
  end

  test do
    system "#{bin}/ardyn-sentinel", "--version"
  end
end
