class Grove < Formula
  desc "Mobile terminal server for Claude Code - manage sessions from your phone"
  homepage "https://github.com/henrypldev/grove"
  version "0.15.0-beta.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-arm64.tar.gz"
      sha256 "464518e781814e639e7e6dbbf0078bfbf1b42c2884c225ae1088d65c04be1bdb"

      def install
        bin.install "grove"
        libexec.install "GroveSimulatorServer"
      end
    end

    on_intel do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-x64.tar.gz"
      sha256 "8bdebadc87d3577081c21d4b61ffdc6bf8bfb42a1af46f28438d58c35f916d6e"

      def install
        bin.install "grove"
        libexec.install "GroveSimulatorServer"
      end
    end
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --help")
  end
end
