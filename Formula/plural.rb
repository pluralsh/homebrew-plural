# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.10.1/plural-cli_0.10.1_Darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2f4429de08d8dca6d2db949e0812c43e2c0d4ef0e7fa21fe27176d7733ddab30"

      def install
        bin.install "plural"
      end
    end
    on_arm do
      url "https://github.com/pluralsh/plural-cli/releases/download/v0.10.1/plural-cli_0.10.1_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "bf3135b9a62ed96d42db86cdccd5a738f09057a76d8bbff91f8cdc96a79d910e"

      def install
        bin.install "plural"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pluralsh/plural-cli/releases/download/v0.10.1/plural-cli_0.10.1_Linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "db533eb65903668f77646c3f6629ac34fd354d3535f3364f21bf2de41afadbe5"

        def install
          bin.install "plural"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pluralsh/plural-cli/releases/download/v0.10.1/plural-cli_0.10.1_Linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "f40748f823aa91c3d5d16fc58f8f404c4000a5baabbc155c506c2e962d1ec7f9"

        def install
          bin.install "plural"
        end
      end
    end
  end

  head "https://github.com/pluralsh/plural-cli.git"

  test do
    system "#{bin}/plural", "--help"
  end
end
