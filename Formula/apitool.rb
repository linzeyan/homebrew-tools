# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.116.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.116.1/apitool-v0.116.1-x86_64-apple-darwin.tar.gz"
      sha256 "2211b58c0de44edd1be3160863ca82f52ee9501020200c2b709d967eb37a73e6"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.116.1/apitool-v0.116.1-aarch64-apple-darwin.tar.gz"
      sha256 "bd93170da2ae0b7e467673e317cb37f2c95f00a2d711a7b61bc95bf65d1d4862"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.116.1/apitool-v0.116.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64e8eb1fd0a70896e01a73e038cca41c464b17805410122edf023ad9c881ed0c"

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
