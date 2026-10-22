# typed: false
# frozen_string_literal: true

class Poly < Formula
  desc "Lint and format CLI for 30+ languages, shared with the poly VSCode extensions"
  homepage "https://github.com/linzeyan/vscode-syntax"
  version "0.19.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.19.0/poly-darwin-x64"
      sha256 "dea6d1d168cdd3c6a217831b5cbe0a44dfacb5f15a7556af8a71c5a0900caa25"

      def install
        bin.install "poly-darwin-x64" => "poly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.19.0/poly-darwin-arm64"
      sha256 "b0a2aa11e331ff04bf4206dac9d624efb4e90b5b6023943120ea816ee9f58411"

      def install
        bin.install "poly-darwin-arm64" => "poly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.19.0/poly-linux-x64"
      sha256 "c0bf27e8cb849af4d914f16a76ba4bbf7235afa3c0e5995fd30fba8158a0b35b"

      def install
        bin.install "poly-linux-x64" => "poly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.19.0/poly-linux-arm64"
      sha256 "ce682c91199d87f81fbf50643d53d6ab1f3b2e02ef7400bee4908e804f133a7d"

      def install
        bin.install "poly-linux-arm64" => "poly"
      end
    end
  end
end
