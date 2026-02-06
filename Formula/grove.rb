class Grove < Formula
  desc "Mobile terminal server for Claude Code - manage sessions from your phone"
  homepage "https://github.com/henrypldev/grove"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-arm64.tar.gz"
      sha256 "0321f93783041c86e8fa2e0fefc37ddcde8c70f37d573c954d86a6f45e0138b9"

      def install
        bin.install "grove-#{version}-darwin-arm64" => "grove"
      end
    end

    on_intel do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-x64.tar.gz"
      sha256 "75912019d80bb9835fed249e70f5d8a6836700f69a89ceab60a43d190032f081"

      def install
        bin.install "grove-#{version}-darwin-x64" => "grove"
      end
    end
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --help")
  end
end
