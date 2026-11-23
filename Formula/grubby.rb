class Grubby < Formula
  desc "Terminal cockpit TUI for GitHub repositories, PRs, and workspaces"
  homepage "https://github.com/bronners-org/grubby"
  version "27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bronners-org/grubby/releases/download/v27/grubby_v27_darwin_arm64.tar.gz"
      sha256 "05516854beab1d8739f81e728b0c921e82da6eb1780cb762ba4d593ee07e36ec"
    else
      url "https://github.com/bronners-org/grubby/releases/download/v27/grubby_v27_darwin_amd64.tar.gz"
      sha256 "cebfedde25b39e0f6e018325bcb5a839afa6d21cfea386125eae47aa80d38e66"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bronners-org/grubby/releases/download/v27/grubby_v27_linux_arm64.tar.gz"
      sha256 "23ed0542d8f478be2c0da743779de59d74a8373d2daaec983069c4b210405c38"
    else
      url "https://github.com/bronners-org/grubby/releases/download/v27/grubby_v27_linux_amd64.tar.gz"
      sha256 "e8a60c195778d86623ed71219f95481f5d7f2af5a8568a87836ad37a0def8602"
    end
  end

  def install
    bin.install "grubby"
  end

  test do
    assert_match "grubby", shell_output("#{bin}/grubby -v")
  end
end
