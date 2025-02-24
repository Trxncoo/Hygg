# Hygg Project Setup Guide

## Configuration

The project uses a flexible settings system that allows for different configuration environments.

### Settings Structure

1. Create a `local` folder in your project root
2. Add your settings file (default: `settings.dev.py`) in the local folder

The settings system loads configurations in the following order:

- base.py
- custom.py
- local/settings.dev.py (customizable)
- envvars.py
- docker.py

### Environment Variables

You can customize the settings path using environment variables:

- `HYGGSETTINGS_LOCAL_SETTINGS_PATH`: Override the default local settings path

## Installation

1. Create your local settings file:

```bash
mkdir local
cp hygg/project/settings/templates/settings.dev.py ./local/settings.dev.py
```
