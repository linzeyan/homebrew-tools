# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsCli < Formula
  desc ""
  homepage "https://github.com/linzeyan/homebrew-tools"
  version "0.9.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.9.3/ops-cli_v0.9.3_darwin_amd64.tar.gz"
      sha256 "8e36a3fd66e7f14e640b29876dc0c638efa28c2207abd2ba91c83ed2ab9a0a0d"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.9.3/ops-cli_v0.9.3_darwin_arm64.tar.gz"
      sha256 "b94b15ef2f37e0068fa87fca72502a2aeb6fab0126cbe3556a23d6107b2a424a"

      def install
        bin.install "ops-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.9.3/ops-cli_v0.9.3_linux_amd64.tar.gz"
      sha256 "a5f38be364e4414d4806b80eaf18741ed5e7e6a5cd98b9838eda7dd1f1cad427"

      def install
        bin.install "ops-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/linzeyan/ops-cli/releases/download/v0.9.3/ops-cli_v0.9.3_linux_arm64.tar.gz"
      sha256 "5a5d98ad78ec92859df322e01b042bb62f4efaca99d16406720b2bc8fc190dd1"

      def install
        bin.install "ops-cli"
      end
    end
  end
end
