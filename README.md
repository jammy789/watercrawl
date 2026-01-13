# Dify 1.11.2 - Watercrawl Datasource Setup Fix

## Overview

This repository documents an issue and solution related to configuring Watercrawl as a datasource provider in Dify 1.11.2.

Initially, adding `langgenius/watercrawl_datasource` to  
`/app/api/services/datasource_provider_service.py` did not work.

However, after changing the entry to `watercrawl/watercrawl_datasource`,  
Watercrawl could be successfully configured on the "Sync from Website" page.

## Issue Description

Dify version: 1.11.2

Initial attempt:
langgenius/watercrawl_datasource  
 No effect. Watercrawl did not appear or work properly.

Working configuration:
watercrawl/watercrawl_datasource  
 Watercrawl was successfully set up and usable.

## Solution

Follow the steps below to apply the fix:

1. Download the files and run `setup.bat`
2. A modified file will be generated as a `.txt` file
3. Replace the original datasource entry with `watercrawl/watercrawl_datasource` using the generated file

## Result

After applying this fix:
- Watercrawl appears correctly on the "Sync from Website" page
- Datasource setup works as expected

## Notes

- This fix is specific to Dify 1.11.2
- Make sure you have the required permissions to modify and execute files

## Disclaimer

This repository is provided for reference and troubleshooting purposes only.  
Use it at your own risk.



