# typed: false
# frozen_string_literal: true

class Poly < Formula
  desc "Lint and format CLI for 30+ languages, shared with the poly VSCode extensions"
  homepage "https://github.com/linzeyan/vscode-syntax"
  version "0.18.23"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.18.23/poly-darwin-x64"
      sha256 "c235c39b652ef56289cb0537101430cf9befe1e9f2655ee4755ea222973be1e9"

      def install
        bin.install "poly-darwin-x64" => "poly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.18.23/poly-darwin-arm64"
      sha256 "7f6911996a654a5bd00cee9e31dac20ea3c30f495156d80a47bb84973befb218"

      def install
        bin.install "poly-darwin-arm64" => "poly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.18.23/poly-linux-x64"
      sha256 "47fd0993821507f26793a545a4da775910e06e04b7fdefa9da2e2cab10b09686"

      def install
        bin.install "poly-linux-x64" => "poly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.18.23/poly-linux-arm64"
      sha256 "5bfd58ee168428b2eac7084263af58dbfecd338a5fa738745c0c81b88b2ccb0c"

      def install
        bin.install "poly-linux-arm64" => "poly"
      end
    end
  end
end
