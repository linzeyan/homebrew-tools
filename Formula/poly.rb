# typed: false
# frozen_string_literal: true

class Poly < Formula
  desc "Lint and format CLI for 30+ languages, shared with the poly VSCode extension"
  homepage "https://github.com/linzeyan/vscode-syntax"
  version "0.21.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.7/poly-darwin-x64"
      sha256 "d84f68eff5059f0941c9891a2ac6a8da16f4a3086cc4e1499989e1e8f7335a56"

      def install
        bin.install "poly-darwin-x64" => "poly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.7/poly-darwin-arm64"
      sha256 "87f6d4000d3b0f7d01332c1e476894433a2ffbe9a29313208392d6a2dd133392"

      def install
        bin.install "poly-darwin-arm64" => "poly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.7/poly-linux-x64"
      sha256 "47fe6f7a33d43e26bc9b355de5c94faa2f1719085aa012eede61c2d25821ff39"

      def install
        bin.install "poly-linux-x64" => "poly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.7/poly-linux-arm64"
      sha256 "a981f381ebe9a065e86ecf9ffea6d753aefb679c38d8548c58ec9400c08770b9"

      def install
        bin.install "poly-linux-arm64" => "poly"
      end
    end
  end
end
