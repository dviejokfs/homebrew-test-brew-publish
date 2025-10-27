class DatetimeCli < Formula
  desc "A simple CLI tool to print the current date and time"
  homepage "https://github.com/dviejokfs/homebrew-test-brew-publish"
  version "0.1.0"

  if Hardware::CPU.intel?
    url "https://github.com/dviejokfs/homebrew-test-brew-publish/releases/download/v0.1.0/datetime-cli-x86_64-apple-darwin.tar.gz"
    sha256 "1318b025c89d001ba5fd51bb687fdc77ea3f939b061e38c521277dc4a22f31f8"
  else
    url "https://github.com/dviejokfs/homebrew-test-brew-publish/releases/download/v0.1.0/datetime-cli-aarch64-apple-darwin.tar.gz"
    sha256 "652ea14c6bd3640faa286b1598a2ec213ed3c8b06f887f79fb6c0cc4abc5ef00"
  end

  def install
    bin.install "datetime-cli"
  end

  test do
    system "#{bin}/datetime-cli"
  end
end
