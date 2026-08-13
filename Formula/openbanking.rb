# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.16/openbanking_0.2.16_darwin_arm64.tar.gz"
      sha256 "a4b5f4977c3ae20a7ca3ff64c16b17f230fd0cfabf01a5f25a04978c99d6eda8"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.16/openbanking_0.2.16_darwin_amd64.tar.gz"
      sha256 "16f7e19c8b6e6ea1268785135a9cdc4d556bfc7c87966d4f29ba1175625534db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.16/openbanking_0.2.16_linux_arm64.tar.gz"
      sha256 "58d0749f7c75cfae7f0bae6d34bb71f33f0b20efe3353b75daf2d74ca3a9ce32"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.16/openbanking_0.2.16_linux_amd64.tar.gz"
      sha256 "823e774ff30969b506994c2546e68b38da0d5ef5d9a59d2d7c7257562ad15e59"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
