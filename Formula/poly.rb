# typed: false
# frozen_string_literal: true

class Poly < Formula
  desc "Lint and format CLI for 30+ languages, shared with the poly VSCode extension"
  homepage "https://github.com/linzeyan/vscode-syntax"
  version "0.21.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.4/poly-darwin-x64"
      sha256 "9099366ace6021124eb5a4b75bce0b40d371fd789fd25d7e16237b5f71d2c19b"

      def install
        bin.install "poly-darwin-x64" => "poly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.4/poly-darwin-arm64"
      sha256 "2ee418dc63152084f7a993325aad3feffffe59b1c6d107b31eb523d25942acea"

      def install
        bin.install "poly-darwin-arm64" => "poly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.4/poly-linux-x64"
      sha256 "1cbab233fa82a00e0eec6fb4c9ced99b3de83326cff9367320138a00fa8c5d93"

      def install
        bin.install "poly-linux-x64" => "poly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.4/poly-linux-arm64"
      sha256 "90e88c3f8a19c1769b8b13c08b327ce59fa0f31df9f8c62d5d9a19d2e51a29f4"

      def install
        bin.install "poly-linux-arm64" => "poly"
      end
    end
  end
end
