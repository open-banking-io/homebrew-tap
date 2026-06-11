# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.5/openbanking_0.2.5_darwin_arm64.tar.gz"
      sha256 "e636aaf35735eb14d10d7927dfb57f5d1ee43f3cbd39c47c8d76a343a2807019"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.5/openbanking_0.2.5_darwin_amd64.tar.gz"
      sha256 "8746596eba10fad918752346ce0dfc2def8474763f066126f38d4733cda5af72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.5/openbanking_0.2.5_linux_arm64.tar.gz"
      sha256 "1d36b0e6e7fe27d009b355e1c343d890e04501c0e47952a5daf16f98e6ced455"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.5/openbanking_0.2.5_linux_amd64.tar.gz"
      sha256 "cc0be3e0de82b221caadb749d76e8f8b39bb193556a59cb146e05cf9b183f1c3"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
