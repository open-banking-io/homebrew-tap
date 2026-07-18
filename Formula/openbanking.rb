# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.12/openbanking_0.2.12_darwin_arm64.tar.gz"
      sha256 "c8086ffa0bfa4c449ce098cc45c5dbfe78d0fffb091086ef0b179ef536a02371"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.12/openbanking_0.2.12_darwin_amd64.tar.gz"
      sha256 "4971f03c0b114e9179308b0b2544494709eb331f2d882c44b8d99892a8f47478"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.12/openbanking_0.2.12_linux_arm64.tar.gz"
      sha256 "d2b4e67065106f3eff3524c3e89a7241325e3890ca2f09ab189f11aabf11d02e"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.12/openbanking_0.2.12_linux_amd64.tar.gz"
      sha256 "0d9d03fcbb0e881111ed45dd2a93d5b5979f5772cb429774f78a4c0874753ff8"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
