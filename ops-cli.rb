# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsCli < Formula
  desc ""
  homepage "https://github.com/linzeyan/homebrew-tools"
  version "0.11.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.11.6/ops-cli_v0.11.6_darwin_amd64.tar.gz"
      sha256 "fc9a207665d8f5046172a3690e271dd80d95bfd920a656907eeaf96a6ac4fcc8"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.11.6/ops-cli_v0.11.6_darwin_arm64.tar.gz"
      sha256 "1e19092c136a55870b99db9dfb0c4bf7f158ddaefbf3f1a64f9828852854952c"

      def install
        bin.install "ops-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.11.6/ops-cli_v0.11.6_linux_arm64.tar.gz"
      sha256 "73530bf8376268bb56343b6af852f29f6e232a7d6711459afeacbfa93f6e3ed0"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.11.6/ops-cli_v0.11.6_linux_amd64.tar.gz"
      sha256 "031e4c6f02942542e0045b773d6a21cee3f46608ede5e9b1e34c58663972c8ea"

      def install
        bin.install "ops-cli"
      end
    end
  end
end
