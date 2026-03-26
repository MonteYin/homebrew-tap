class Gitsift < Formula
  desc "Git hunk sifter for code agents — selective staging tool (git add -p replacement)"
  homepage "https://github.com/MonteYin/gitsift"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MonteYin/gitsift/releases/download/v0.1.3/gitsift-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "a0655cf02b5ad0cf73cda0bfeb2b1882ec09d6196391204c356de09de8f0a386"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MonteYin/gitsift/releases/download/v0.1.3/gitsift-v0.1.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6471f4079bce482a3486379f358c35db4fc36d24df42e4b3e949f1b634ea1e73"
    end
    on_arm do
      url "https://github.com/MonteYin/gitsift/releases/download/v0.1.3/gitsift-v0.1.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ea2a4c4b2f4c4a523096b784f96ae98935373614a0acb2469e3893432ca1daa2"
    end
  end

  def install
    bin.install "gitsift"
  end

  test do
    assert_match "gitsift", shell_output("#{bin}/gitsift --version")
  end
end
