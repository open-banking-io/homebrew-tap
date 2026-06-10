# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.1/openbanking_0.2.1_darwin_arm64.tar.gz"
      sha256 "bc9f6864d58cce22f71e09e8c9ed6ce9096c372d5652c99cf84b7cce899ac143"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.1/openbanking_0.2.1_darwin_amd64.tar.gz"
      sha256 "2f58da3c9a73a9b4e71cde7d79ca9e6eab674d3b5945e9aac79d8281ce905a91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.1/openbanking_0.2.1_linux_arm64.tar.gz"
      sha256 "c28f449c43173c06b3ec393050a7a7ed725665828f392aa56390ed6ab031fe3d"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.1/openbanking_0.2.1_linux_amd64.tar.gz"
      sha256 "e86ab83a1212f220716d5a8409e2c3fe1d9e5eadde07c07f46667d2cc4667290"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
