# typed: false
# frozen_string_literal: true

class Formatter < Formula
  desc "Multi-format file formatter CLI written in Rust"
  homepage "https://github.com/linzeyan/formatter"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/formatter/releases/download/v0.1.0/formatter_0.1.0_macos_x86_64.tar.gz"
      sha256 "bbc8ea0f0a7d4d56eacc6348350fda4a155d43c8c8555dc91a7983cbba5ca0b6"

      def install
        bin.install "formatter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/formatter/releases/download/v0.1.0/formatter_0.1.0_macos_arm64.tar.gz"
      sha256 "27698303cb8e46ad48e33e210541123098ee34fd2106d1e842efa3bca0848ea6"

      def install
        bin.install "formatter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/formatter/releases/download/v0.1.0/formatter_0.1.0_linux_gnu_x86_64.tar.gz"
      sha256 "b5fdc63b0a8e1a0400cc90d2a49e7849a3b975300f71cbef38219630347cb310"

      def install
        bin.install "formatter"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/formatter/releases/download/v0.1.0/formatter_0.1.0_linux_gnu_arm64.tar.gz"
      sha256 "61b29dfd83773662b780b4568222cfdcaf2d3912961cca696848396b47e6f15a"

      def install
        bin.install "formatter"
      end
    end
  end
end
