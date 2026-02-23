# Pipeline Draft — Diseño Inicial

Fecha: 22/02/2026
Estado: Definición manual antes de automatizar

## Flujo actual (manual)

1. Se modifica el código.
2. Se construye imagen manualmente.
3. Se ejecuta contenedor manualmente.
4. Se valida en navegador.
5. Se hace commit.

## Flujo esperado en CI/CD (conceptual)

Evento de inicio:
git push

El sistema debería ejecutar automáticamente:

Paso 1 — Validar repositorio recibido.
Paso 2 — Ejecutar proceso de build reproducible.
Paso 3 — Verificar que el build termina sin errores.
Paso 4 — Preparar artefacto listo para despliegue.

Todavía no se ejecuta nada.
Solo se describe el comportamiento esperado.

## Relación con este repositorio

notes/ → documentación del proceso
ci-cd/ → definición futura del pipeline
docker/ → lugar donde vivirá el build más adelante
