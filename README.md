# Hygg Project Setup Guide

## Installation

1. Create your local settings file:

```bash
mkdir local
cp hygg/project/settings/templates/settings.dev.py ./local/settings.dev.py
```

2. Create and activate your virtual environment:

```bash
python3 -m venv venv
source venv/bin/activate
```

3. Install the project dependencies:

```bash
make update
```

4. Run the server:

```bash
make runserver
```

5. Run lint:

```bash
make lint
```
