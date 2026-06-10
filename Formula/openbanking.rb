# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.3/openbanking_0.2.3_darwin_arm64.tar.gz"
      sha256 "af902cac22625160f07236bdf85a0d6661a2ab64a8aca582373ae8a231720e4f"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.3/openbanking_0.2.3_darwin_amd64.tar.gz"
      sha256 "d4fe79e349eb8303b9d3aa2eaa39e415944fa57ece9d58147341740ba27c03c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.3/openbanking_0.2.3_linux_arm64.tar.gz"
      sha256 "dfff007dc24f3e577fbcf1ee17bfc6eced1ac5243f6dad9474673bf24625ae8a"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.3/openbanking_0.2.3_linux_amd64.tar.gz"
      sha256 "d166c5a596ba31f4b0f70f77a86de6fb4535008cb6fde538aafd85a28335de31"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
