# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsCli < Formula
  desc ""
  homepage "https://github.com/linzeyan/homebrew-tools"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.1.3/ops-cli_v0.1.3_darwin_arm64.tar.gz"
      sha256 "24ba03f21706ff60d3e3e46b46b06c6c61a4caecf44335b6768e13e5327e6938"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.1.3/ops-cli_v0.1.3_darwin_amd64.tar.gz"
      sha256 "0132ed323ff76985dcbc04b08940ff43dbab7f22208c0a8596b843975e8db697"

      def install
        bin.install "ops-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.1.3/ops-cli_v0.1.3_linux_arm64.tar.gz"
      sha256 "10712ad7cda518bc3f636852d5feb9a1e037a71818d2063f6a8957afe152b8ad"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.1.3/ops-cli_v0.1.3_linux_amd64.tar.gz"
      sha256 "c93961101786e691bdbf734974d1e4c3b2d4636851e982d0c6b40a660cdcec34"

      def install
        bin.install "ops-cli"
      end
    end
  end
end
