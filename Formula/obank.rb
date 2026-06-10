# typed: false
# frozen_string_literal: true
class Obank < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.1.0/obank_0.1.0_darwin_arm64.tar.gz"
      sha256 "8ed71067e8fbafc282a7c06e5a78e7a5a245c227f947d57aefa139f851d00d3e"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.1.0/obank_0.1.0_darwin_amd64.tar.gz"
      sha256 "f7dbbcc0fbe27bb4bebc99959c13ad3951507a2b530ce56fa1c00c49818726f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.1.0/obank_0.1.0_linux_arm64.tar.gz"
      sha256 "bd25e0070a1896d1b3c402573140c94ebfea5e543e5d473f65f8042f34c3c11b"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.1.0/obank_0.1.0_linux_amd64.tar.gz"
      sha256 "5424639bce17f91b8a195a799dfb7efacd2ee27fab68056ea1e51a9bbee684ec"
    end
  end

  def install
    bin.install "obank"
  end

  test do
    system "#{bin}/obank", "version"
  end
end
