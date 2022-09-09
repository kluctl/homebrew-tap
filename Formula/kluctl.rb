# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kluctl < Formula
  desc "kluctl"
  homepage "https://kluctl.io/"
  version "2.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kluctl/kluctl/releases/download/v2.14.0/kluctl_v2.14.0_darwin_arm64.tar.gz"
      sha256 "3c2aed0f398fd12f70520d1668a11098f04979bb75046889bca54896a7ca5066"

      def install
        bin.install "kluctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kluctl/kluctl/releases/download/v2.14.0/kluctl_v2.14.0_darwin_amd64.tar.gz"
      sha256 "274c38512b72c4f3c8a6bc1d8440e6a8563c8e974a92c817765023283565470a"

      def install
        bin.install "kluctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kluctl/kluctl/releases/download/v2.14.0/kluctl_v2.14.0_linux_amd64.tar.gz"
      sha256 "2fe4451c3106afae65aa77d3abc808c7c5201544c7ae206e90e9510e1cb1076f"

      def install
        bin.install "kluctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kluctl/kluctl/releases/download/v2.14.0/kluctl_v2.14.0_linux_arm64.tar.gz"
      sha256 "f3b7d01845fc8a0e0e0bdabe58ccb9e8f0951882d7c8cd59396471ee32a011d0"

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
