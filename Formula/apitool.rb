# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.150.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.150.1/apitool-v0.150.1-x86_64-apple-darwin.tar.gz"
      sha256 "d655125833347df56a43065e1f82981eb46aad1e39b47c4461e1dbda4f1fd46b"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.150.1/apitool-v0.150.1-aarch64-apple-darwin.tar.gz"
      sha256 "3888da5844be9e1db27f0b65c197138f37c5f2e04aa961542ba8281e704930f0"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.150.1/apitool-v0.150.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e545bf2d86a89bda44d11b0535de1bd95a77689356fafaebae0b137163d88343"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  def caveats
    <<~EOS
      apitool updates itself in place, which bypasses Homebrew.
      Set Settings > Updates to "never" and upgrade with:
        brew upgrade apitool
    EOS
  end
end
