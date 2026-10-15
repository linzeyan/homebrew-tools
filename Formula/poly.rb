# typed: false
# frozen_string_literal: true

class Poly < Formula
  desc "Lint and format CLI for 30+ languages, shared with the poly VSCode extensions"
  homepage "https://github.com/linzeyan/vscode-syntax"
  version "0.18.22"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.18.22/poly-darwin-x64"
      sha256 "07dc4c4b80f739b7abfe6c140fb40329e65ae48dc3e6fdb24746ab75cdebb957"

      def install
        bin.install "poly-darwin-x64" => "poly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.18.22/poly-darwin-arm64"
      sha256 "7c337db9b14e9889f0a03930120207859eebba9ecde5c9617f4426d68f77a84d"

      def install
        bin.install "poly-darwin-arm64" => "poly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.18.22/poly-linux-x64"
      sha256 "2ac0d16a365349154900274a23d708d15d54a5fe4764b3388d2ce28cd55255f9"

      def install
        bin.install "poly-linux-x64" => "poly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.18.22/poly-linux-arm64"
      sha256 "2614b3ff52a58e83c64cf6aa8613bc1b0f3433d3a263f4c26351ebf7b3dfa9da"

      def install
        bin.install "poly-linux-arm64" => "poly"
      end
    end
  end
end
