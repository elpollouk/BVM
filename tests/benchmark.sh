#! /bin/bash
echo Running Mandelbrot x3
time bin/bvm -fast samples/mandelbrot.bf > /dev/null && time bin/bvm -fast samples/mandelbrot.bf > /dev/null && time bin/bvm -fast samples/mandelbrot.bf > /dev/null
echo Done.