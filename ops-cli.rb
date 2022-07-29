# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsCli < Formula
  desc ""
  homepage "https://github.com/linzeyan/homebrew-tools"
  version "0.0.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.0.11/ops-cli_v0.0.11_darwin_arm64.tar.gz"
      sha256 "25c72c48b1b482d2e50c5ed9220a6d0f41e75af1d4d3ac3a5425be14d34ab483"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.0.11/ops-cli_v0.0.11_darwin_amd64.tar.gz"
      sha256 "194b3477f8c3c4966959c1a28a53e744c3e35d4e9ecd9a0cd1de111946eeffab"

      def install
        bin.install "ops-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.0.11/ops-cli_v0.0.11_linux_arm64.tar.gz"
      sha256 "87eadf8e60291fd567e0c77cb9e494da3f79711054dd6b2baf51fc8b91f6c514"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.0.11/ops-cli_v0.0.11_linux_amd64.tar.gz"
      sha256 "d6bfe8c4a98b2682378c40b16f13a74e1a2db3ce1db571c498c02e2f1bcbc98a"

      def install
        bin.install "ops-cli"
      end
    end
  end
end
