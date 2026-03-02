class OperationRepo < Formula
  include Language::Python::Virtualenv

  desc "Git-like CLI tool for organizing operations, pentests, and projects"
  homepage "https://github.com/elprofesor96/operation.repo"
  url "https://github.com/elprofesor96/operation.repo/archive/refs/tags/v3.1.0.tar.gz"
  sha256 "0f1eb25bc4a2492e4417493fffafbd299b1abf42bdfe35fc93c228cad8ba9242"
  license "CC-BY-NC-ND-4.0"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "op version", shell_output("#{bin}/op --version")
    assert_match "Usage", shell_output("#{bin}/op --help")
  end
end
