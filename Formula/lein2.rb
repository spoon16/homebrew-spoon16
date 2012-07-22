require 'formula'

class Lein2 < Formula
  homepage 'https://github.com/technomancy/leiningen'
  url 'https://raw.github.com/technomancy/leiningen/preview/bin/lein'
  sha1 '8b46b69d66aa774dc35ffef7b491d72b2a5039a0'
  version '2.latest'

  def install
    system "mv ./lein ./lein2"
    bin.install "lein2"
    system "chmod 755 #{bin}/lein2"
    system "#{bin}/lein2"
  end

  def caveats; <<-EOS.undent                                                                                                         
    Dependencies installed to:                                                                                                       
      ~/.m2/repository/                                                                                                              
                                                                                                                                     
    Standalone jar installed to:                                                                                                     
       ~/.lein/                                                                                                                      
    EOS                                                                                                                              
  end

end
