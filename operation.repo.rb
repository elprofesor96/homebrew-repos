class OperationRepo < Formula
  include Language::Python::Virtualenv

  desc "Creates an operation folder repo like Git commandline."
  homepage "https://github.com/elprofesor96/operation.repo"
  url "https://github.com/elprofesor96/operation.repo/archive/refs/tags/v2.1.1.tar.gz"
  sha256 "cc93c45ef5692cc84de51d832cb3fbc3678528294d9ffff99d8e5771666f7044"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources

   # (etc/"operation.repo").mkpath
   # etc.install "op.conf" => "operation.repo/op.conf"
  end

  test do
   
  end
end
