# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsCli < Formula
  desc ""
  homepage "https://github.com/linzeyan/homebrew-tools"
  version "0.11.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.11.3/ops-cli_v0.11.3_darwin_amd64.tar.gz"
      sha256 "6519fa6b42df6afa37c028687963bb5b3334424424814f6f87cd917c8033f4e4"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.11.3/ops-cli_v0.11.3_darwin_arm64.tar.gz"
      sha256 "df425843ca4ea83e724432ab947cb6a9babf318902527a038a1ee26896c62145"

      def install
        bin.install "ops-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.11.3/ops-cli_v0.11.3_linux_arm64.tar.gz"
      sha256 "351f4964e8e6c4192c9043dec97d6f4614e38f2f32799e91dbe3b654fd4a3f32"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.11.3/ops-cli_v0.11.3_linux_amd64.tar.gz"
      sha256 "b7bcfde65ca3bf11299b4fdcaa61efc675a8b862be6ee635aa8d0b1a79f6b5fb"

      def install
        bin.install "ops-cli"
      end
    end
  end
end
