class Coda < Formula
  desc "This is a test"
  homepage "https://github.com/CodaProtocol/coda"
  url "https://s3-us-west-2.amazonaws.com/wallet.o1test.net/coda-test.tar"
  sha256 "a93bb08ef66509db50f2683d77a33fccbf26dcf6175d4bb58a8f1333194a6625"

  depends_on "openssl"
  depends_on "libsodium"
  depends_on "gmp"
  depends_on "libomp"
  depends_on "libffi"
  depends_on "miniupnpc" => :recommended

  bottle :unneeded

  def install
    bin.install("coda")
    bin.install("kademlia")
    system("mkdir", "-p", "/usr/local/var/coda")
    system("cp", "-r", "keys/", "/usr/local/var/coda")
  end
end
