# typed: false
# frozen_string_literal: true
class Obank < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.0/obank_0.2.0_darwin_arm64.tar.gz"
      sha256 "c00f3941e0db2a39f2a1ed092d1f0cc94f1606c688a45e90ed9d09a75b38a482"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.0/obank_0.2.0_darwin_amd64.tar.gz"
      sha256 "489263c7667905ef719645e1d6d27c071621c15b1a6cc03f49147dc733ba817f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.0/obank_0.2.0_linux_arm64.tar.gz"
      sha256 "de629b111821a38c1c5351744db48eef2c4b342acfd9f3a73f840f8becd83498"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.0/obank_0.2.0_linux_amd64.tar.gz"
      sha256 "9d30259763489c5611ee66dfbdafbfc055526dc185c6a1555cdb9711caa0bf44"
    end
  end

  def install
    bin.install "obank"
  end

  test do
    system "#{bin}/obank", "version"
  end
end
