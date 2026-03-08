# Publicación (GitHub-first)

## Flujo recomendado
1. Crear/editar post en `src/content/blog/*.md`.
2. Commit + push a `main`.
3. GitHub Actions construye y despliega automáticamente a Hostinger.

## Crear borrador rápido
```bash
./scripts/new-post.sh mi-slug es estrategia audiencia,producto
```

## Publicar post
- En el frontmatter del post cambia:
  - `draft: true` -> `draft: false`
- Haz commit/push.

## Configurar secretos en GitHub (una sola vez)
Repo -> Settings -> Secrets and variables -> Actions -> New repository secret
- `FTP_SERVER` = `ftp.zioreth.me`
- `FTP_USERNAME` = `u908321761.alicia`
- `FTP_PASSWORD` = (tu contraseña FTP actual)
- `FTP_PORT` = `21`

## Comentarios Giscus
Ya configurado en `src/consts.ts`.

## Analytics Umami
Ya configurado en `src/consts.ts`.
