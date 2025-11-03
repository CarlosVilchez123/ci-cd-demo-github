
# Demo de Implementación CI/CD (GitHub Actions) — Paso a Paso

Este repositorio muestra una demo mínima pero completa de CI/CD:
- **CI:** Ejecuta pruebas unitarias y construye un artefacto ZIP.
- **CD:** Al crear una **tag** (release), publica un **GitHub Release** con el artefacto adjunto.

## 1) Requisitos
- Cuenta de GitHub.
- Python 3.10+ local para probar si quieres.

## 2) Estructura
```
ci-cd-demo-github/
├─ app.py
├─ tests/
│  └─ test_app.py
├─ requirements.txt
├─ build.sh
└─ .github/workflows/ci-cd.yml
```

## 3) Prueba local (opcional)
```bash
python -m unittest -v
bash build.sh
ls dist/
```

## 4) Subir a GitHub
1. Crea un repo vacío en GitHub (por ejemplo: `ci-cd-demo-github`).
2. Copia estos archivos y haz push al branch `main`.
3. Ve a la pestaña **Actions** y verifica el job **CI**.

## 5) Publicar una Release (CD)
1. Crea una etiqueta (tag) en tu máquina: `git tag v0.1.0 && git push origin v0.1.0`
2. Se ejecutará el job **release-on-tag**.
3. Revisa la sección **Releases** en GitHub: verás `app_artifact.zip` adjunto.

## 6) ¿Cómo extenderlo?
- Añadir `flake8` o `ruff` para lint.
- Empaquetar como contenedor (Dockerfile) y subir a GHCR.
- Desplegar a un servicio (Railway, Render) en un job adicional usando su CLI o una Action.
