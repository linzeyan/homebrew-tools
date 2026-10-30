# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.158.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.158.0/apitool-v0.158.0-x86_64-apple-darwin.tar.gz"
      sha256 "44347a8ece3bba3b26f6630e3bf931255839c91903068db9ec3db420825a1b9d"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.158.0/apitool-v0.158.0-aarch64-apple-darwin.tar.gz"
      sha256 "8622c55af0364bd534bc3bd4e85ff8e6598c0f7321b08e1b67f549e8c0b5d8cf"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.158.0/apitool-v0.158.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "efa618812c42b1e7b2153df3b64b1d3620d6b97340d8c2273e3ba82c4caacde1"

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
