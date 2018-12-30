

help:
	@echo 'help usage:'
	@echo '    dos    run dosbox'

dos:
	@DOSBox -conf dosbox-0.74-2.conf -noconsole 

clean:
	@rm -rf *.obj *.OBJ *.exe *.EXE
	@rm -rf stdout.txt stderr.txt