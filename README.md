# Brainfuck VM
A C++ implementation specifically targetting the Raspberry PI. Has some options to compile .bf files to ARM assembler with the envental goal of runtime jitting.

The VM has a few optimisations beyond RLE of sequential instructions that will take common Brainfuck constructs and implement them natively within the VM.
