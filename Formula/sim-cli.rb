class SimCli < Formula
  desc "CLI tool to manage iOS simulators and Android emulators"
  homepage "https://github.com/annurdien/sim-cli"
  version "1.4.1"
  license "MIT"

  depends_on "ffmpeg"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/annurdien/sim-cli/releases/download/v1.4.1/sim-darwin-amd64"
    sha256 "c5c5509634db956d5d24c8091371cc0c6b1281aa22947e14af31172fe325dc6e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/annurdien/sim-cli/releases/download/v1.4.1/sim-darwin-arm64"
    sha256 "698ab5b820f82d34358adf0c68d16906d01071d253f420b6977d807c987c3843"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/annurdien/sim-cli/releases/download/v1.4.1/sim-linux-amd64"
    sha256 "0821e4bcaaf99fd30aa96a70c013ad7b4f33f197d174e1993aea9284ff7aae57"
  end

  def install
    if OS.mac? && Hardware::CPU.intel?
      bin.install "sim-darwin-amd64" => "sim"
    elsif OS.mac? && Hardware::CPU.arm?
      bin.install "sim-darwin-arm64" => "sim"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "sim-linux-amd64" => "sim"
    end
  end

  test do
    system "#{bin}/sim", "--version"
  end
end
