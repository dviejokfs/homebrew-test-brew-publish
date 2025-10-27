class DatetimeCli < Formula
  desc "A simple CLI tool to print the current date and time"
  homepage "https://github.com/dviejokfs/homebrew-test-brew-publish"
  version "0.0.5"

  if Hardware::CPU.intel?
    url "https://github.com/dviejokfs/homebrew-test-brew-publish/releases/download/v0.0.5/datetime-cli-x86_64-apple-darwin.tar.gz"
    sha256 "270a17c9a2371f4416cc031e2db0352c513452176e99c18167dc99616827ecdb"
  else
    url "https://github.com/dviejokfs/homebrew-test-brew-publish/releases/download/v0.0.5/datetime-cli-aarch64-apple-darwin.tar.gz"
    sha256 "14ed48280797e5f689e5e792e808580dd352559730d61cccd822e6e0877c5ac2"
  end

  def install
    bin.install "datetime-cli"
  end

  test do
    system "#{bin}/datetime-cli"
  end
end
