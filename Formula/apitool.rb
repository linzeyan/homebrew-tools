# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.105.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.105.0/apitool-v0.105.0-x86_64-apple-darwin.tar.gz"
      sha256 "6f9b898ad95654f0e493a9dc496663b0fd5de7a282e992dd172eb0896df4688d"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.105.0/apitool-v0.105.0-aarch64-apple-darwin.tar.gz"
      sha256 "74457f0d647cd00f2fe96bdf605f341070facd05d22dc272cbfb2e0e09797cb6"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.105.0/apitool-v0.105.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe3a5c082bcb700bad0ba67d97d0ae33fd9e8354991b7883250be55f72063634"

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
