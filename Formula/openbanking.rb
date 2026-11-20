# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.19/openbanking_0.2.19_darwin_arm64.tar.gz"
      sha256 "c954a95be9330220367cdddada9dfe67c842e769bb4e72a194fd86af98e9c754"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.19/openbanking_0.2.19_darwin_amd64.tar.gz"
      sha256 "99dde8953ddcd8a436755c01bf9b79795b4ae2c99a72044b6367bf5131703333"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.19/openbanking_0.2.19_linux_arm64.tar.gz"
      sha256 "537f3ca4394af5f08316287d1e8cb03754db2185f9dbb8d788e158e3c0b44476"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.19/openbanking_0.2.19_linux_amd64.tar.gz"
      sha256 "d87cbad5b316cc252c51f75a6bddcce80a695a52ebbdd0f93a013ef71a24e17e"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
