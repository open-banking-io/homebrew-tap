# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.13/openbanking_0.2.13_darwin_arm64.tar.gz"
      sha256 "60594a02595b90f5679f23bcbfe8d42efaa4b19757edfc48325415cacf5ab72c"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.13/openbanking_0.2.13_darwin_amd64.tar.gz"
      sha256 "f56597b32eea9abe797bc547a0d9a697e604aa5e91334130a480f68dda94c696"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.13/openbanking_0.2.13_linux_arm64.tar.gz"
      sha256 "6eb92e0fc621046b6b3a5b6ff981dddb862135bb5a60d589beede21dbe8b1234"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.13/openbanking_0.2.13_linux_amd64.tar.gz"
      sha256 "7542b91e41c846309225142e6344d976f775aff9c41f21a04b63695a8cdd6c59"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
