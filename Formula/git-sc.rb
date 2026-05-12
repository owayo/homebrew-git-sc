class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.5.101.tar.gz"
  sha256 "7f69172c30c8b3c22d40e19f6be6edf56ad5a749b4f8f6a9576164ebb93a4a85"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.5.101"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d6e41054fb47b3a82cda6d3164037f2984149ac149502f593ff4acadd86b8915"
    sha256 cellar: :any_skip_relocation, sonoma: "9060b293b2b79de4899bcf340062f4aada1e6635d8858ca3ecd12d907ecfccee"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "53a5315da8ea9631ce86dedffdf6369e76aa2cf27dd197dd102abdba0b7147f2"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
