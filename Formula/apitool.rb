# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.162.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.162.0/apitool-v0.162.0-x86_64-apple-darwin.tar.gz"
      sha256 "d612888cf941bbd69a8c0545836938360d96e3947ff5c0397d31b6f3d383b96d"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.162.0/apitool-v0.162.0-aarch64-apple-darwin.tar.gz"
      sha256 "d70ad14148e95b3f564d2e978ac8932ba8a52d9cfa6156e93ac5556466a7e996"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.162.0/apitool-v0.162.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9747b19e8eecdd9c387ea13279ec9148994581887c921196d3f95bcbcfd03fa"

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
