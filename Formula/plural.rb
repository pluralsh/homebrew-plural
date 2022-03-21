class Plural < Formula
  desc "CLI for interacting with the plural platform"
  homepage "https://docs.plural.sh"
  url "https://github.com/pluralsh/plural-cli.git",
    revision: "94c9ca09bd347bf588d1933cb5792db1e61b9270"
  version "0.2.40"
  license "MIT License"
  head "https://github.com/pluralsh/plural-cli.git"

  depends_on "helm" => :recommended
  depends_on "kubectl" => :recommended
  depends_on "terraform" => :recommended
  depends_on "go" => :build

  def install
    # Don't dirty the git tree
    rm_rf ".brew_home"

    system "helm", "plugin", "install", "https://github.com/pluralsh/helm-push"
    # system "helm", "plugin", "install", "https://github.com/databus23/helm-diff"
    system "make", "build-cli"
    bin.install "plural.o" => "plural"
  end

  test do
    # ensure plural --help runs correctly
    system bin/"plural", "--help"
  end
end