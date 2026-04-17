class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.4.102.tar.gz"
  sha256 "beaad729175d6e9e18f58586afac6ce7032e90b5a8f8a7dedda1b08d1a89fc27"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.4.102"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "4de22bc99e1386b562a0eb54622c66db3e0b13dd7562393a25804a8b33dbb455"
    sha256 cellar: :any_skip_relocation, sonoma: "41404f1937f3b688ec8d19fe92201e20f79724dce398b476d0fde3e9eaca2cfd"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "78c0f20103792d4f602165a2b1064db894ec3b53c2d7a98580b8342b469ebc32"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
