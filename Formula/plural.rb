class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  url "https://github.com/pluralsh/plural-cli.git",
    revision: "75f93f8aaf593a6a85f49da9e4c173c3e1555fcc"
  version "0.1.5"
  license "GNU Affero General Public License v3.0"
  head "https://github.com/pluralsh/plural-cli.git"

  depends_on "helm"
  depends_on "kubectl"
  depends_on "terraform"
  depends_on "go" => :build

  def install
    # Don't dirty the git tree
    rm_rf ".brew_home"

    system "make", "build-cli"
    bin.install "plural.o" => "plural"
  end

  test do
    # ensure plural --help runs correctly
    system bin/"plural", "--help"
  end
end