# Code for Estimating the Effects of Crime Maps (Pre-Registration/Protocol)
Code used in the protocol for the estimating the effect of crime maps project (https://osf.io/preprints/socarxiv/9zupw/). Include code for the supplementary materials.

## How to use

The steps are:
1. Set up the directory structure
2. Download the raw data public domain data
3. Run R scripts

Tested under R.4.0.3 and windows 10. Test machine has an i7-4770 CPU with 16GB RAM.M

### Folder structure
File directory structure is this:

master folder /// for data and code
|-> \code folder //// this folder
    |-> \code folder\saved cleaned data /// find cleaned outputs here
|-> \data /// raw data folder; see data sources

### Data sources

The raw data coomes from:
- police.uk archival data: https://data.police.uk/data/archive/ (Dec 2013: checksum d24b0ed41359af22a7538604cfcfef74)
- police force boundary data: https://data.police.uk/data/boundaries/
- house prices: https://www.gov.uk/guidance/about-the-price-paid-data
- ONS postcode lookup: https://geoportal.statistics.gov.uk/datasets/7606baba633d4bbca3f2510ab78acf61

### Code to replicate

Run 00-utils.R first to load in dependencies and check file paths. All file paths are relative (to this folder).

The scripts need to create the inferred list of snap points (South Yorkshire only):
- makeFile01 (South Yorkshire only)
- makeFile03
- makeFile06 (Check output in /saved cleaned data folder)

To create the inferred list of snaps for the whole of England and Wales comment out lines in 00-utils and makeFile01. See code comments.


To recreate the analysis in supplement, run these additional scripts:
- makeFile02
- makeFile03
- makeFile04
- makeFile06
- makeFile07
- preReg01
- preReg02
