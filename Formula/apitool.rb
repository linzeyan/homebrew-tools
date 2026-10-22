# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.154.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.154.0/apitool-v0.154.0-x86_64-apple-darwin.tar.gz"
      sha256 "fe06d5e1e7c63cd45468aeb54d080aad17a3c7836ad8de2973d2cc5480fea511"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.154.0/apitool-v0.154.0-aarch64-apple-darwin.tar.gz"
      sha256 "8ffc203d74b054193f2135d3d79dbafebf429ae2ec42a21162a36e76290fe58c"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.154.0/apitool-v0.154.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "153b8a18e7c0e1d2194cc1e7a915f98389bac6cb6221944dcffdf10d8d5a2c35"

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
