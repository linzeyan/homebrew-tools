# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsCli < Formula
  desc ""
  homepage "https://github.com/linzeyan/homebrew-tools"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.6.0/ops-cli_v0.6.0_darwin_arm64.tar.gz"
      sha256 "1a47e3caa7bbbeebacc54d4cd773a82556a188e4a1bf22c8b9a2fc322df9124e"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.6.0/ops-cli_v0.6.0_darwin_amd64.tar.gz"
      sha256 "acfb0a1a615b894b9c03111284e5232b11ebb7f91507f396352bd84f518d77da"

      def install
        bin.install "ops-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.6.0/ops-cli_v0.6.0_linux_arm64.tar.gz"
      sha256 "bdc80c60a885e004d8052b31dfa91a1dd85434ea97e7bf122c406e547d116eb2"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.6.0/ops-cli_v0.6.0_linux_amd64.tar.gz"
      sha256 "16ed2dd437818f726c538f1080e494f484a498b52fdcf722620c7216a222bc5c"

      def install
        bin.install "ops-cli"
      end
    end
  end
end
