---
title: "Markdown 2 PDF Generator"
subject: "Markdown 2 PDF Generator"
author:
  - "Peter Pfläging <peter@pflaeging.net>"
date: 2020-11-24 v1
lang: en
toc: false
---
# Markdown 2 PDF Generator

## What is it?

md2pdf is a small set of configs and a Makefile to help generating beautiful PDF's from markdown files.

## Required

- pandoc
- tex / latex / xelatex
- gnumake

## HowTo

### Initial setup for folder

Copy the following files from this repo to your destination directory:

- Makefile
- pdf.yaml
- yourlogo.png (referenced in pdf.yaml)

Adapt your pdf.yaml:

- `\newcommand{\company}{My Company}`
- `\newcommand{\companylogo}{\includegraphics[height=14pt]{yourlogo.png}}`
- `\newcommand{\titlelogo}{\includegraphics[height=60pt]{yourlogo.png}}`
- `\newcommand{\distribution}{Distribution: my customers}`

### Per document

Add this (adapted) in front of your document:

```yaml
---
title: "Markdown 2 PDF Generator"
subject: "Markdown 2 PDF Generator"
author:
  - "Peter Pfläging <peter@pflaeging.net>"
date: 2020-11-24 v1
lang: en
toc: false
---
```

Then run: `make`

Done!