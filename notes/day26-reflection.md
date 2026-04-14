# Day 26 Reflection
## ¿Que aprendi hoy? 
Aprendí a inspeccionar pipelines de CI directamente desde la terminal 
usando GitHub CLI. En lugar de abrir el navegador, puedo ver el estado 
de cada run, descargar los logs completos y obtener los artifacts 
generados, todo con comandos como gh run list y gh run view.
## ¿Qué información contiene el artifact del pipeline? 
El artifact build-info.txt contiene tres datos clave: el commit SHA 
que disparó el build, la fecha y hora en que se ejecutó el pipeline, 
y el tag de la imagen Docker generada. Esto permite rastrear exactamente 
qué código produjo qué imagen en qué momento.
## ¿Qué significa el error 'No such container'? 
No es un error real — es un patrón de limpieza defensiva. El pipeline 
intenta eliminar el contenedor test-container antes de crearlo, para 
garantizar que no queden restos de ejecuciones anteriores. Si el 
contenedor no existe, Docker lanza ese mensaje pero el || true lo 
absorbe y el pipeline continúa sin fallar. Se llama idempotent cleanup.
