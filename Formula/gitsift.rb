class Gitsift < Formula
  desc "Git hunk sifter for code agents — selective staging tool (git add -p replacement)"
  homepage "https://github.com/MonteYin/gitsift"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MonteYin/gitsift/releases/download/v0.1.1/gitsift-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "0a581f2a59b252f884375eded1066ff6baaad4ad2c96ea0198985c89bae51f74"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MonteYin/gitsift/releases/download/v0.1.1/gitsift-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "285e4d2c39d45c70bda2913fe5a27929e21d1b90e3f2713a4d5adf8e789d53fb"
    end
    on_arm do
      url "https://github.com/MonteYin/gitsift/releases/download/v0.1.1/gitsift-v0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "52b51770bd1e60793d23b7c40f77ba370f9a9035c939c58f0a8917930e7b897b"
    end
  end

  def install
    bin.install "gitsift"
  end

  test do
    assert_match "gitsift", shell_output("#{bin}/gitsift --version")
  end
end
