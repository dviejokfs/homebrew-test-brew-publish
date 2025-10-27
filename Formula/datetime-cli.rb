class DatetimeCli < Formula
  desc "A simple CLI tool to print the current date and time"
  homepage "https://github.com/dviejokfs/test-brew-publish"
  version "0.0.4"

  if Hardware::CPU.intel?
    url "https://github.com/dviejokfs/test-brew-publish/releases/download/v0.0.4/datetime-cli-x86_64-apple-darwin.tar.gz"
    sha256 "3146fbb9fcb13fb5bdd8055a644c81f92a106b195e7a16fbf64ddc295073af60"
  else
    url "https://github.com/dviejokfs/test-brew-publish/releases/download/v0.0.4/datetime-cli-aarch64-apple-darwin.tar.gz"
    sha256 "12166df1359215a36bda105535033f8cb01eeb949037ed0e2443de25affc76ab"
  end

  def install
    bin.install "datetime-cli"
  end

  test do
    system "#{bin}/datetime-cli"
  end
end
