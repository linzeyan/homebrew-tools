# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.119.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.119.0/apitool-v0.119.0-x86_64-apple-darwin.tar.gz"
      sha256 "b87af290290335a7ce5019577fe78eccea1f4a4e9beabf4ad12522793e241d40"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.119.0/apitool-v0.119.0-aarch64-apple-darwin.tar.gz"
      sha256 "3c131274a7ea9ba81275956e6c075a8da723890f511627046fbe269a2b312787"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.119.0/apitool-v0.119.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82059ee9c2b823618d9cf35183b29607ac265a1a56b9e6bf9941f53f44a8d874"

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
