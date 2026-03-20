class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.3.107.tar.gz"
  sha256 "d874020de198d486d7f3e420562443233880f65b57533b636fa6eca5a1252d72"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.107"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d9781036ed8e64ed8b14ca1813dcaa06bff18b3fcd209a47b5ffabdc85c9c7c2"
    sha256 cellar: :any_skip_relocation, sonoma: "f7a0df426dd4f69e961d18faf7c7481bc62ef975ee50f35da44ce377159bbbda"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "04e548ff0380af440fb1cfe3a7d3428fb5f7b9ffe8ca5bc7c7fd07f77690ed2f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
