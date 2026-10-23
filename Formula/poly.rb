# typed: false
# frozen_string_literal: true

class Poly < Formula
  desc "Lint and format CLI for 30+ languages, shared with the poly VSCode extensions"
  homepage "https://github.com/linzeyan/vscode-syntax"
  version "0.19.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.19.1/poly-darwin-x64"
      sha256 "e8ebc122521999062ef23aadfd734e65c42cf72049e81ed58a4fc07fe925971d"

      def install
        bin.install "poly-darwin-x64" => "poly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.19.1/poly-darwin-arm64"
      sha256 "3166d9d5b85a3c1494113975ec621e516509fb5d60ffb51b542b70f83b8e871f"

      def install
        bin.install "poly-darwin-arm64" => "poly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.19.1/poly-linux-x64"
      sha256 "deb6c94a8a6288b19d6eedbbf39ab4d5428e00ce636454850e54987c20a658dd"

      def install
        bin.install "poly-linux-x64" => "poly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.19.1/poly-linux-arm64"
      sha256 "80d5425f07e28d72a1557a83b66963bdcecf5bd6c625d9c0f5c67542d5685c42"

      def install
        bin.install "poly-linux-arm64" => "poly"
      end
    end
  end
end
