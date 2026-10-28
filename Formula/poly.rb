# typed: false
# frozen_string_literal: true

class Poly < Formula
  desc "Lint and format CLI for 30+ languages, shared with the poly VSCode extensions"
  homepage "https://github.com/linzeyan/vscode-syntax"
  version "0.19.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.19.2/poly-darwin-x64"
      sha256 "b10269d382c08cd9c4a7cff87433fc259702fb9d79579e9b6f509e915f1442c2"

      def install
        bin.install "poly-darwin-x64" => "poly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.19.2/poly-darwin-arm64"
      sha256 "267a615b93dac6bba77e65d5aa94e3b4c0f6b5cfbfa0397b89e5f57fff24a4dd"

      def install
        bin.install "poly-darwin-arm64" => "poly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.19.2/poly-linux-x64"
      sha256 "5b35f4e2a92f2a312f370a57deac42cac10e456070cafb1f9f07a17be3c5aabe"

      def install
        bin.install "poly-linux-x64" => "poly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.19.2/poly-linux-arm64"
      sha256 "67335e71774c3fc2878d41091f575fae9a353d6a5340c8033f0524ae4ec1db6e"

      def install
        bin.install "poly-linux-arm64" => "poly"
      end
    end
  end
end
