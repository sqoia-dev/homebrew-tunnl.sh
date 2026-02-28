class Tunnl < Formula
  desc "Instant secure tunnels to localhost - expose local servers to the internet"
  homepage "https://www.sqoia.dev/tunnl.sh/"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-darwin-arm64.tar.gz"
      sha256 "8da050dfdd90688b75933614ffb4d663f323666808f3c3f359c662f7bd3367e2" # darwin-arm64

      def install
        bin.install "tunnl-darwin-arm64" => "tunnl"
      end
    else
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-darwin-amd64.tar.gz"
      sha256 "cd2e512d0fa436731ee83360dfc91b4d6eafab4ed7f229bf1bfe29c58447fe64" # darwin-amd64

      def install
        bin.install "tunnl-darwin-amd64" => "tunnl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-linux-arm64.tar.gz"
      sha256 "c9dbca506caed2f8abec4b137196cf0fdfbccba05e5c11027180fe5de5af5e3d" # linux-arm64

      def install
        bin.install "tunnl-linux-arm64" => "tunnl"
      end
    else
      url "https://github.com/sqoia-dev/tunnl.sh-cli/releases/download/v#{version}/tunnl-#{version}-linux-amd64.tar.gz"
      sha256 "561b2035be9c1a9c230cccfd35f89b7170f91b148b179f8eace82afa3ede0ad6" # linux-amd64

      def install
        bin.install "tunnl-linux-amd64" => "tunnl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tunnl --version")
  end
end
