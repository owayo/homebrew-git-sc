class GitSc < Formula
  desc "AI-powered smart commit message generator for coding agents"
  homepage "https://github.com/owayo/git-smart-commit"
  version "26.2.106"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.106/git-sc-aarch64-apple-darwin.tar.gz"
      sha256 "8febb598b8dde5354b4374d831cf00de7a0235c5f1ef7a57c150c206f6cf9f0f"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.106/git-sc-x86_64-apple-darwin.tar.gz"
      sha256 "1cf9e1b4e3a7a277ddf0922c0b5b98b638aa1f0a672d77b9aae0f3f8c944a8b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.106/git-sc-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e904bc6eebef0af36350a1d203195d1e15f3d844b590af6fb000f2e6bf2b7785"
    else
      url "https://github.com/owayo/git-smart-commit/releases/download/v26.2.106/git-sc-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dec4718ce61dc4cc86eafb0a9c64753c9a1ecd6ed9c18eded13d281edd264393"
    end
  end

  def install
    bin.install "git-sc"
  end

  test do
    system "#{bin}/git-sc", "--version"
  end
end
