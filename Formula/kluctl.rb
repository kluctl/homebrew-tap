# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kluctl < Formula
  desc "kluctl"
  homepage "https://kluctl.io/"
  version "2.20.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kluctl/kluctl/releases/download/v2.20.1/kluctl_v2.20.1_darwin_arm64.tar.gz"
      sha256 "939eece559d17b0ec27de525f071ae32a2185901b72c3bba1400d216f427fe3d"

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
      url "https://github.com/kluctl/kluctl/releases/download/v2.20.1/kluctl_v2.20.1_darwin_amd64.tar.gz"
      sha256 "beb171a8f993546e244dae82ae6d7c8f84ad6704372098270dddf21e04ee1db9"

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
    if Hardware::CPU.intel?
      url "https://github.com/kluctl/kluctl/releases/download/v2.20.1/kluctl_v2.20.1_linux_amd64.tar.gz"
      sha256 "a54079e08f9c96a0c6918e62aee69daa2a731de3fe4eef016f07a566e789bc3e"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kluctl/kluctl/releases/download/v2.20.1/kluctl_v2.20.1_linux_arm64.tar.gz"
      sha256 "e4965336df2c6169729f1d9f12d7a860d48f6eaf442329c1111bb7d3503c2b85"

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
