# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kluctl < Formula
  desc "kluctl"
  homepage "https://kluctl.io/"
  version "2.20.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kluctl/kluctl/releases/download/v2.20.3/kluctl_v2.20.3_darwin_amd64.tar.gz"
      sha256 "641d7cdee54dd47b18e4f37507a300ff4ebd96f8899d68df285de0352057301f"

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
      url "https://github.com/kluctl/kluctl/releases/download/v2.20.3/kluctl_v2.20.3_darwin_arm64.tar.gz"
      sha256 "9c80b56474f37cd588567aea0c5e77e846b062e37bcb64b507741079fd6ac26e"

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
      url "https://github.com/kluctl/kluctl/releases/download/v2.20.3/kluctl_v2.20.3_linux_arm64.tar.gz"
      sha256 "8c8bcec0665574ed66c585bf4172783581f6194b09ba1fbd5c1e08a4b573086c"

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
      url "https://github.com/kluctl/kluctl/releases/download/v2.20.3/kluctl_v2.20.3_linux_amd64.tar.gz"
      sha256 "58b102f7effeee6f293ae3090b114118f373fa2de84bab3d70f5b401a9c1c8b4"

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
