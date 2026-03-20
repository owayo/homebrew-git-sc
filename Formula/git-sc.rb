class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.3.108.tar.gz"
  sha256 "9bbce3867c0cdfab375171f0b57e89b0db9081e30817251aeaff0bf242dab32c"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.3.108"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "e1f89b475f560fd7bdeee932fed6687d289cdd330a86d50688a09adef7484178"
    sha256 cellar: :any_skip_relocation, sonoma: "6f8ed8361552799cdf4aa2a1845be00c647d6dfb5df9d46418dc460c16d19a6f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2581a7b8c36efb631452788fce3b1c1af821308ffc5466f4df1f8e0eec2dbef6"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
