class Cok < Formula
  desc "Expose your local web server to the internet with a public URL"
  homepage "https://github.com/annurdien/cok"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/annurdien/cok/releases/download/v0.2.3/cok-arm64-apple-darwin.tar.gz"
    sha256 "127b6ffe306423784946f0616980ac18cf6180529f1556299399122c2224b4a0"
  else
    url "https://github.com/annurdien/cok/releases/download/v0.2.3/cok-x86_64-apple-darwin.tar.gz"
    sha256 "d183efb811ecfe41afe983688c099a66133262d1f14dd42289eaef137c749ecb"
  end

  def install
    bin.install "cok"
  end

  test do
    system "#{bin}/cok", "--help"
  end
end