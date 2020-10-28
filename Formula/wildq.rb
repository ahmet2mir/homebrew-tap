# fixme to automate

class Wildq < Formula
  desc "Command-line TOML/JSON/INI/YAML/XML/HCL processor using jq c bindings"
  homepage "https://github.com/ahmet2mir/wildq"
  version "1.1.8"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ahmet2mir/wildq/releases/download/v1.1.8/wildq-1.1.8-darwin-x86_64.tar.gz"
    sha256 "99ce7981b7ef3b9f668fd40f9d8de6bc38c367cb7ed1a02b7744ecc9218c6cfc"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ahmet2mir/wildq/releases/download/v1.1.8/wildq-1.1.8-linux-x86_64.tar.gz"
      sha256 "1bac8037ecd183497df1f5c2f2ae951de10c6242e8ec577df903e66449c9f426"
    end
  end

  def install
    bin.install "wildq"
  end
end
