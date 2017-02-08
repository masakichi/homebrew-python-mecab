require 'formula'

class PythonMecab < Formula
  homepage 'http://mecab.googlecode.com/svn/trunk/mecab/doc/index.html'
  url 'https://drive.google.com/uc?export=download&id=0B4y35FiV1wh7cENtOXlicTFaRUE'
  sha256 'e073325783135b72e666145c781bb48fada583d5224fb2490fb6c1403ba69c59'

  depends_on 'python'
  depends_on 'mecab'
  depends_on 'mecab-ipadic'

  def install
    ENV['CFLAGS'] = '-Qunused-arguments'
    ENV['CPPFLAGS'] = '-Qunused-arguments'
    system 'python', 'setup.py', 'install'
  end
end
