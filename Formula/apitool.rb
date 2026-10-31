# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.159.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.159.0/apitool-v0.159.0-x86_64-apple-darwin.tar.gz"
      sha256 "0ca0945c2fcaa678f1180b2f3914b3cd690a40037978b0ec82ea13c77f262268"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.159.0/apitool-v0.159.0-aarch64-apple-darwin.tar.gz"
      sha256 "8d5e944ba3dbe064648f1e0b7e9cb8f1eea4892d3f0346168719e1a91e6dc295"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.159.0/apitool-v0.159.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f784fa4571ed91724e637b4225aa328256d9bf02c7aa927762928e874377919e"

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
