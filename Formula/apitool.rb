# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.161.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.161.1/apitool-v0.161.1-x86_64-apple-darwin.tar.gz"
      sha256 "cd8826556aa4db1058a4e684a23e19f51111bf371077beabbdf5f2e6e7f7c3e5"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.161.1/apitool-v0.161.1-aarch64-apple-darwin.tar.gz"
      sha256 "1b123007b1f4a25b9d3d9b01e55589273a8747c49297d1a29df3c7f5a39525ad"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.161.1/apitool-v0.161.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4129e474f31eb16fc356083dc47419d988a8ad5bd8b611ee5f36295c70963d81"

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
