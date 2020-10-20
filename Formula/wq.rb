# fixme to automate

class Wq < Formula
  desc "Command-line TOML/JSON/INI/YAML/XML/HCL processor using jq c bindings"
  homepage "https://github.com/ahmet2mir/wildq"
  version "1.1.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ahmet2mir/wildq/releases/download/v1.1.5/wildq-1.1.5-darwin-x86_64.tar.gz"
    sha256 "9c19e42f1c7b0a71f0bc87136e923017e6b96850bfd7dffc603732513dadd23a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ahmet2mir/wildq/releases/download/v1.1.5/wildq-1.1.5-linux-x86_64.tar.gz"
      sha256 "15c382f2376f62ee44e119ab702d04cc94c7a238d8372c3afa49d68664eb8803"
    end
  end

  def install
    bin.install "wq"
  end
end
