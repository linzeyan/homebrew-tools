# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.111.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.111.0/apitool-v0.111.0-x86_64-apple-darwin.tar.gz"
      sha256 "2319311423b642243c2bbb2394d49d64ceae19f4822216caa0c22a0030bd4dec"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.111.0/apitool-v0.111.0-aarch64-apple-darwin.tar.gz"
      sha256 "ecd4913f0fee2004745ea37ae261438e1e7620096484732f9aa5b8a704b65dfd"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.111.0/apitool-v0.111.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d7da5c1e127340e64343ee9764e4db3ab271f1db8474d2d20c145601f5bc66b5"

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
