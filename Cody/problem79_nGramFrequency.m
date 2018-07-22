function hifreq = problem79_nGramFrequency(s, n)
%PROBLEM79_NGRAMFREQUENCY DNA N-Gram Distribution
%
% Given a string s and a number n, find the most frequently occurring n-gram in
% the string, where the n-grams can begin at any point in the string. This
% comes up in DNA analysis, where the 3-base reading frame for a codon can
% begin at any point in the sequence.
%
% So for
%   s = 'AACTGAACG'
% and
%   n = 3
% we get the following n-grams (trigrams):
%   AAC, ACT, CTG, TGA, GAA, AAC, ACG
% Since AAC appears twice, then the answer, hifreq, is AAC. There will always
% be exactly one highest frequency n-gram.
%
% This problem was originally inspired by a MATLAB Newsgroup discussion:
% http://www.mathworks.com/matlabcentral/newsreader/view_thread/278173
freqs = containers.Map('KeyType', 'char', 'ValueType', 'uint32');
sz = length(s);
for i = 1:sz - n + 1
  ngram = s(i:i + n - 1);
  if freqs.isKey(ngram)
    freqs(ngram) = freqs(ngram) + 1;
  else
    freqs(ngram) = 1;
  end
end
[~, ix] = sort(cell2mat(freqs.values), 'descend');
k = freqs.keys;
hifreq = char(k(ix(1)));
end
