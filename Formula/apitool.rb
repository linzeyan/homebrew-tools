# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.160.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.160.1/apitool-v0.160.1-x86_64-apple-darwin.tar.gz"
      sha256 "f6dfca9fcfff1882aa88773fa8ee5762a9c6d1798f46a530df8a09efe42ba9b6"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.160.1/apitool-v0.160.1-aarch64-apple-darwin.tar.gz"
      sha256 "a3444d877e273e5375c2b356ba725575ea3b369bb41ab48dcaa4943a001565d8"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.160.1/apitool-v0.160.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "09e31a1bf1f5358d4c68a283098f047ff3c68e8faa1792e78c6a70843fc3971d"

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
