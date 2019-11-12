# utfunzombie

A tool to convert decomposed characters into precomposed characters

## Background

Historically, character sets had a single value for a character. For example, in ISO-8859-1 (aka "Latin 1"), the value `0xE4` represents the character "ä". To maintain compatiblity with such older standards, Unicode also has some single codepoints, like `U+00E4 LATIN SMALL LETTER A WITH DIAERESIS`. This is called the _precomposed_ form.

However, for greater flexibility, Unicode can also represent these characters as a combination, in this case of `LATIN SMALL LETTER A (U+0061)` and `COMBINING DIAERESIS (U+0308)`. This is called the _decomposed_ form.

## The Problem

Some fonts do not render the decomposed form of some characters, even some professionally designed ones. If they reach a decomposed character, most systems will default to a font that can display them, creating a weird looking character.

## utfunzombie

This utility takes a path to a file, and outputs the precomposed form of that file
