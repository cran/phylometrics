## General purpose of the package
This package provides:
1) an efficient algorithm to generate phylogenies under a trait state-dependent speciation and extinction model, with a fixed number of extant taxa with a given trait state and a fixed sampling fraction of taxa with each trait state.
2) a pipeline for estimating the false positive rate and the statistical power of tests on phylogenetic metrics.
3) a tractable means of assessing model inadequacy in model-fitting approaches that have been widely used to test hypptheses about trait state-dependent diversification processes.

## Examples
A simple example for each of the purpose of the package is given in the paper:
Hua, X. and Bromham, L. 2015. Phylometrics: An R package for detecting macroevolutionary patterns, using phylogenetic metrics and backward tree simulation. Methods in Ecology and Evolution (under review).

## Installation
install.packages(phylometrics)

## Major components
The package includes two main functions: ‘treesim’ and ‘treestat’. 
Function treesim generates phylogenetic trees with a binary trait given a fixed number of extant taxa and a fixed sampling fraction of taxa with each state. 
Function treestat conducts a significance test on a phylogenetic metric. Users can use the four existing metric functions in the package or write their own metric function and input the function to treestat. See the above paper for instruction on writing a metric function.
The four existing metric functions are:
1)	Tip Age Rank Sum (TARS) tests whether the tips with the trait of interest (state 1) tend to be shorter or longer than those without (state 0), using the Wilcoxon rank-sum test.
2)	Number of Tips per Origin (NoTO) tests whether the minimum number of inferred origins required to explain the pattern of trait distribution is significantly different from that expected under a null model of trait evolution. 
3)	Sum of Sister Clade Differences (SSCD) tests whether the trait of interest is more or less clustered on a phylogeny than expected under a null model of trait evolution.
4)	Fritz & Purvis D statistic (FPD) calculates the difference between observed SSCD and expected SSCD under Brownian motion, scaled by the difference between SSCD under random distributions of the trait across the tips of the phylogeny and SSCD under Brownian motion.
