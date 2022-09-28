# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsCli < Formula
  desc ""
  homepage "https://github.com/linzeyan/homebrew-tools"
  version "0.11.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.11.5/ops-cli_v0.11.5_darwin_amd64.tar.gz"
      sha256 "2a9286e8e2f9fa5f2732f97d17163b4865bb99a114b42c5ec3f5b6f1ed313ca5"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.11.5/ops-cli_v0.11.5_darwin_arm64.tar.gz"
      sha256 "9a64feeb1bb089326cb36d78e19b81ef1589e5739a5e454c4241e38b1e336804"

      def install
        bin.install "ops-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.11.5/ops-cli_v0.11.5_linux_arm64.tar.gz"
      sha256 "1ff2e14fe32d76900442b790c08271331ea62f9fb177fb57183fdc6171579276"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.11.5/ops-cli_v0.11.5_linux_amd64.tar.gz"
      sha256 "8d3b2446dfc424807f2d501fb1961e56ba58eb524faa9b1f3c98b7719b49c435"

      def install
        bin.install "ops-cli"
      end
    end
  end
end
