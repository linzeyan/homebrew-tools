# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.112.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.112.3/apitool-v0.112.3-x86_64-apple-darwin.tar.gz"
      sha256 "696fdd8a21444835ddbb4adb9b90356d40547dc13f0644775e891f6392b73cd5"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.112.3/apitool-v0.112.3-aarch64-apple-darwin.tar.gz"
      sha256 "3a0aa8b155fd50fd3e4457ea6f5a5ce246ee9d73d60634a10de18be50112d52d"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.112.3/apitool-v0.112.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "060e0c1c167c0c3122c4b455a4587b9596bf478885b5dfadf335171d95010d3f"

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
