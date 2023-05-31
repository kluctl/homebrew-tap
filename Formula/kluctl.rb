# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kluctl < Formula
  desc "kluctl"
  homepage "https://kluctl.io/"
  version "2.20.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kluctl/kluctl/releases/download/v2.20.0/kluctl_v2.20.0_darwin_amd64.tar.gz"
      sha256 "4ee2f1afdd94a74bcdca778bc41125bc0872f504d15144eb756f387727b0eb1e"

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
    if Hardware::CPU.arm?
      url "https://github.com/kluctl/kluctl/releases/download/v2.20.0/kluctl_v2.20.0_darwin_arm64.tar.gz"
      sha256 "9b46f17e4a06f3ef946531ab5995e6017927f506affbabac69a3d5f2c579b40b"

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
      url "https://github.com/kluctl/kluctl/releases/download/v2.20.0/kluctl_v2.20.0_linux_arm64.tar.gz"
      sha256 "a87ff7f50ff49f0cf798e2201959831d1aff1db7950a8dc869739f27d321606c"

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
      url "https://github.com/kluctl/kluctl/releases/download/v2.20.0/kluctl_v2.20.0_linux_amd64.tar.gz"
      sha256 "7007f2fa3e9617f0111e3c547a793491cc3bb2356d41c65bec72214e58150621"

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
