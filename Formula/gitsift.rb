class Gitsift < Formula
  desc "Git hunk sifter for code agents — selective staging tool (git add -p replacement)"
  homepage "https://github.com/MonteYin/gitsift"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MonteYin/gitsift/releases/download/v0.1.0/gitsift-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "e9dc2d304f4cb0f024fbf3fab60322751d1ec2613e5c13a4f625e88dffd5e56a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MonteYin/gitsift/releases/download/v0.1.0/gitsift-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "407a1f015c472ddba4193ace826c005377e5c03e211f0ec21a5d6f4441154e32"
    end
    on_arm do
      url "https://github.com/MonteYin/gitsift/releases/download/v0.1.0/gitsift-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e0e32f3c9e7af33c7342970887aed7d2297dcf249ea4d6532a18525874fdbfb3"
    end
  end

  def install
    bin.install "gitsift"
  end

  test do
    assert_match "gitsift", shell_output("#{bin}/gitsift --version")
  end
end
