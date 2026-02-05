class OperationRepo < Formula
  include Language::Python::Virtualenv

  desc "Git-like CLI tool for organizing operations, pentests, and projects"
  homepage "https://github.com/elprofesor96/operation.repo"
  url "https://github.com/elprofesor96/operation.repo/archive/refs/tags/v3.0.0.tar.gz"
  sha256 "25d4fbfee3f5a8b97f737af7b6d711b4349b4ccc19ae398a21816eaa328959de"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "op version", shell_output("#{bin}/op --version")
    assert_match "Usage", shell_output("#{bin}/op --help")
  end
end
