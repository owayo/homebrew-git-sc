class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.6.103.tar.gz"
  sha256 "0c0d35369b95bc61df78aadae48bd7c79cbc27919d9c785018daf66967470875"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.6.103"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "e0df5e9fa660314fb7c5c05697dbf9b2aad43acead1fba93b8b05eddf2a42097"
    sha256 cellar: :any_skip_relocation, sonoma: "98865dfa098347874ffbb48f85a543d7f1e5a0e90ed863111e7d0a3ce546e801"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fdc0be3d50d154fcbea17c2f588e28aa3ff9ba2ade8e57783b83c0c53c58f65b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
