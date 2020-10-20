# fixme to automate

class {{ CLASS_NAME }} < Formula
  desc "Command-line TOML/JSON/INI/YAML/XML/HCL processor using jq c bindings"
  homepage "https://github.com/ahmet2mir/wildq"
  version "{{ VERSION }}"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ahmet2mir/wildq/releases/download/v{{ VERSION }}/wildq-{{ VERSION }}-darwin-x86_64.tar.gz"
    sha256 "{{ SHA_MACOS }}"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ahmet2mir/wildq/releases/download/v{{ VERSION }}/wildq-{{ VERSION }}-linux-x86_64.tar.gz"
      sha256 "{{ SHA_LINUX }}"
    end
  end

  def install
    bin.install "{{ BIN_NAME }}"
  end
end
