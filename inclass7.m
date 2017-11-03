%Inclass assignment 7. 
% 1. The gene Cdx2 is a crucial transcription factor involved in number of
% developmental stages. Use the UCSC genome browser to answer the following questions
% about it:

% A. What human chromosome is it located on?

%It is located on chromosome 13
% B. How many exons does it have?

%3 exons

% C. What is the precise position of its stop codon in the genome?

%27,962,136
% D. Identify at least one difference in sequence between human and mouse
CDX2

%In the human genome, the nucleotide at position 27962146 is G whereas in the mouse genome the nucleotide at the same position is T
% E. In which human tissues is it expressed most abundantly?

It is expressed in the gastrointestinal tract



%2. A. Use the unigene database to find the accession number for a genbank
% entry containing the complete coding sequence of Cdx2. 

NM_0012565

% B. Use MATLAB to read the genbank information corresponding to that
% accession number. 


genbank_dat2 = getgenbank('NM_001265.5');


% C. Use the information read in to find the position of the start and stop
% codon within the sequence. What are the parts of the sequence before the start codon 
% and after the stop codon?

start = genbank_dat2.CDS.indices(1)
stop = genbank_dat2.CDS.indices(2)

Promoter sequence and polyA tail.

% D. Use the protein_id to read the information on the protein. Use the
% information you read to determine where the homeobox domain of the protein is.
% Hint: see the field "Features". 

cdx2protein = getgenpept(genbank_dat2.CDS.protein_id);
disp(cdx2protein.Features);


%According to this data, the homeobox is located at region 190-242.
