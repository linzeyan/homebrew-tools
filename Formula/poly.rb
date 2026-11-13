# typed: false
# frozen_string_literal: true

class Poly < Formula
  desc "Lint and format CLI for 30+ languages, shared with the poly VSCode extension"
  homepage "https://github.com/linzeyan/vscode-syntax"
  version "0.21.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.6/poly-darwin-x64"
      sha256 "863e0da73a002fc58947601587e0166356ebade6f63ed5f9d8e54af9700c34d6"

      def install
        bin.install "poly-darwin-x64" => "poly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.6/poly-darwin-arm64"
      sha256 "c5c25ce33ef18dbe8398d4e58d3ea9b64e7ad363ed0a7647fb8d7cee98b820d4"

      def install
        bin.install "poly-darwin-arm64" => "poly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.6/poly-linux-x64"
      sha256 "cdc0063f1f344f7defc5e9afe140978b3e57c08a07a660ca280e636280c4fb89"

      def install
        bin.install "poly-linux-x64" => "poly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.6/poly-linux-arm64"
      sha256 "233b7802a010abd5c8aae9f1d5f4db2add8c5be940f47862af31cd7ef9d57d9d"

      def install
        bin.install "poly-linux-arm64" => "poly"
      end
    end
  end
end
