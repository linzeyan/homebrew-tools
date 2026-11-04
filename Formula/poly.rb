# typed: false
# frozen_string_literal: true

class Poly < Formula
  desc "Lint and format CLI for 30+ languages, shared with the poly VSCode extension"
  homepage "https://github.com/linzeyan/vscode-syntax"
  version "0.21.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.3/poly-darwin-x64"
      sha256 "ab446bfc1415d11dd8dc1064c7188f79859ef9acd04988180aa2bac047c82eb6"

      def install
        bin.install "poly-darwin-x64" => "poly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.3/poly-darwin-arm64"
      sha256 "0d16b745cda9e7401c6b089a4b83014a47b3cb60aec9cf074fc0556f85438295"

      def install
        bin.install "poly-darwin-arm64" => "poly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.3/poly-linux-x64"
      sha256 "435b5ab98f2f121c39078c66de78367c14be65a6ab675339d9a7baaedc45fee4"

      def install
        bin.install "poly-linux-x64" => "poly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.3/poly-linux-arm64"
      sha256 "d2dbb38cc3b88386c303c552185b5fdc38a2062c14f72587b31eaa41ac5ac282"

      def install
        bin.install "poly-linux-arm64" => "poly"
      end
    end
  end
end
