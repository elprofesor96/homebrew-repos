class OperationLogger < Formula
  include Language::Python::Virtualenv

  desc "Terminal/Tmux session logger for security professionals and devs."
  homepage "https://github.com/elprofesor96/operation.logger"
  url "https://github.com/elprofesor96/operation.logger/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6f5ca114202242193fe057886d5085a1fe6a11de7910c5077b1a17fa8c7394e3"
  license "CC-BY-NC-ND-4.0"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "oplogger version", shell_output("#{bin}/oplogger --version")
    assert_match "Usage", shell_output("#{bin}/oplogger --help")
  end
end
