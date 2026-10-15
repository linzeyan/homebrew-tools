# typed: false
# frozen_string_literal: true

class Apitool < Formula
  desc "Small, portable Postman-style API client (GUI and CLI)"
  homepage "https://github.com/linzeyan/testing"
  version "0.142.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.142.0/apitool-v0.142.0-x86_64-apple-darwin.tar.gz"
      sha256 "949932c5ff27a4547df167f82365ebe030ff4cd8edd408b9929bcca57ec48529"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/testing/releases/download/v0.142.0/apitool-v0.142.0-aarch64-apple-darwin.tar.gz"
      sha256 "d023fd2b9ebe5a1042d04206cad7ee0a5e1357032e03ab3d20d1fe4d6346d7d4"

      def install
        bin.install "apitool", "apitool-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/testing/releases/download/v0.142.0/apitool-v0.142.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30b63660f7a57233f6587e21aa801f4c80f44b073bd2a58bbe6f15b5fa5a5dde"

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
