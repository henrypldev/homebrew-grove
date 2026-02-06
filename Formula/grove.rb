class Grove < Formula
  desc "Mobile terminal server for Claude Code - manage sessions from your phone"
  homepage "https://github.com/henrypldev/grove"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-arm64.tar.gz"
      sha256 "f05a5eed226e86a1a26a360cbfb8ea677281522020a8ef444255fc421355daa6"

      def install
        bin.install "grove-#{version}-darwin-arm64" => "grove"
      end
    end

    on_intel do
      url "https://github.com/henrypldev/grove/releases/download/v#{version}/grove-#{version}-darwin-x64.tar.gz"
      sha256 "dc897d28a2898be978903246f5d90fed02284f4f2f239872c3f2ab7f0c006c9d"

      def install
        bin.install "grove-#{version}-darwin-x64" => "grove"
      end
    end
  end

  test do
    assert_match "grove", shell_output("#{bin}/grove --help")
  end
end
