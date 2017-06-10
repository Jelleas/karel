CLASSPATH = .:karel.jar:acm.jar
CFLAGS = -cp $(CLASSPATH)

JAVA_FILES = CheckerboardKarel.java MazeSolvingKarel.java StoneMasonKarel.java \
                CollectNewspaperKarel.java
CLASS_FILES = $(JAVA_FILES:.java=.class)


all: checkerboard mazesolving stonemason collectnewspaper

checkerboard: CheckerboardKarel.class

mazesolving: MazeSolvingKarel.class

stonemason: StoneMasonKarel.class

collectnewspaper: CollectNewspaperKarel.class


%.class: %.java
	/usr/lib/jvm/java-1.6.0-openjdk.x86_64/bin/javac $(CFLAGS) $<


submit: pset1.zip

pset1.zip: $(JAVA_FILES)
	zip $@ $^


clean:
	rm -f *.class
