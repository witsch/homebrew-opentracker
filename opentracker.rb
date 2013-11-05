require 'formula'

class Opentracker < Formula
  homepage 'http://erdgeist.org/arts/software/opentracker/'
  head 'cvs://:pserver:anoncvs@cvs.erdgeist.org:/home/cvsroot:opentracker'

  depends_on 'libowfat'

  def install
    system "make"
    bin.install 'opentracker'
  end
end
