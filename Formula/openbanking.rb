# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.11/openbanking_0.2.11_darwin_arm64.tar.gz"
      sha256 "e3907053fe6d1012c14ec7d52719192eac1c4bf90b7d5f6db084a99e00455e39"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.11/openbanking_0.2.11_darwin_amd64.tar.gz"
      sha256 "27927ac392c8b775ddcbbc59adb8b46e9e147c4ce904e22fc061373be9bf55c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.11/openbanking_0.2.11_linux_arm64.tar.gz"
      sha256 "03c44c9c8808c0460ad428dbfd7106e08aa0f6531cbc4e5ca7ea18efed7ff454"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.11/openbanking_0.2.11_linux_amd64.tar.gz"
      sha256 "4be13e7f021f62d44616f28988eb82f6f280d30159575a0bb3c660787aecaa17"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
