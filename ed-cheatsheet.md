# ed text editor cheatsheet
written by catroidvania (using ed of course!)

## options

calling ed in the command line opens ed (duh)

-s	supress diagnostics, whatever that is
-x	prompt for an encryption key, whatever that is
-p _	uses string _ as a command prompt
file	reads contents of file into the buffer upon opening

## line addresses

ed stores its buffer by lines
1 is the first line, and $ is the last line (variable)

.	current line in the buffer
$	last line in the bufffer
.=	print current line number
$=	print last line number (file length in lines)
n	nth line in the buffer
-	previous line
-n	nth previous line
+	next line
+n	nth next line
, or %	all lines in the buffer, 1,$ also works
;	current line to last line in the buffer, .,$ also works
/r/	jump to next line containing regex r, // repeats last search
?r?	previous line containing regex r, ?? repeats last search
`m	line marked m using the k command (like vim macroes)

## regex

i wont go into regex here because its a whole other language
seriously why dont they make it turing complete while they're at it huh

## commands

commands are used in command mode as opposed to input mode
in command mode you put in commands (obviously)
in input mode any text you type changes line in the buffer
enter just . on a newline to exit input mode

reminder that calling ed with the -p option helps a lot to differenciate
between command and input mode since you get a prompt in command mode

[n]a	append text to the buffer after line n, if no line is given it will 
	add text after the current line, sets current line to the last line
	entered

[n,m]c	change (overwrite) lines in the buffer from range n-m, sets current 
	address to the last line entered

[n,m]d	deletes lines in the buffer in range n-m, sets the current address 
	to the line after the delete range if possible, or the line before
	if not

e file	deletes the contents of the buffer and edits file instead, be very
	careful with this!

e !cmd	edits the stdout of terminal command cmd, also delete the current 
	buffer so be careful once again

E file	like e but it doesnt offer a warning, BE CAREFUL!!

f file	sets the default filename to file, if no file is given it prints the
	current default filename

H	togge the printing of error messages, off by default

h	print explanation of last error

[n]i	insert text before line n, sets current address to the last line 
	entered

[n]k_	mark line n as lowercase letter _, address marked lines with '_
	the mark is removed when the line is deleted or modified

u	undo the last command and goes back to the previous current address
	be carful with this one!

w file	writes buffer to file, clearing any previous file contents, if no file
	is given it uses the default filename, you can supply a range of lines
	to write like in other commands

wq file	does a w command followed by a q command like in vi

W file	like w but it appends to file instead

!cmd	executes cmd in the command line

q	quit ed, remeber to write your changes!

Q	force quit ed without saving

$/.=	prints the line number of the given line

[n,m]l	prints lines in range n-m but with a prompt for when the line is too
	long for one screen, sets the current address to the last line entered

[n,m]m_	move lines in range n-m to after the line _, sets the current address
	to the last line moved

[n,m]n	prints lines in range n-m with line numbers, sets the current address
	to the last line printed

[n,m]p	prints lines in range n-m, sets current address to the last line printed

P	toggles the command prompt on and off

[n,m]s/f/r/[gn]
	replaces text vi style that matches regex f with r, default only r
	replaces the first match, g suffix replaces all matches in the range
	n suffix replaces the nth match, does not change current address

	enter s without anything after to repeat last substitution

[n,m]t_	copy (transfer (teleport)) lines in range n-m to after line _ the 
	current address is set the last line copied

---

written by catroidvania on thu oct 19 2023

have fun ed-ing!
