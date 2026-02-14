class Cok < Formula
  desc "Expose your local web server to the internet with a public URL"
  homepage "https://github.com/annurdien/cok"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/annurdien/cok/releases/download/v0.1.0/cok-arm64-apple-darwin.tar.gz"
    sha256 "6f5e87e6fb922cc8d2b3211bfe2b178b6c0d96c8dfd9c6814a8af6c4bd5e929a"
  else
    url "https://github.com/annurdien/cok/releases/download/v0.1.0/cok-x86_64-apple-darwin.tar.gz"
    sha256 "28a61b9c87e79f0f18a64dfdcf2f44f231609a1e44942944e9e8decc929a4ea1"
  end

  def install
    bin.install "cok"
  end

  test do
    system "#{bin}/cok", "--help"
  end
end