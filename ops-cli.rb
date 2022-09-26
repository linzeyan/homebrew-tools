# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsCli < Formula
  desc ""
  homepage "https://github.com/linzeyan/homebrew-tools"
  version "0.9.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.9.4/ops-cli_v0.9.4_darwin_amd64.tar.gz"
      sha256 "7e0743aa6b0dd2cab255b31082be24a6ebaf73cb7b9f57daeb4387feef473c6e"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.9.4/ops-cli_v0.9.4_darwin_arm64.tar.gz"
      sha256 "ff8a94985deead249763355cde279dc046889d43385201e3382db9fd98a7efc8"

      def install
        bin.install "ops-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.9.4/ops-cli_v0.9.4_linux_arm64.tar.gz"
      sha256 "4962d893d1a14da7d87f5b04c3d999a642d228a95592a0bce7f7e4de9abe5918"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.9.4/ops-cli_v0.9.4_linux_amd64.tar.gz"
      sha256 "7f5840a3cdc0e4615cb76b0631ce9f185c51f5934f51b5f1153d15b437c758ea"

      def install
        bin.install "ops-cli"
      end
    end
  end
end
