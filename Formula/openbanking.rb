# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.21/openbanking_0.2.21_darwin_arm64.tar.gz"
      sha256 "e6a24bc019a08a888b1e7aaa90577ef428a507f978f6dc07fbdbe7f78a751900"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.21/openbanking_0.2.21_darwin_amd64.tar.gz"
      sha256 "e1f5754ea525cfb1f42650faa890af3aa68b54440bd33e70dc62dc7124617a91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.21/openbanking_0.2.21_linux_arm64.tar.gz"
      sha256 "1e88e10a966f2df7271217dd33758d695ae1dbe2bfdc8aaeb67f5e146b77073c"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.21/openbanking_0.2.21_linux_amd64.tar.gz"
      sha256 "14718f496ad6cae495e44e7c1633418e68ffc7d4beafdafc20bd1bd044ebdab3"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
