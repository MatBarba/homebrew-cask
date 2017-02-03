#Template generated on 2017-02-03 15:37:51 +0000
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class GenebuildAnnotation < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the GenebuildAnnotation formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '2.4'

  depends_on 'ensembl/ensembl/exonerate09'
  depends_on 'ensembl/ensembl/exonerate22'
  depends_on 'ensembl/ensembl/ensc'
  depends_on 'ensembl/ensembl/bioperl-161'
  depends_on 'ensembl/ensembl/blast'
  depends_on 'ensembl/ensembl/eponine'
  depends_on 'homebrew/science/genewise'
  depends_on 'homebrew/science/trnascan'
  depends_on 'ensembl/moonshine/genscan'
  depends_on 'ensembl/moonshine/pmatch'
  depends_on 'ensembl/ensembl/genblast'
  depends_on 'ensembl/ensembl/vienna-rna'
  depends_on 'ensembl/ensembl/infernal'
  depends_on 'homebrew/science/muscle'
  depends_on 'ensembl/ensembl/kent'
  depends_on 'ensembl/ensembl/rmblast'
  depends_on 'homebrew/science/trf'
  depends_on 'homebrew/science/recon'
  depends_on 'homebrew/science/repeatscout'
  depends_on 'ensembl/ensembl/repeatmodeler'
  depends_on 'ensembl/ensembl/repeatmasker'
  depends_on 'ensembl/moonshine/tcdust'

  def install
    File.open('genebuild-annotation', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'genebuild-annotation'
  end
end
    