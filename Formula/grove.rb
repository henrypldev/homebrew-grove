class Grove < Formula
  desc "Mobile terminal server for Claude Code - manage sessions from your phone"
  homepage "https://github.com/henrypldev/grove"
  version "0.15.0-beta.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-arm64.tar.gz"
      sha256 "0a714def541a25d7a81f411a59970c9924334d77b75fbc346e26a8f0b9934b7c"

      def install
        bin.install "grove"
        libexec.install "GroveSimulatorServer"
      end
    end

    on_intel do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-x64.tar.gz"
      sha256 "5bda8673e110f4a033e03d894c82ae91b53330dc562dd2581fe65e947db40aed"

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
