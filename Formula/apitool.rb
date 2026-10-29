# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.157.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.157.1/apitool-v0.157.1-x86_64-apple-darwin.tar.gz"
      sha256 "e494958f6cb440614ed3873f2986c6cdeb907111de2ff0d0f48fd812d5d6480e"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.157.1/apitool-v0.157.1-aarch64-apple-darwin.tar.gz"
      sha256 "61523253df6b606247532f82a1eb3e8924d42911bfca4c8a9d2cb85cb968d400"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.157.1/apitool-v0.157.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da7d4a0c08a1a500329c3b332e80cfc2a018caef958177d76b59fcc3acb45318"

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
