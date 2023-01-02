---
title: Squoosh!
image: squoosh
tags:
- Google Chrome Labs
- Open Source
- Tools
- Image Compression
- CLI Tools
- Graphic Design
---
## Description

Squoosh is an image compression web app that reduces image sizes through numerous formats.[^1]

Squoosh can be used via API or CLI to compress many images at once.

### Squoosh CLI

Squoosh CLI is an experimental way to run all the codecs from the Squoosh web app via command line using WebAssembly.

The Squoosh CLI uses a worker pool to parallelize processing images. This way you can apply the same codec to many images at once.

Note: Squoosh CLI is currently not the fastest image compression tool in town and doesn’t aim to be. It is, however, fast enough to compress many images sufficiently quick at once.

#### Installation

The Squoosh CLI can be used straight from the command line without installing using npx:

```
$ npx @squoosh/cli <options...>
```

You can also install the Squoosh CLI:

```
$ npm i -g @squoosh/cli
$ squoosh-cli <options...>
```

#### Example Usage

```
npx @squoosh/cli --mozjpeg auto source-directory/ace.jpg -d output-directory/
```
This example will take a jpg file input, apply compression, and output a jpg file to the specified directory.

#### Excample Script

```
#!/bin/bash
# This script requires an input path, and output path
# this path is can be relative or absolute
# for each file in a specified path this script will 
# try to pass that file to the squoosh-cli tool
# squoosh-cli will attempt to perform compression and 
# save the output as a jpg file in the path specified
echo What is the path to the image archive?
read varinput
echo What is the path to save images?
read varoutput
for file in $varinput/*
do
  npx @squoosh/cli --mozjpeg auto "$file" $varoutput
done
```

## Sources

[^1]: [GoogleChromeLabs - squoosh - Squoosh CLI](https://github.com/GoogleChromeLabs/squoosh/tree/dev/cli)
[^2]: [Squoosh Web App](https://squoosh.app/)