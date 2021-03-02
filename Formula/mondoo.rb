class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="3.5.0"
  current_sha256="39dc63aa643f8cae1b422bb45267b497afa09e8171bff1fc9e5dde6446f88196"

  desc "Mondoo Labs"
  homepage "https://mondoo.io"
  url "https://releases.mondoo.io/mondoo/#{current_version}/mondoo_#{current_version}_darwin_amd64.tar.gz"
  version current_version
  sha256 current_sha256.downcase

  def install
    bin.install "mondoo"
  end

  test do
    system bin/"mondoo", "version"
  end
end
