# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.161.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.161.0/apitool-v0.161.0-x86_64-apple-darwin.tar.gz"
      sha256 "fec08815dc4dafa4f6d09df5f50843f60f2fd5d7e17087ba076a4e75f86dcf27"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.161.0/apitool-v0.161.0-aarch64-apple-darwin.tar.gz"
      sha256 "11ff94aeaf8bdf5796ad5129b190025b4f86ca72ea8cf196fd0128736cc6127b"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.161.0/apitool-v0.161.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ca95f250c40a3be9b83b5b61079609a56cd42fb69487eb210f31cf1eb4d8995"

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
