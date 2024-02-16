= Operating Systems - Dr. Drachova

= Jan 25 2024

= Linux compilation steps

- Preprocessor 
    - includes header files, converts macros, conditional compilation, line control

= Line Control
6 Line Control

- The C preprocessor informs the C compiler of the location in your source code where each token came from. Presently, this is just the file name and line number. All the tokens resulting from macro expansion are reported as having appeared on the line of the source file where the outermost macro was used. We intend to be more accurate in the future.

- If you write a program which generates source code, such as the bison parser generator, you may want to adjust the preprocessor’s notion of the current file name and line number by hand. Parts of the output from bison are generated from scratch, other parts come from a standard parser file. The rest are copied verbatim from bison’s input. You would like compiler error messages and symbolic debuggers to be able to refer to bison’s input file.

- bison or any such program can arrange this by writing ‘line’ directives into the output file. ‘#line’ is a directive that specifies the original line number and source file name for subsequent input in the current preprocessor input file. ‘#line’ has three variants:

- line linenum

- linenum is a non-negative decimal integer constant. It specifies the line number which should be reported for the following line of input. Subsequent lines are counted from linenum.
- line linenum filename

- linenum is the same as for the first form, and has the same effect. In addition, filename is a string constant. The following line and all subsequent lines are reported to come from the file it specifies, until something else happens to change that. filename is interpreted according to the normal rules for a string constant: backslash escapes are interpreted. This is different from ‘include’.
line anything else

- anything else is checked for macro calls, which are expanded. The result should match one of the above two forms. 
‘line’ directives alter the results of the and predefined macros from that point on. See Standard Predefined Macros. They do not have any effect on idea of the directory containing the current file. 

= Linux task_struct PCB struct

 - what are interrupts? Signals sent to processor/kernel
 - what are two types? asynch vs synch
 - PSR process s register
 - ISR interrupt service routine

 = System calls
  - fork
  - exec
  - wait
  - signal

  - Shell can be parent process of other processes
  - Systemd can be process of shell

= Feb 8 2024


  - Threads - component of a process -- smallest sequence of programmed instructions that can be managed independently by a scheduler. 
  - threads have their own stack 
  - process = instance of computer program that is being executed by one or more threads. 
  - 

