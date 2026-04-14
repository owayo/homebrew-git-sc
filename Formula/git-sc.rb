class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.4.101.tar.gz"
  sha256 "c7895e89333d1de718c20066769d5f063a10aab4286ffb77027cf567526a8771"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.4.101"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "2fa9e419ea063a29e51daafd4445870a4ab4110862df650bb5eecdbde7b1a713"
    sha256 cellar: :any_skip_relocation, sonoma: "a30d190c50f58e53f16c00dac7119155ee02060511cf8762cdc1c4add9807b3f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "22594972cf4c2d051d561ed8f407444b844a22f3463fd06d6afac105d8e48c07"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
