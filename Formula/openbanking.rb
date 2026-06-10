# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.2/openbanking_0.2.2_darwin_arm64.tar.gz"
      sha256 "7b8472df09cded4e1742b087db33cca91e89a5c7d21815e15ae590f914217da4"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.2/openbanking_0.2.2_darwin_amd64.tar.gz"
      sha256 "a7ec06180dbbb7d9d1cfc48b04b1e0917fc822f16c8e6e7f3253811c73f65cd6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.2/openbanking_0.2.2_linux_arm64.tar.gz"
      sha256 "ab0cba152d1be1307f4d49fab7c37d1283d66c75a46bad58cbe4212b1f5fc2bf"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.2/openbanking_0.2.2_linux_amd64.tar.gz"
      sha256 "8d67463ad9ce78d22cd57f2d1cf5b979f10580f5064baadb9fbc9de9fdfafbf6"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
