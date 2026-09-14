# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.18/openbanking_0.2.18_darwin_arm64.tar.gz"
      sha256 "43e08e005414e95d730c1d07db7907ebf752d219b534499293b66254b963d389"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.18/openbanking_0.2.18_darwin_amd64.tar.gz"
      sha256 "4c67f6cfebde005f8e14ea700196bfef91a2f11bad9c72773a512da6d8af37b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.18/openbanking_0.2.18_linux_arm64.tar.gz"
      sha256 "e88b32287a0dd7ffad0c7b653b692bae44bc6d95c4bdf8ea5fb57feabffd52c3"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.18/openbanking_0.2.18_linux_amd64.tar.gz"
      sha256 "f98bab8218591361b28285fd3fcf131e5a61e0556bb50e9f2c074e5b04ae8038"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
