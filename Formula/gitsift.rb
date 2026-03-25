class Gitsift < Formula
  desc "Git hunk sifter for code agents — selective staging tool (git add -p replacement)"
  homepage "https://github.com/MonteYin/gitsift"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MonteYin/gitsift/releases/download/v0.1.0/gitsift-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "eaf742df53122ffc8560ea691407b01e8ab23cdaa50e54a8f471b2641086ff22"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MonteYin/gitsift/releases/download/v0.1.0/gitsift-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3c94471ef6b7a9f33fc1a3697eb610f44c4f93268118bac6e73b8767f26229f0"
    end
    on_arm do
      url "https://github.com/MonteYin/gitsift/releases/download/v0.1.0/gitsift-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46c42c5b3313bb0c775b6109906099d0f6896df9e33889ff931cda6aa7847c03"
    end
  end

  def install
    bin.install "gitsift"
  end

  test do
    assert_match "gitsift", shell_output("#{bin}/gitsift --version")
  end
end
