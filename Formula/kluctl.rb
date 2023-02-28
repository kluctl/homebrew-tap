# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kluctl < Formula
  desc "kluctl"
  homepage "https://kluctl.io/"
  version "2.19.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kluctl/kluctl/releases/download/v2.19.2/kluctl_v2.19.2_darwin_arm64.tar.gz"
      sha256 "c0bf9e80c7af1632b07d3c4aa10f230a819cb761a85fa3ad113ca35ca84dd7d2"

      def install
        bin.install "kluctl"

        bash_output = Utils.safe_popen_read(bin/"kluctl", "completion", "bash")
        (bash_completion/"kluctl").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"kluctl", "completion", "zsh")
        (zsh_completion/"_kluctl").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"kluctl", "completion", "fish")
        (fish_completion/"kluctl.fish").write fish_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kluctl/kluctl/releases/download/v2.19.2/kluctl_v2.19.2_darwin_amd64.tar.gz"
      sha256 "64d464e4e2b00724c672a5db53e9567f5160a834b1cfc650a7cc7f1ea7ef514a"

      def install
        bin.install "kluctl"

        bash_output = Utils.safe_popen_read(bin/"kluctl", "completion", "bash")
        (bash_completion/"kluctl").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"kluctl", "completion", "zsh")
        (zsh_completion/"_kluctl").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"kluctl", "completion", "fish")
        (fish_completion/"kluctl.fish").write fish_output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kluctl/kluctl/releases/download/v2.19.2/kluctl_v2.19.2_linux_arm64.tar.gz"
      sha256 "f73d55ae470fbb52998132ca01e6d29bb70c76806b3e4b2c58163e7b87b8f8dd"

      def install
        bin.install "kluctl"

        bash_output = Utils.safe_popen_read(bin/"kluctl", "completion", "bash")
        (bash_completion/"kluctl").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"kluctl", "completion", "zsh")
        (zsh_completion/"_kluctl").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"kluctl", "completion", "fish")
        (fish_completion/"kluctl.fish").write fish_output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kluctl/kluctl/releases/download/v2.19.2/kluctl_v2.19.2_linux_amd64.tar.gz"
      sha256 "0b738774eed65a8e00110c044099b1da4531ce792d75ece608b045a63e41d3e0"

      def install
        bin.install "kluctl"

        bash_output = Utils.safe_popen_read(bin/"kluctl", "completion", "bash")
        (bash_completion/"kluctl").write bash_output

        zsh_output = Utils.safe_popen_read(bin/"kluctl", "completion", "zsh")
        (zsh_completion/"_kluctl").write zsh_output

        fish_output = Utils.safe_popen_read(bin/"kluctl", "completion", "fish")
        (fish_completion/"kluctl.fish").write fish_output
      end
    end
  end

  test do
    system "#{bin}/kluctl version"
  end
end
