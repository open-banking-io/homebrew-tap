# typed: false
# frozen_string_literal: true
class Openbanking < Formula
  desc "open-banking.io command line — read, sync and connect your bank data locally"
  homepage "https://open-banking.io"
  version "0.2.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.20/openbanking_0.2.20_darwin_arm64.tar.gz"
      sha256 "d610af572cc4f561760e531de65ae99211cc4de031b2c1d11e2e20d28484af2f"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.20/openbanking_0.2.20_darwin_amd64.tar.gz"
      sha256 "d63007bca4e3a87a7a91e9cad111172e4a21bbff82765a99608a15ea8c87929e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.20/openbanking_0.2.20_linux_arm64.tar.gz"
      sha256 "f6925a1d6de461d42e016bc7c744a662485775ba68b266cf19dbffadb1196d84"
    end
    on_intel do
      url "https://github.com/open-banking-io/clients/releases/download/cli/v0.2.20/openbanking_0.2.20_linux_amd64.tar.gz"
      sha256 "d07f865364a99969543e7cd311047bbd56f50b686ac3cada4f85340776f20f91"
    end
  end

  def install
    bin.install "openbanking"
  end

  test do
    system "#{bin}/openbanking", "version"
  end
end
