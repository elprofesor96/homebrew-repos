class OperationRepo < Formula
  include Language::Python::Virtualenv

  desc "Creates an operation folder repo like Git commandline."
  homepage "https://github.com/elprofesor96/operation.repo"
  url "https://github.com/elprofesor96/operation.repo/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "8e04a36cb12fd216f3b05bddbf96e3b096993f4c2b516ab5a87ce0f308210060"
  license "MIT"

  depends_on "python@3.12"


  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/ea/85/3ce0f9f7d3f596e7ea57f4e5ce8c18cb44e4a9daa58ddb46ee0d13d6bff8/tqdm-4.66.4.tar.gz"
    sha256 "6c3ce127a8e4642c93eb96eb46bd1c0f9f88dac03fc7f08d00d7ffc1d2e8c1c8"
  end


  def install
    virtualenv_install_with_resources

   # (etc/"operation.repo").mkpath
   # etc.install "op.conf" => "operation.repo/op.conf"
  end

  test do
   
  end
end
