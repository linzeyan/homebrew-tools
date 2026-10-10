# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.112.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.112.1/apitool-v0.112.1-x86_64-apple-darwin.tar.gz"
      sha256 "a9932317eb2fc1337f18b6de61e321a88a29aa4c4e878018ac07c54d7fbc4da7"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.112.1/apitool-v0.112.1-aarch64-apple-darwin.tar.gz"
      sha256 "c9a497730a25718b8c59e15b904438a3f0de2fada1d1e2fd5d39751d6de1f650"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.112.1/apitool-v0.112.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce049b9bc246e1e4dabdef399ffc809d46b20ee57217c115047aeffe07603ed6"

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
