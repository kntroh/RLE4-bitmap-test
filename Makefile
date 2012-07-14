
RM = del

SRC = test.d

LIB = -L+advapi32.lib \
	-L+comctl32.lib \
	-L+comdlg32.lib \
	-L+gdi32.lib \
	-L+kernel32.lib \
	-L+shell32.lib \
	-L+ole32.lib \
	-L+oleaut32.lib \
	-L+olepro32.lib \
	-L+oleacc.lib \
	-L+user32.lib \
	-L+usp10.lib \
	-L+msimg32.lib \
	-L+opengl32.lib \
	-L+shlwapi.lib \
	-L+dwt-base.lib \
	-L+org.eclipse.swt.win32.win32.x86.lib \

FLAGS_DEBUG = -unittest -g -debug -L"/exet:nt/su:console:4.0"
FLAGS_RELEASE = -O -release -L"/exet:nt/su:windows:4.0"

all : $(SRC)
	dmd $(DFLAGS) $(SRC) $(LIB) $(FLAGS_DEBUG)

release : $(SRC)
	dmd $(DFLAGS) $(SRC) $(LIB) $(FLAGS_RELEASE)

clean :
	$(RM) *.exe *.obj *.map
