# typed: false
# frozen_string_literal: true

class Gowebp < Formula
  desc "Pure-Go WebP encoder CLI"
  homepage "https://github.com/linzeyan/webp-go"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/webp-go/releases/download/v0.1.2/gowebp-v0.1.2-darwin-amd64"
      sha256 "f9b68e550b5b86a6c309e62a5cddf6606b190e7d47661cc571f955b4a6e81071"

      def install
        bin.install "gowebp-v#{version}-darwin-amd64" => "gowebp"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/webp-go/releases/download/v0.1.2/gowebp-v0.1.2-darwin-arm64"
      sha256 "e3cff3a256766a62c597923d91f4d8b995e5e78df7a8b2ff429d976fac070374"

      def install
        bin.install "gowebp-v#{version}-darwin-arm64" => "gowebp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/webp-go/releases/download/v0.1.2/gowebp-v0.1.2-linux-amd64"
      sha256 "825e23ea6a56d1a4802e54584a18337a8c273ac8bd8106fda6e30db90fe07f17"

      def install
        bin.install "gowebp-v#{version}-linux-amd64" => "gowebp"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/webp-go/releases/download/v0.1.2/gowebp-v0.1.2-linux-arm64"
      sha256 "5ac4d647e9a007ecd33defa707b208dba3020b271eae7ea6867113c9e39c1318"

      def install
        bin.install "gowebp-v#{version}-linux-arm64" => "gowebp"
      end
    end
  end
end
