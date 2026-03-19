# Publicación (GitHub-first)

## Flujo recomendado
1. Crear/editar post en `src/content/blog/*.md`.
2. Commit + push a `main`.
3. GitHub Actions construye y despliega automáticamente a Hostinger.

## Crear borrador rápido (CLI)
```bash
./scripts/new-post.sh mi-slug es estrategia audiencia,producto
```

## Crear/editar post desde CMS (recomendado)
1. Abre `/admin` en tu sitio (ej: `https://zioreth.me/admin`).
2. Inicia sesión con GitHub.
3. Crea o edita entradas desde la colección **Blog**.
4. Usa **Save** para borrador y **Publish** para publicar.

> Si estás en local: ejecuta `npx decap-server` y luego `npm run dev`.

## Publicar post (manual)
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
