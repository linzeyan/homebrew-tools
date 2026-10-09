# typed: false
# frozen_string_literal: true

class Poly < Formula
  desc "Lint and format CLI for 30+ languages, shared with the poly VSCode extensions"
  homepage "https://github.com/linzeyan/vscode-syntax"
  version "0.18.21"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.18.21/poly-darwin-x64"
      sha256 "c48af4d3fdca1e3560e57c9dc9cf677293dc574a3f6f4dde26cd25cd0e796730"

      def install
        bin.install "poly-darwin-x64" => "poly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.18.21/poly-darwin-arm64"
      sha256 "55521f8d86748d37dff70ee732cffd0f2723a56d654567d519e77bf61d5a8bee"

      def install
        bin.install "poly-darwin-arm64" => "poly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.18.21/poly-linux-x64"
      sha256 "8fca412f912d423e8a1e2227a875f990728fa755f9bcea8086467c344148d1f9"

      def install
        bin.install "poly-linux-x64" => "poly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.18.21/poly-linux-arm64"
      sha256 "0164f1f9cff196e092f1880590bb9c223d3a2fa70565c58bf9502a655bff547f"

      def install
        bin.install "poly-linux-arm64" => "poly"
      end
    end
  end
end
