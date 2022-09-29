# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsCli < Formula
  desc ""
  homepage "https://github.com/linzeyan/homebrew-tools"
  version "0.11.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.11.7/ops-cli_v0.11.7_darwin_arm64.tar.gz"
      sha256 "14bc254ead2f7f54272aa6462c7a27cbbdcd41a456179c4e349a6cd87fea5f09"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.11.7/ops-cli_v0.11.7_darwin_amd64.tar.gz"
      sha256 "03065724e24d29654d16c005f7c347d4bdf00581bc9445183923ebc80496bef0"

      def install
        bin.install "ops-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.11.7/ops-cli_v0.11.7_linux_arm64.tar.gz"
      sha256 "8ab7884178e8bacf26c199109988c931f5d42dcbc8cf3676598ea3cfbedab4d6"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.11.7/ops-cli_v0.11.7_linux_amd64.tar.gz"
      sha256 "84f4adcddd2d909095ba9364a005392d190b5af43bac70a7fb8026355e4334b6"

      def install
        bin.install "ops-cli"
      end
    end
  end
end
