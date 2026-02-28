class Tunnl < Formula
  desc "Instant secure tunnels to localhost - expose local servers to the internet"
  homepage "https://www.sqoia.dev/tunnl.sh/"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-darwin-arm64.tar.gz"
      sha256 "baee0a7670ab65c5a7484644afeed6be04c64ab0ce80492bcfa33b29cfbb7b57" # darwin-arm64

      def install
        bin.install "tunnl-darwin-arm64" => "tunnl"
      end
    else
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-darwin-amd64.tar.gz"
      sha256 "f022bb7c61444e0060a507028ff687c4d899529f51a8bf60656381aea6f6013d" # darwin-amd64

      def install
        bin.install "tunnl-darwin-amd64" => "tunnl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-linux-arm64.tar.gz"
      sha256 "9e0f3cbc76fcff8227c690514a3ca17f5b84cfb8d0458626fb8a63e5e450e66f" # linux-arm64

      def install
        bin.install "tunnl-linux-arm64" => "tunnl"
      end
    else
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-linux-amd64.tar.gz"
      sha256 "68fed3639a8e91849ebc9b6bbc57804e9eeba856304dc28bf67759e8919cedec" # linux-amd64

      def install
        bin.install "tunnl-linux-amd64" => "tunnl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tunnl --version")
  end
end
