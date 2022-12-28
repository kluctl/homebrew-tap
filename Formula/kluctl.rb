# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kluctl < Formula
  desc "kluctl"
  homepage "https://kluctl.io/"
  version "2.18.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kluctl/kluctl/releases/download/v2.18.3/kluctl_v2.18.3_darwin_arm64.tar.gz"
      sha256 "7001a5c8efca6e9f2240891fbe18dab41c5260dc83d0665db6f3a355038a0938"

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
      url "https://github.com/kluctl/kluctl/releases/download/v2.18.3/kluctl_v2.18.3_darwin_amd64.tar.gz"
      sha256 "e7eafb1d0e5281502ef92c1214fda4c9a0b473d89c2fa8611d86c94a35b378dc"

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
      url "https://github.com/kluctl/kluctl/releases/download/v2.18.3/kluctl_v2.18.3_linux_arm64.tar.gz"
      sha256 "b78a30c0a64e544832a352890c96640663db933d427024e4657dffe56d5af0dc"

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
      url "https://github.com/kluctl/kluctl/releases/download/v2.18.3/kluctl_v2.18.3_linux_amd64.tar.gz"
      sha256 "e636561b193990c681c311300620f57aad6383483da3b716871f5b2c2c18971d"

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
