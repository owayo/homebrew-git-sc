class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.3.105.tar.gz"
  sha256 "fd3653f34c6ae948fec7aaa70bc0e8d73160afa08ccd0d1b592c86e0c6c150c1"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.105"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "88e204b67eed43f2f99bd2069b841d6981756c871f6e2f4c5be2cdac8a90615b"
    sha256 cellar: :any_skip_relocation, sonoma: "be54f475a88b14c1bc3f225a867e82857fc366201b9c3864940e62bb869295bf"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b6ac96d81ab91450d7c61774270f5691e9fdf501c8d87d10076c162c47ed7081"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
