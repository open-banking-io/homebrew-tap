# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.17/openbanking_0.2.17_darwin_arm64.tar.gz"
      sha256 "c003edfd444265eb427ba52374a0647e9e906155df6e91bf5a815b88327a8bcb"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.17/openbanking_0.2.17_darwin_amd64.tar.gz"
      sha256 "fadbccde7d17ee86ef5d5190002fed55eba4717c01ca017bf66db8184b5d0c07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.17/openbanking_0.2.17_linux_arm64.tar.gz"
      sha256 "652075aa601c028cb113ea030b4395b0f220495db10931b8d1347256911399b6"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.17/openbanking_0.2.17_linux_amd64.tar.gz"
      sha256 "bae3db8f4ecc4fa75d91c7e373e5c946bc79299f0df4a0d12b930af9e5ef8d27"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
