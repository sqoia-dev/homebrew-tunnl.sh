class Tunnl < Formula
  desc "Instant secure tunnels to localhost - expose local servers to the internet"
  homepage "https://www.sqoia.dev/tunnl.sh/"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-darwin-arm64.tar.gz"
      sha256 "b3f8ff482a309e222cb82829f2465b34a7b4ae1c490d3f7a3faaa3520c85ead6" # darwin-arm64

      def install
        bin.install "tunnl-darwin-arm64" => "tunnl"
      end
    else
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-darwin-amd64.tar.gz"
      sha256 "d8b3f12ce6079b71cdf8c0420fe8c1596e1b63150a113c74efd4adbd7af8dcd0" # darwin-amd64

      def install
        bin.install "tunnl-darwin-amd64" => "tunnl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-linux-arm64.tar.gz"
      sha256 "174c8411e2516ee853c35a392ad9292aa65c401c2ba322753a4ae591323c3b52" # linux-arm64

      def install
        bin.install "tunnl-linux-arm64" => "tunnl"
      end
    else
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-linux-amd64.tar.gz"
      sha256 "4db79e6510e82c6c74ad9a02be71b4f5c5f01b47e15fe547667fbae292b832e5" # linux-amd64

      def install
        bin.install "tunnl-linux-amd64" => "tunnl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tunnl --version")
  end
end
