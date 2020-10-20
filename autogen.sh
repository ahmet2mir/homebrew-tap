#!/bin/bash


REALEASE_VERSION=$(curl -s "https://api.github.com/repos/ahmet2mir/wildq/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
VERSION="${REALEASE_VERSION:1}"

echo "REALEASE_VERSION = '${REALEASE_VERSION}'"
echo "VERSION = '${VERSION}'"

wget "https://github.com/ahmet2mir/wildq/releases/download/${REALEASE_VERSION}/wildq-${VERSION}-darwin-x86_64.tar.gz"
wget "https://github.com/ahmet2mir/wildq/releases/download/${REALEASE_VERSION}/wildq-${VERSION}-linux-x86_64.tar.gz"

SHA_MACOS=$(sha256sum "wildq-${VERSION}-darwin-x86_64.tar.gz" | cut -d' ' -f1)
SHA_LINUX=$(sha256sum "wildq-${VERSION}-linux-x86_64.tar.gz" | cut -d' ' -f1)

echo "SHA_MACOS = '${SHA_MACOS}'"
echo "SHA_LINUX = '${SHA_LINUX}'"

cp formula.rb formula.wq.rb
cp formula.rb formula.wildq.rb

sed -i 's/{{ VERSION }}/'"${VERSION}"'/g' formula.wq.rb
sed -i 's/{{ BIN_NAME }}/wq/g' formula.wq.rb
sed -i 's/{{ CLASS_NAME }}/Wq/g' formula.wq.rb
sed -i 's/{{ SHA_LINUX }}/'"${SHA_LINUX}"'/g' formula.wq.rb
sed -i 's/{{ SHA_MACOS }}/'"${SHA_MACOS}"'/g' formula.wq.rb

sed -i 's/{{ VERSION }}/'"${VERSION}"'/g' formula.wildq.rb
sed -i 's/{{ BIN_NAME }}/wildq/g' formula.wildq.rb
sed -i 's/{{ CLASS_NAME }}/Wildq/g' formula.wildq.rb
sed -i 's/{{ SHA_LINUX }}/'"${SHA_LINUX}"'/g' formula.wildq.rb
sed -i 's/{{ SHA_MACOS }}/'"${SHA_MACOS}"'/g' formula.wildq.rb

mv formula.wq.rb Formula/wq.rb
mv formula.wildq.rb Formula/wildq.rb

git clean -fdx
