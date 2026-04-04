class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.4.100.tar.gz"
  sha256 "0984f29ed8572d217952d828d83eaeccd5b343e6a5ffffeeca66589fe5ad7e92"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.4.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "05f0db5b121e978ab1c1677bc6375c936e47d5f1339b78dfae41d2419e61d208"
    sha256 cellar: :any_skip_relocation, sonoma: "f0805e5b9423d18949ded409fdc69f02a24576370aa2b79c92e5337ab1132860"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ea9d199cbbf74ddda4e482c092482855e892d9509345ae098947e111a8801381"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
