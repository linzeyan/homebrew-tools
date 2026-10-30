# typed: false
# frozen_string_literal: true

class Poly < Formula
  desc "Lint and format CLI for 30+ languages, shared with the poly VSCode extensions"
  homepage "https://github.com/linzeyan/vscode-syntax"
  version "0.20.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.20.0/poly-darwin-x64"
      sha256 "77384b889795d257971cd74eb67d0695b39e912da6fc8c143ed1507fb1849173"

      def install
        bin.install "poly-darwin-x64" => "poly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.20.0/poly-darwin-arm64"
      sha256 "31543772ff77f9550db9f8ef4c0ef6be4f8711af54c6218ea9057378e9e37e8f"

      def install
        bin.install "poly-darwin-arm64" => "poly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.20.0/poly-linux-x64"
      sha256 "488775ac4057919798de7734438ca50ab849fb762162e938278fc103b7635cfb"

      def install
        bin.install "poly-linux-x64" => "poly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.20.0/poly-linux-arm64"
      sha256 "92b26473f6bbf5c1c16bf64c4cb93de9f5366d0db330d910db46cc5a5d0f0930"

      def install
        bin.install "poly-linux-arm64" => "poly"
      end
    end
  end
end
