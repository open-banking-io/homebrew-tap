# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.7/openbanking_0.2.7_darwin_arm64.tar.gz"
      sha256 "3114e47fe43824eba80a99c24aec86a789fc0d63715d2c95f87cbe9476988aa1"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.7/openbanking_0.2.7_darwin_amd64.tar.gz"
      sha256 "0a0519e6f4f112be2a294dc6a3c3cefa842c92c3b537926a2770c56e8e39dc03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.7/openbanking_0.2.7_linux_arm64.tar.gz"
      sha256 "28336f9627bbdae6a462de69ac59af7ecb1d15a464169a3d7b76287be2e4b9c7"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.7/openbanking_0.2.7_linux_amd64.tar.gz"
      sha256 "bb734234de1cc5dda91685bff3c2b803d0dcb1428fd025c68fcbb966bd50f78c"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
