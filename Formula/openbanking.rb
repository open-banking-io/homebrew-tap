# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.14/openbanking_0.2.14_darwin_arm64.tar.gz"
      sha256 "a3af075f364c397b38ee2f109e4b3d93cbe9b9f3cc6a8f743513f50db28f8c5c"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.14/openbanking_0.2.14_darwin_amd64.tar.gz"
      sha256 "ad4252dc50711b7799658d3cb541c503c5e62413cea3fd997523002882cb2720"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.14/openbanking_0.2.14_linux_arm64.tar.gz"
      sha256 "ac6afc367852a0133bf98e7c4b270d6ce93cf4d4910f0f868cbce5ecbcf9aea6"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.14/openbanking_0.2.14_linux_amd64.tar.gz"
      sha256 "4c8415ddf561c865cdd2b049dc2a70ddc07febc6ce3276ac3e640d4fb692d9c2"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
