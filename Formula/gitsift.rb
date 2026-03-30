class Gitsift < Formula
  desc "Git hunk sifter for code agents — selective staging and checkout tool"
  homepage "https://github.com/MonteYin/gitsift"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MonteYin/gitsift/releases/download/v0.2.0/gitsift-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "fe26b7b87ea24a04db2275bd53ecca540ca2d0d3b099748f9958070454e22931"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MonteYin/gitsift/releases/download/v0.2.0/gitsift-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2076cf94f86ce766c54cc794c62b5a783ce1e6b91e8ec6ccd77b8e775a1af6cf"
    end
    on_arm do
      url "https://github.com/MonteYin/gitsift/releases/download/v0.2.0/gitsift-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ec8d1c0b042e607701204bfbf9405ecd27d658fcb32c159c35be8f2ddbfb6de0"
    end
  end

  def install
    bin.install "gitsift"
  end

  test do
    assert_match "gitsift", shell_output("#{bin}/gitsift --version")
  end
end
