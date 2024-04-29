class OperationRepo < Formula
  include Language::Python::Virtualenv

  desc "Creates an operation folder repo like Git commandline."
  homepage "https://github.com/elprofesor96/operation.repo"
  url "https://github.com/elprofesor96/operation.repo/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "98d393dc2832e35a4c1503b7ecd69863ee8591efb3298994992645c095798c96"
  license "MIT"

  depends_on "python@3.12"


  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/ea/85/3ce0f9f7d3f596e7ea57f4e5ce8c18cb44e4a9daa58ddb46ee0d13d6bff8/tqdm-4.66.2.tar.gz"
    sha256 "6cd52cdf0fef0e0f543299cfc96fec90d7b8a7e88745f411ec33eb44d5ed3531"
  end


  def install
    virtualenv_install_with_resources

   # (etc/"operation.repo").mkpath
   # etc.install "op.conf" => "operation.repo/op.conf"
  end

  test do
   
  end
end
