# Soligant's writing project skeleton

## Structure
* `chapters/` contains a file for each chapter
* `pages/` contains other pages to be included in the document
* `build/` only present for generating the document
* `notes/` authors notes and resources

* `packages/preamble.sty` document setup
* `packages/dictionary.sty` list of names to be linked to notes

* `book.tex` root TeX file


## Short macro reference

<table>
<tr>
<th>Macro name</th>
<th>Meaning</th>
<th>Example</th>
</tr>

<tr>
<td><code>\newname</code></td>
<td>Defines a name that has it's own notes page</td>
<td>
Defining a new name:<br/>
<code>\newname[char:thomas]{\Thomas}{Thomas}</code><br/>
Now, whenever the macro <code>\Thomas</code> is placed in the document, it links to where <code>\label{char:thomas}</code> is placed, and is rendered as "Thomas".
</td>
</tr>

<tr>
<td><code>\chref</code></td>
<td>Links to a chapter</td>
<td>
Defining a new name:<br/>
<code>\chref[1]</code>
Llinks to where <code>\label{ch:1}</code> is placed and is rendered as >1:

I use this in my notes in the sense of "From chapter X forward"
</td>
</tr>

</table>

## Including/Hiding notes
To include notes to the output, add the `draft` option to the documentclass:
```latex
\documentclass[draft,twoside]{book}
```
To hide notes to the output, remove the `draft` option from the documentclass:
```latex
\documentclass[twoside]{book}
```
