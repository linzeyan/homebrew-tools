# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.149.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.149.0/apitool-v0.149.0-x86_64-apple-darwin.tar.gz"
      sha256 "a0b7e25d4c04230f218f31bd6b484f27077166300fb25768d70f48e3fe379d0b"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.149.0/apitool-v0.149.0-aarch64-apple-darwin.tar.gz"
      sha256 "959255f41a863dbf10bca968843c36e88406b0a8cac765f3bd25c296bfd5da90"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.149.0/apitool-v0.149.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4451ce21da214b4d81a2738efedcba94791246ebb058cabd56547227f825c13f"

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
