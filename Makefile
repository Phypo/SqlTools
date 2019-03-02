all:: DialogGraf4Request.class FrameSqlDataTable.class  FrameSqlServer.class FrameSqlTerm.class GrafViewer2D.class GrafViewerControler.class GrafViewer.class IniParam.class MyTableRenderer.class SqlDataResult.class SqlDataTableAction.class SqlOutListener.class SqlRowLine.class SqlThreadRequest.class SqlTools.class


FREECHART_JAR=${JFREECHART_PATH}/jfreechart-1.0.19.jar:${JFREECHART_PATH}/jcommon-1.0.23.jar
MARIADB_JAR=~/bin/mariadb-java-client-1.1.10.jar

clean::
	rm *.class 

%.class: %.java
	javac   -classpath ../../..:${FREECHART_JAR}:${MARIADB_JAR} -deprecation -g  $*.java

