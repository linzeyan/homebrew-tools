# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.156.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.156.0/apitool-v0.156.0-x86_64-apple-darwin.tar.gz"
      sha256 "437d9cd7b951fe4f2ec5d868a7b770e7e444c24036e3c9017b799b16de150279"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.156.0/apitool-v0.156.0-aarch64-apple-darwin.tar.gz"
      sha256 "07e25bf119b5a38a673091b55cc99d1cab83f973a03b3082c93baf658eef3b46"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.156.0/apitool-v0.156.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea5e92ba61300f9187e241d4eae39d183327868b3de50b8d98b97bcb20a173eb"

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
