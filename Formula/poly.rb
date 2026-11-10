# typed: false
# frozen_string_literal: true

class Poly < Formula
  desc "Lint and format CLI for 30+ languages, shared with the poly VSCode extension"
  homepage "https://github.com/linzeyan/vscode-syntax"
  version "0.21.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.5/poly-darwin-x64"
      sha256 "d35ad8e26228269d316e82742ca5904044071e750c3edd0a330292823db89486"

      def install
        bin.install "poly-darwin-x64" => "poly"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.5/poly-darwin-arm64"
      sha256 "29920f3d71a9ef734aaee7a04afdf8f6af91f5b7ab6156cf634592abba001b1a"

      def install
        bin.install "poly-darwin-arm64" => "poly"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.5/poly-linux-x64"
      sha256 "85279249e34a708d9fdadadff1bfba127cee8fabbc1247fb363f94f58d63f6e3"

      def install
        bin.install "poly-linux-x64" => "poly"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/vscode-syntax/releases/download/v0.21.5/poly-linux-arm64"
      sha256 "3bb819ca3e6c3b5010b243eee040b3ccbb0d0a78b759ffa1177628f487061e2e"

      def install
        bin.install "poly-linux-arm64" => "poly"
      end
    end
  end
end
