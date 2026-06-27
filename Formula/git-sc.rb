class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  url "https://github.com/owayo/git-smart-commit/archive/refs/tags/v26.6.104.tar.gz"
  sha256 "367a3737e28f4660724d2644e081e97d257d9f240411d78a45a42f226970c56d"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/git-smart-commit/releases/download/v26.6.104"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "63bc111262a7d8e33bf1232b7cf21f9ad9450131312ae8127000566bea547208"
    sha256 cellar: :any_skip_relocation, sonoma: "722d1dadd2428abfd9633c69eb801f363fe020599fcea07829686d23e1265094"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a8aa6743ae3076e728e48b8b5e3d20a8a6f44610287dcf3eb63985b08c82cf4d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
