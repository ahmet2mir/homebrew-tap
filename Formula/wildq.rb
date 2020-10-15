# fixme to automate
class Wildq < Formula
  desc "Command-line TOML/JSON/INI/YAML/XML/HCL processor using jq c bindings"
  homepage "https://github.com/ahmet2mir/wildq"
  version "1.1.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ahmet2mir/wildq/releases/download/v1.1.4/wildq-1.1.4-darwin-x86_64.tar.gz"
    sha256 "3914eeb6af56bd501b71ac64005418b499dbf9e30a15cb1bcacdaf618a435f60"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ahmet2mir/wildq/releases/download/v1.1.4/wildq-1.1.4-linux-x86_64.tar.gz"
      sha256 "d7958f9b2a5d4753a46a6d6adc6c11b5d6ad5539f92f1a0aea8069372f31e651"
    end
  end

  def install
    bin.install "wildq"
  end
end
