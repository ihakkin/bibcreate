# BibCreate
Create bibtex citations.

Tiimitapaamiset viikottain: 
Ke klo 10-12,
To klo 09.45-10.45,
To klo 11-11.30

## Links
Backlogs:
https://docs.google.com/spreadsheets/d/1VMvwVkrx3sCwMhOg9KaBRGVdFl2taQKhlVoZCgXNELQ/edit?gid=1#gid=1

## Definition of Done
- The acceptance criteria of the user story are met
- Functionality has been tested
- Testing is automated
- Integration works
- Quality of the code is good
- The customer approves the user story


## Installation Guide

### Follow these steps to set up and run the project locally:

#### 1. Clone the Repository.

SSH
```
git clone git@github.com:ranilar/BibCreate.git
```
HTTPS
```
git clone https://github.com/ranilar/BibCreate.git
```

#### 2. Navigate to the project directory.
```
cd BibCreate
```

#### 3. Install dependencies.
```
poetry install
```

#### 4. Create a .env file in the directory.

Add following contents to .env file.
For DATABASE_URL you can use either a local instance of postgres or hosted solution such as aiven.io
```
DATABASE_URL=postgresql:///DATABASE_NAME
TEST_ENV=true
SECRET_KEY=satunnainen_merkkijono
```

#### 5. Initialize database.
```
pytho3 src/db_helper.py
```

#### 6. Launch virtual environment.
```
poetry shell
```

#### 7. Run the program.
```
python3 src/index.py
```

