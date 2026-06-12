# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.6/openbanking_0.2.6_darwin_arm64.tar.gz"
      sha256 "b40df864082629db14b0bfd27edeec2058324b0de41b4135587bc538db93d797"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.6/openbanking_0.2.6_darwin_amd64.tar.gz"
      sha256 "4b4fa25814affe1d3aac9c4d81b2979ec5f5ced05eaa9d6034869b82f5485407"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.6/openbanking_0.2.6_linux_arm64.tar.gz"
      sha256 "6765684ad59fa88e0c037f6e38f10e3c0465ed7eaf5f97d95a8623ca478b5614"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.6/openbanking_0.2.6_linux_amd64.tar.gz"
      sha256 "a9a9aa7cd4064caf4dc12faac60bf8c83a5e7d5185703fff0e0d63b4e5b35fd6"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
