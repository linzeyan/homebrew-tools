# typed: false
# frozen_string_literal: true

class RedisTopKeysAnalyzer < Formula
  desc "Redis top keys memory analyzer CLI"
  homepage "https://github.com/linzeyan/redis-top-keys-analyzer"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/redis-top-keys-analyzer/releases/download/v0.1.0/redis-top-keys-analyzer_0.1.0_macos_x86_64.tar.gz"
      sha256 "a20b0f1a34f566123cc48d823040357057b0a418fd2b9ecbf17ae461e1cd4375"

      def install
        bin.install "redis-top-keys-analyzer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/redis-top-keys-analyzer/releases/download/v0.1.0/redis-top-keys-analyzer_0.1.0_macos_arm64.tar.gz"
      sha256 "bfdd50318b45736e0135d27cd6a488edafd09c44823cd4f6e2f0633d21bba6d4"

      def install
        bin.install "redis-top-keys-analyzer"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/redis-top-keys-analyzer/releases/download/v0.1.0/redis-top-keys-analyzer_0.1.0_linux_gnu_x86_64.tar.gz"
      sha256 "11f75843556b7e445d07a39567ac526797ca513f81852fc612f5537fbfb65288"

      def install
        bin.install "redis-top-keys-analyzer"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/redis-top-keys-analyzer/releases/download/v0.1.0/redis-top-keys-analyzer_0.1.0_linux_gnu_arm64.tar.gz"
      sha256 "425c602d193307ad0ddc4618b605d45fb6cf4bbc440be3fc1ad64fde44217bc8"

      def install
        bin.install "redis-top-keys-analyzer"
      end
    end
  end
end
