class Grubby < Formula
  desc "Terminal cockpit TUI for GitHub repositories, PRs, and workspaces"
  homepage "https://github.com/bronners-org/grubby"
  version "22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bronners-org/grubby/releases/download/v22/grubby_v22_darwin_arm64.tar.gz"
      sha256 "6b136c9195ae08fe072cfad57872d50fa6bb0cdc43ec051b501c8a0c72397212"
    else
      url "https://github.com/bronners-org/grubby/releases/download/v22/grubby_v22_darwin_amd64.tar.gz"
      sha256 "d5f157749c2d2904fd798d9cc0f36d2ea177d73512bf76cbd4c3ffdf015fbbb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bronners-org/grubby/releases/download/v22/grubby_v22_linux_arm64.tar.gz"
      sha256 "7e47463b13ed567c98f4b284bc3cd7754afdeda5b0d641341c7de4f54d7b97e6"
    else
      url "https://github.com/bronners-org/grubby/releases/download/v22/grubby_v22_linux_amd64.tar.gz"
      sha256 "bd59a4508018d844da6928ad966398c0c4e4e15dde5ed28184032698e674d2e8"
    end
  end

  def install
    bin.install "grubby"
  end

  test do
    assert_match "grubby", shell_output("#{bin}/grubby -v")
  end
end
