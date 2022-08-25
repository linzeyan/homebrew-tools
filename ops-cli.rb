# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsCli < Formula
  desc ""
  homepage "https://github.com/linzeyan/homebrew-tools"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.2.1/ops-cli_v0.2.1_darwin_arm64.tar.gz"
      sha256 "0c2a4a31235ab880b544054ca7f6056d6cba781e699680d44bb049046a8e7a21"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.2.1/ops-cli_v0.2.1_darwin_amd64.tar.gz"
      sha256 "ae6fe72714990a674682748cee56afeda6ac85625d9fb2fbe74585fb4b0c4905"

      def install
        bin.install "ops-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.2.1/ops-cli_v0.2.1_linux_arm64.tar.gz"
      sha256 "df57682fb8cd324c9045cf948f638202ecd1473db0858c871e78c7c3175bb7fa"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.2.1/ops-cli_v0.2.1_linux_amd64.tar.gz"
      sha256 "361441577b6c0b4e3dbf545a6dad2d381aa4ca7e67c078a170e4aa32da7dce0e"

      def install
        bin.install "ops-cli"
      end
    end
  end
end
