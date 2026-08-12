# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.15/openbanking_0.2.15_darwin_arm64.tar.gz"
      sha256 "9aeb27ede5f8b6ff96e09915fda023d936d6b0ae2447b658876f9c40a4d034b0"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.15/openbanking_0.2.15_darwin_amd64.tar.gz"
      sha256 "1649b395aea719e35dec10131d399546b7a192f7a9f2d65c4d1f71f82979ce19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.15/openbanking_0.2.15_linux_arm64.tar.gz"
      sha256 "c66dd47d58cbc783340b7e87c77393e97183a2de944d4752a141e2dd2085c5c5"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.15/openbanking_0.2.15_linux_amd64.tar.gz"
      sha256 "a64bf5914816e287820b006b39ff4d3c52bd340459c60540dff3d2541ce1e56e"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
