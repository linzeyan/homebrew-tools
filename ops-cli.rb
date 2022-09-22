# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsCli < Formula
  desc ""
  homepage "https://github.com/linzeyan/homebrew-tools"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.9.0/ops-cli_v0.9.0_darwin_amd64.tar.gz"
      sha256 "a5e5c16fe60ac33b1372c205f4e5b35387b6e05aaa87728b9925a810e4827d99"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.9.0/ops-cli_v0.9.0_darwin_arm64.tar.gz"
      sha256 "92f54bcb36a44f5ab0fab9b00ab5fc06784fd280694781f53b2e0de1b6fc39ee"

      def install
        bin.install "ops-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.9.0/ops-cli_v0.9.0_linux_arm64.tar.gz"
      sha256 "3ffdae5565a9400e1b834fa5319f69678dcaed3422eec5ab4f8a97b7e4c8a7b7"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.9.0/ops-cli_v0.9.0_linux_amd64.tar.gz"
      sha256 "1cb5cf5d55e2ed46426adc49d72d4f52e91601b8b3d5064446d92fe8e9478625"

      def install
        bin.install "ops-cli"
      end
    end
  end
end
