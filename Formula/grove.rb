class Grove < Formula
  desc "Mobile terminal server for Claude Code - manage sessions from your phone"
  homepage "https://github.com/henrypldev/grove"
  version "0.15.0-beta.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-arm64.tar.gz"
      sha256 "77d8065ec43441f31f4573a6123f3ce41d61d99ec831bf47be507998a179f7e0"

      def install
        bin.install "grove"
        libexec.install "GroveSimulatorServer"
      end
    end

    on_intel do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-x64.tar.gz"
      sha256 "96bf991703f20890f635280a3cacb692a0be5d433143576d5e7c396556eb6cc1"

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
