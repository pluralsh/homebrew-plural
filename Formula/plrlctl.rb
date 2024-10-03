# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Plrlctl < Formula
  desc "CLI to manage and operate a fleet of clusters"
  homepage "https://docs.plural.sh"
  version "0.9.20"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.9.20/pluralctl_0.9.20_Darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c6621484a1375c9946c381b746207cf317dc4b1385d246539771fedc351b306e"

      def install
        bin.install "pluralctl"
      end
    end
    on_arm do
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.9.20/pluralctl_0.9.20_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0982dc5d44e83ecf0b05527337d44f46855d54b21204636dfb3ac95d76de5447"

      def install
        bin.install "pluralctl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pluralsh/plural-cli/releases/download/v0.9.20/pluralctl_0.9.20_Linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "d0acc2ffb4376fad46bb3ca763d123eb5c55c58330efcb5932149e9ce6000f74"

        def install
          bin.install "pluralctl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pluralsh/plural-cli/releases/download/v0.9.20/pluralctl_0.9.20_Linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "2cf09288b7dc74b41cc7fa2bb5876ecaf1f076149281fe29816d14233d63bd2c"

        def install
          bin.install "pluralctl"
        end
      end
    end
  end

  head "https://github.com/pluralsh/plural-cli.git"

  test do
    system "#{bin}/plrlctl", "--help"
  end
end
