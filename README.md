# Hygg Project Setup Guide

## Requirements

1. Python >= 3.12

2. Poetry 2.1

3. Docker

## Installation

1. Create and activate your virtual environment:

```bash
python3 -m venv venv
source venv/bin/activate
```

2. Setup the project:

```bash
make setup
```

## Useful Commands

- Run the Project in Development Mode:

```bash
make dev
```

- Update after a Pull:

```bash
make update
```

- Run the Linter:

```bash
make lint
```

- Start the Database Only:

```bash
make start-db
```

- Stop the Database:

```bash
make stop-db
```
