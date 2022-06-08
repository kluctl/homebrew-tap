# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kluctl < Formula
  desc "kluctl"
  homepage "https://kluctl.io/"
  version "2.11.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kluctl/kluctl/releases/download/v2.11.2/kluctl_v2.11.2_darwin_arm64.tar.gz"
      sha256 "2468323df49065b20de241ad2d1efdfb4f7a54b6371ef64a8318c87ff7586331"

      def install
        bin.install "kluctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kluctl/kluctl/releases/download/v2.11.2/kluctl_v2.11.2_darwin_amd64.tar.gz"
      sha256 "94f2027c7862c514489f4510a459a0954abee24a2c2a53130852f143ec518efb"

      def install
        bin.install "kluctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kluctl/kluctl/releases/download/v2.11.2/kluctl_v2.11.2_linux_arm64.tar.gz"
      sha256 "fcd943d3241ab32804ee2d21d96a8bd07a4aef150fdf383eb14d5962bb263748"

      def install
        bin.install "kluctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kluctl/kluctl/releases/download/v2.11.2/kluctl_v2.11.2_linux_amd64.tar.gz"
      sha256 "3d8a3d1fec52159cd807f8a5e3617e926a39bc337192069e0806c18742ab78d8"

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
