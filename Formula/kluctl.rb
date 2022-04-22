# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kluctl < Formula
  desc "kluctl"
  homepage "https://kluctl.io/"
  version "2.7.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kluctl/kluctl/releases/download/v2.7.9/kluctl_v2.7.9_darwin_arm64.tar.gz"
      sha256 "a432a6eb716c023cd23f7a2939f59f75b85383558f6e8ae3dd6375f172a7670f"

      def install
        bin.install "kluctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kluctl/kluctl/releases/download/v2.7.9/kluctl_v2.7.9_darwin_amd64.tar.gz"
      sha256 "dbfa0fdf85734f6ba782417d4606b312e197088f43983bbfa4937f03df61e4b2"

      def install
        bin.install "kluctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kluctl/kluctl/releases/download/v2.7.9/kluctl_v2.7.9_linux_amd64.tar.gz"
      sha256 "4fb58149c11f38ff76471d48411d3ff7d2a25492c79f68aacfaec06704975a82"

      def install
        bin.install "kluctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kluctl/kluctl/releases/download/v2.7.9/kluctl_v2.7.9_linux_arm64.tar.gz"
      sha256 "743eec04e514464aa866aa13f22a9bfd8cd2572ebacee283c2c2e4ebae66712e"

      def install
        bin.install "kluctl"
      end
    end
  end

  test do
    system "#{bin}/kluctl version"
  end
end
