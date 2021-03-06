#Template generated on 2017-07-19 17:02:18 +0100
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class EgAlignment < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the EgAlignment formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '2'

  depends_on 'ensembl/ensembl/blast'
  depends_on 'ensembl/ensembl/emboss'
  depends_on 'ensembl/ensembl/exonerate22'
  depends_on 'ensembl/ensembl/exonerate24'
  depends_on 'fontconfig' => ["without-docs"]
  depends_on 'homebrew/science/genometools'
  depends_on 'homebrew/science/bowtie2'
  depends_on 'homebrew/science/bwa'
  depends_on 'homebrew/science/gmap-gsnap'
  depends_on 'homebrew/science/hisat2'
  depends_on 'homebrew/science/tophat'

  def install
    File.open('eg-alignment', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'eg-alignment'
  end
end
    