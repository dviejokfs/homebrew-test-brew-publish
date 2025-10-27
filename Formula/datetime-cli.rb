class DatetimeCli < Formula
  desc "A simple CLI tool to print the current date and time"
  homepage "https://github.com/yourusername/datetime-cli"
  version "0.1.0"

  if Hardware::CPU.intel?
    url "https://github.com/yourusername/datetime-cli/releases/download/v0.1.0/datetime-cli-x86_64-apple-darwin.tar.gz"
    sha256 "REPLACE_WITH_INTEL_SHA256"
  else
    url "https://github.com/yourusername/datetime-cli/releases/download/v0.1.0/datetime-cli-aarch64-apple-darwin.tar.gz"
    sha256 "REPLACE_WITH_ARM_SHA256"
  end

  def install
    bin.install "datetime-cli"
  end

  test do
    system "#{bin}/datetime-cli"
  end
end
