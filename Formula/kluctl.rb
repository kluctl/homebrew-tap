# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kluctl < Formula
  desc "kluctl"
  homepage "https://kluctl.io/"
  version "2.12.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kluctl/kluctl/releases/download/v2.12.4/kluctl_v2.12.4_darwin_arm64.tar.gz"
      sha256 "32dac86f8f695ccc905ed763ab00f8780cebd9938d3f40096c29b8c64ea3caab"

      def install
        bin.install "kluctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kluctl/kluctl/releases/download/v2.12.4/kluctl_v2.12.4_darwin_amd64.tar.gz"
      sha256 "481ef1b20d9fb94ca8b0454ff7207ced5f3603ac9903ed7df14ed0c2ae73cbd7"

      def install
        bin.install "kluctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kluctl/kluctl/releases/download/v2.12.4/kluctl_v2.12.4_linux_arm64.tar.gz"
      sha256 "1a5db2dc6037ae2be8acddd23995ddb8ab611f935ff8ca516c2718b88fe9b219"

      def install
        bin.install "kluctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kluctl/kluctl/releases/download/v2.12.4/kluctl_v2.12.4_linux_amd64.tar.gz"
      sha256 "07463a90ebc63ba3affa2f05b722c6753f25c3128d7d48b6feb439701fdaa53f"

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
