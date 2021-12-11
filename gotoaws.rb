# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gotoaws < Formula
  desc "gotoaws is an interactive CLI tool that you can use to connect to your AWS resources (EC2, ECS container) using the AWS Systems Manager Session Manager"
  homepage "https://github.com/hupe1980/gotoaws"
  version "0.0.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/gotoaws/releases/download/v0.0.10/gotoaws_Darwin_x86_64.tar.gz"
      sha256 "77a612907319ca0ef69cfcc5a5a05e5655b2247c3a65e57500f80186329ca02f"

      def install
        bin.install "gotoaws"
        bash_completion.install "completions/gotoaws.bash" => "gotoaws"
        zsh_completion.install "completions/gotoaws.zsh" => "_gotoaws"
        fish_completion.install "completions/gotoaws.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hupe1980/gotoaws/releases/download/v0.0.10/gotoaws_Darwin_arm64.tar.gz"
      sha256 "059477bdeea16c2ce73d50793646eab3417d142a41ef8992bf069aaa2a410946"

      def install
        bin.install "gotoaws"
        bash_completion.install "completions/gotoaws.bash" => "gotoaws"
        zsh_completion.install "completions/gotoaws.zsh" => "_gotoaws"
        fish_completion.install "completions/gotoaws.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/gotoaws/releases/download/v0.0.10/gotoaws_Linux_armv6.tar.gz"
      sha256 "4516e6f8248604459f5c64eb3b9dc93792876284d5f577ad21a95e57db406cbc"

      def install
        bin.install "gotoaws"
        bash_completion.install "completions/gotoaws.bash" => "gotoaws"
        zsh_completion.install "completions/gotoaws.zsh" => "_gotoaws"
        fish_completion.install "completions/gotoaws.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/gotoaws/releases/download/v0.0.10/gotoaws_Linux_x86_64.tar.gz"
      sha256 "2ee11938a621d31c8237e41e1fc113102633d0031d2d2fb6962465fbb3a55d52"

      def install
        bin.install "gotoaws"
        bash_completion.install "completions/gotoaws.bash" => "gotoaws"
        zsh_completion.install "completions/gotoaws.zsh" => "_gotoaws"
        fish_completion.install "completions/gotoaws.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/gotoaws/releases/download/v0.0.10/gotoaws_Linux_arm64.tar.gz"
      sha256 "c3c85aa695682e567aadfcb3376b42f9526641e5133b0cb11dd50c92978a2dc6"

      def install
        bin.install "gotoaws"
        bash_completion.install "completions/gotoaws.bash" => "gotoaws"
        zsh_completion.install "completions/gotoaws.zsh" => "_gotoaws"
        fish_completion.install "completions/gotoaws.fish"
      end
    end
  end

  test do
    system "#{bin}/gotoaws -v"
  end
end
