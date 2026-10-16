# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.148.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.148.0/apitool-v0.148.0-x86_64-apple-darwin.tar.gz"
      sha256 "8942ebc8461b17f258cbe2a57392ebdc648c4470709dd3e98240e3bb4bc06049"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.148.0/apitool-v0.148.0-aarch64-apple-darwin.tar.gz"
      sha256 "82abd4f788d2cb93eb6427513d40fe123eab3d3f0d15a46fe942baf6f8d0f3de"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.148.0/apitool-v0.148.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "77e5d3854109abb82ddd0b839e5719d9bfde726813813615b761a411cea8db5f"

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
