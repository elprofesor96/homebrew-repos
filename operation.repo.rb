class OperationRepo < Formula
  include Language::Python::Virtualenv

  desc "Creates an operation folder repo like Git commandline."
  homepage "https://github.com/elprofesor96/operation.repo"
  url "https://github.com/elprofesor96/operation.repo/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "8e04a36cb12fd216f3b05bddbf96e3b096993f4c2b516ab5a87ce0f308210060"
  license "MIT"

  #depends_on "python@3.12"


  resource "tqdm" do
    url "https://github.com/tqdm/tqdm/archive/refs/tags/v4.66.4.tar.gz"
    sha256 "ffaf75fceb3d7862cf3eb0a1dc2688641cb09fb2b44394d49d7977122785106c"
  end


  def install
    virtualenv_install_with_resources

   # (etc/"operation.repo").mkpath
   # etc.install "op.conf" => "operation.repo/op.conf"
  end

  test do
   
  end
end
