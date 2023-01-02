---
title: How to Combine Multiple CSV Files using Python
image: python
tags:
- Educational
- Python
- Pandas
---
# Description

This script helped me take dozens of csv files and combine them into one large csv file.

You just drop all the csv files into the work folder, run the script and it spits out a combined csv file.

# Instructions

## Setup

- Create a project folder with a sub-folder named `work`.
- Copy the `requirements.txt` file (below) to the root of your project folder.
- Create a python virtual environment in your project folder:
  - `$ python3 -m venv .venv`
- Activate the virtual environment:
  - `$ source .venv/bin/activate`
- Install the project requirements
  - `$ pip install -r requirements.txt`
- Copy the `example.py` file (below) to the root of your project folder.

## Usage

- Place multiple csv files into the 'work' folder.
- To process the csv files run the python script, `$ python example.py`
- If successfull, a new file named, `combined.csv` should now exist in the 'work' folder.

## [requirements.txt](requirements.txt)

```python
numpy==1.22.3
pandas==1.4.2
python-dateutil==2.8.2
pytz==2022.1
six==1.16.0
```

## [example.py](example.py) [^1]
``` python
import os
import glob
import pandas as pd

#folder that contains csv files
os.chdir("work")
extension = 'csv'
#generate list of files
all_filenames = [i for i in glob.glob('*.{}'.format(extension))]
#combine all files in the list
combined_csv = pd.concat([pd.read_csv(f) for f in all_filenames ])
#export to csv
combined_csv.to_csv( "combined.csv", index=False, encoding='utf-8-sig')
```
## Sources

[^1]: https://www.freecodecamp.org/news/how-to-combine-multiple-csv-files-with-8-lines-of-code-265183e0854/