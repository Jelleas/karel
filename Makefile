CLASSPATH = .:karel.jar:acm.jar
CFLAGS = -cp $(CLASSPATH)

JAVA_FILES = CheckerboardKarel.java MazeSolvingKarel.java StoneMasonKarel.java \
                Pyramid.java Rainbow.java FindRange.java Hailstone.java
CLASS_FILES = $(JAVA_FILES:.java=.class)


all: checkerboard mazesolving stonemason pyramid rainbow range hailstone

checkerboard: CheckerboardKarel.class

mazesolving: MazeSolvingKarel.class

stonemason: StoneMasonKarel.class

pyramid: Pyramid.class

rainbow: Rainbow.class

range: FindRange.class

hailstone: Hailstone.class

%.class: %.java
	/usr/lib/jvm/java-1.6.0-openjdk.x86_64/bin/javac $(CFLAGS) $<


submit: pset1.zip

pset1.zip: $(JAVA_FILES)
	zip $@ $^


clean:
	rm -f *.class
