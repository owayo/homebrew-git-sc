class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.6.101.tar.gz"
  sha256 "1176429c0662472d47a4c15503b2810e943af225f051fa7e77c1428d2bdd94b4"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.6.101"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "a52d276dbd5587046393faea281b1f82afb47ac44ee8bc068e50a9f2b838bbdb"
    sha256 cellar: :any_skip_relocation, sonoma: "e4a31f3b189e13b67089a8e7e70993bfc0bb14edbd777dee7d12b4dd5ac36460"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b53b8ef1c7fc315aea8b5e917933c6632499fd913de404f986db4031ff4a5b22"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
