# latex-pdf-display

A little plugin I made to compile and display latex files with vim. I know there are things like this that exist but I have not been able to make them work so I made my own. Also made because I just learned how to make nvim plugins. I'm sure there's a better way to do it but since I just learned my knowledge is pretty limited but definitely looking to improve it as I learn more.

The default map for viewing a file is dsp, however this can be changed with the following in your init.vim
```
nmap dsp :call LatexDisplay()<CR>
```
