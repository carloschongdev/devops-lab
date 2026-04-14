# Day 27 Reflection
## ¿Los dos builds produjeron el mismo hash?
No produjeron el mismo hash. Aunque el Dockerfile y el código fuente 
eran idénticos, Docker embebe el timestamp del momento exacto del build 
dentro de los metadatos de la imagen. Como los dos builds se ejecutaron 
en momentos diferentes, el ID resultante fue distinto. El contenido 
real de las capas era el mismo, pero los metadatos diferían.
## ¿Qué significa que un build sea determinístico?
Un build determinístico es aquel que produce exactamente el mismo 
resultado cada vez que se ejecuta con el mismo código fuente. En la 
práctica, los builds de Docker no son completamente determinísticos 
por defecto porque incluyen timestamps variables. En producción esto 
se resuelve con técnicas como SOURCE_DATE_EPOCH o herramientas de 
build reproducible.
## ¿Para qué sirve el checksum de un artifact?
El checksum SHA-256 es una huella digital del archivo. Sirve para 
verificar que el artifact no fue modificado después de ser generado — 
si alguien altera el contenido del archivo, el checksum cambia. En 
pipelines de producción se usa para garantizar la integridad de los 
artifacts entre el momento en que se generan y el momento en que se 
despliegan.