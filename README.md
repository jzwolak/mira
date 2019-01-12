MIRA - The Genome and Transcriptome Assembler and Mapper

# Scope

A quick note at the start. The scope I recommend MIRA
for is:

- For genome de-novo assemblies or mapping projects, haploid organisms up
  to 20 to 40 megabases should be the limit.
- Do not use MIRA if you have PacBio or Oxford Nanopore reads. Then again,
  for polishing those assemblies with Illumina data, MIRA is really good.
- For mapping projects, do not use MIRA if you expect splicing like, e.g.,
  RNASeq against an eukaryotic genome.
- Lastly, Illumina projects with more than 40 to 60 million reads start to
  be so resource intensive that you might be better served with other
  assemblers or mapping programs. I know some people use MIRA for de-novo
  RNASeq with 300 million reads because they think it's worth it, but they
  wait more than a month then for the calculation to finish.

# Building

Before trying to build MIRA yourself, please consider using the pre-built
binaries which are available for Linux and Mac OSX. If your really must build
yourself, consult the file "Definitive Guide to MIRA", chapter "Installation"
for more information on pre-requisites, available options and walkthrough for
common systems. There's also a section on building documentation in the same
file.

# Need help?

Please consult the extensive online documentation which covers more or less
all aspects of MIRA. If questions persist, please subscribe to
  [the MIRA talk list](https://www.freelists.org/list/mira_talk)
and mail general questions to the list via this address:
   mira_talk@freelists.org

To report bugs or ask for new features, please use
 [the GitHub issue system](https://github.com/bachev/mira/issues)

This ensures that requests do not get lost.
