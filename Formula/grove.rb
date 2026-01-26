class Grove < Formula
  desc "Mobile terminal server for Claude Code - manage sessions from your phone"
  homepage "https://github.com/henrypl/grove"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/henrypl/grove/releases/download/v#{version}/grove-#{version}-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM64_SHA256"

      def install
        bin.install "grove-#{version}-darwin-arm64" => "grove"
      end
    end

    on_intel do
      url "https://github.com/henrypl/grove/releases/download/v#{version}/grove-#{version}-darwin-x64.tar.gz"
      sha256 "PLACEHOLDER_X64_SHA256"

      def install
        bin.install "grove-#{version}-darwin-x64" => "grove"
      end
    end
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --help")
  end
end
