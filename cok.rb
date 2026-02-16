class Cok < Formula
  desc "Expose your local web server to the internet with a public URL"
  homepage "https://github.com/annurdien/cok"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/annurdien/cok/releases/download/v0.2.0/cok-arm64-apple-darwin.tar.gz"
    sha256 "f7cb425dc73d8a9920bfbe75ad26346d47210f977e239a5a4f7b6825270e276c"
  else
    url "https://github.com/annurdien/cok/releases/download/v0.2.0/cok-x86_64-apple-darwin.tar.gz"
    sha256 "d103ba033a9d9f9b121d4e55198d3bfc403c51f3e4c8187cf9e4879a645baa7e"
  end

  def install
    bin.install "cok"
  end

  test do
    system "#{bin}/cok", "--help"
  end
end