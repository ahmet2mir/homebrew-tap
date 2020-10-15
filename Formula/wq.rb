# fixme to automate
class Wq < Formula
  desc "Command-line TOML/JSON/INI/YAML/XML/HCL processor using jq c bindings"
  homepage "https://github.com/ahmet2mir/wildq"
  version "1.1.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ahmet2mir/wildq/releases/download/v1.1.2/wildq-1.1.2-darwin-x86_64.tar.gz"
    sha256 "3f01ad9f4b645027015e352f4c247999a948eea3c95a99e6f2b4458c425ff669"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ahmet2mir/wildq/releases/download/v1.1.2/wildq-1.1.2-linux-x86_64.tar.gz"
      sha256 "9d7bd77de54421c54e48a4ae058ffa53e07b9aec3e6d1bdd12d20e7add1bcc6b"
    end
  end

  def install
    bin.install "wq"
  end
end
