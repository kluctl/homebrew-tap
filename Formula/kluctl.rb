# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kluctl < Formula
  desc "kluctl"
  homepage "https://kluctl.io/"
  version "2.12.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kluctl/kluctl/releases/download/v2.12.5/kluctl_v2.12.5_darwin_arm64.tar.gz"
      sha256 "766f57f7128825b42376d3dc35f45719ce9bf38236ffd670498a28d7363e889a"

      def install
        bin.install "kluctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kluctl/kluctl/releases/download/v2.12.5/kluctl_v2.12.5_darwin_amd64.tar.gz"
      sha256 "fda9b4180bc03c7f9dd6568d55232008855a0af5cc06e45caf2e7da22d40dadd"

      def install
        bin.install "kluctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kluctl/kluctl/releases/download/v2.12.5/kluctl_v2.12.5_linux_arm64.tar.gz"
      sha256 "8fb691db499dd9b2d695ee752a61bd5785063460ff26d660b86f00b6b0f4612c"

      def install
        bin.install "kluctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kluctl/kluctl/releases/download/v2.12.5/kluctl_v2.12.5_linux_amd64.tar.gz"
      sha256 "a5351f5b4ced995a80ec8d23e7bf3ba2ecf224bf4c07147e6a2e6db34fb907ab"

      def install
        bin.install "kluctl"
      end
    end
  end

  test do
    system "#{bin}/kluctl version"

    bash_output = Utils.safe_popen_read(bin/"kluctl", "completion", "bash")
    (bash_completion/"kluctl").write bash_output

    zsh_output = Utils.safe_popen_read(bin/"kluctl", "completion", "zsh")
    (zsh_completion/"_kluctl").write zsh_output

    fish_output = Utils.safe_popen_read(bin/"kluctl", "completion", "fish")
    (fish_completion/"kluctl.fish").write fish_output
  end
end
