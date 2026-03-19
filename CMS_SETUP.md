# CMS Setup (Decap + GitHub)

Se agregó panel CMS en `public/admin`.

## Qué ya está listo
- `/admin` con Decap CMS.
- Configuración de colección para `src/content/blog`.
- Subida de imágenes a `src/assets/uploads`.

## Qué falta para usar login en producción
Decap con backend GitHub requiere un **OAuth proxy**.

Opciones recomendadas:
1. Netlify (más simple para auth)
2. Cloudflare Worker OAuth proxy
3. Servicio propio (Node/Express)

Cuando tengas el endpoint, edita `public/admin/config.yml`:

```yml
backend:
  name: github
  repo: zioreth/zioreth-me-blog
  branch: main
  base_url: https://TU-AUTH-SERVICE.com
  auth_endpoint: auth
```

## Prueba local (sin deploy)
```bash
npm i -D decap-server
npx decap-server
npm run dev
```
Luego abre: `http://localhost:4321/admin`

## Seguridad mínima
- GitHub 2FA obligatorio.
- Branch protection en `main`.
- Permisos mínimos para OAuth app.
- No guardar secretos en repo.
