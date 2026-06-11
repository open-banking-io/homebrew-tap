# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.4/openbanking_0.2.4_darwin_arm64.tar.gz"
      sha256 "68875559570269d5c31a467df53bb7df6acda2fc6027693090cca124507864b1"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.4/openbanking_0.2.4_darwin_amd64.tar.gz"
      sha256 "3115ad955d10ca6f5b9fbf2bca421fd8b4889bface7259eca0e5b5e40e464e1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.4/openbanking_0.2.4_linux_arm64.tar.gz"
      sha256 "b2298a23a524fe7c278bd0316be0a0dacb7f3304abd2be7c0f14f15d10463fbb"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.4/openbanking_0.2.4_linux_amd64.tar.gz"
      sha256 "835fefcce74530c693c12aa0a44847cf0415d68da5b69633a16006c52dadcfe7"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
