# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.162.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.162.1/apitool-v0.162.1-x86_64-apple-darwin.tar.gz"
      sha256 "32be079a8216b5b03d2f26b31aba4368e49ed840f1e1b4cdf2b27f64f3c77ad3"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.162.1/apitool-v0.162.1-aarch64-apple-darwin.tar.gz"
      sha256 "62e0ee664d56d2297e4098244bb3ab1aa1058f9a2d6c89111927ce9a31fb71b2"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.162.1/apitool-v0.162.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "11d51db66a8bc1de23b4c1828e887d0a5588ff93ff818a335d8a08751b8d549d"

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
