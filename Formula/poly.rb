# typed: false
# frozen_string_literal: true

class Poly < Formula
  desc "Lint and format CLI for 30+ languages, shared with the poly VSCode extension"
  homepage "https://github.com/linzeyan/vscode-syntax"
  version "0.21.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.2/poly-darwin-x64"
      sha256 "74adf4e5f3014551575733a3c2324146e4157e16a9dfd0032dc483b4b7210d76"

      def install
        bin.install "poly-darwin-x64" => "poly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.2/poly-darwin-arm64"
      sha256 "425eed2ccfdd56078113250055902d7c049eb0d2b3a13497983429ac1c95c6af"

      def install
        bin.install "poly-darwin-arm64" => "poly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.2/poly-linux-x64"
      sha256 "c3595edb40907a95e88d0d1657b6bb12b86053d5f15c42bac9a765c3a342ff37"

      def install
        bin.install "poly-linux-x64" => "poly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.2/poly-linux-arm64"
      sha256 "011b3e3240af5f680baf4891ed98c21a7cb17241505fc6851bb81e32b5a9a382"

      def install
        bin.install "poly-linux-arm64" => "poly"
      end
    end
  end
end
