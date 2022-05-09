# Code for Estimating the Effects of Crime Maps (Pre-Registration/Protocol)
Code used in the protocol for the estimating the effect of crime maps project (https://osf.io/preprints/socarxiv/9zupw/). Include code for the supplementary materials.

## How to use

The steps are:
1. Set up the directory structure
2. Download the raw data public domain data
3. Run R scripts

### Folder structure
File directory structure is this:

master folder /// for data and code
|-> \code folder //// this folder
    |-> .\saved cleaned data /// find cleaned outputs here
|-> \data /// raw data folder; see description

### Data sources

The raw data coomes from:
- police.uk data: https://data.police.uk/ (archived data from Dec 2013: checksum d24b0ed41359af22a7538604cfcfef74)
- house prices: https://www.gov.uk/guidance/about-the-price-paid-data
- ONS postcode lookup: https://geoportal.statistics.gov.uk/datasets/7606baba633d4bbca3f2510ab78acf61

### Code to replicate

Run 00-utils.R first to load in dependencies and check file paths. All file paths are relative (to this folder).

The scripts need to create the inferred list of snap points (in order):
- makeFile01 (South Yorkshire only; amend line 63 to use the entire country)
- makeFile03
- makeFile06 (Check output in /saved cleaned data folder)

To recreate the analysis in supplement, run these additional scripts:
- makeFile02
- makeFile03
- makeFile04
- makeFile06
- makeFile07
- preReg01
