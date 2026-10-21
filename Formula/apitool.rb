# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.152.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.152.0/apitool-v0.152.0-x86_64-apple-darwin.tar.gz"
      sha256 "ab8dded8a32f28b4eaf5ed6f18a68d2e0763b9892b6e0d34deea86797e4f1a21"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.152.0/apitool-v0.152.0-aarch64-apple-darwin.tar.gz"
      sha256 "d872014c9dcead6c2a5924fb8a6fb4d8500d93e1c8ad23b2ff8dc9b541759677"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.152.0/apitool-v0.152.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e655c3ccd60041815fa878e35b70afad08b14035dcf955d1ade65d57dc441e5"

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
