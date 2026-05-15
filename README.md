# 🐳 Docker Build Template for GitHub Actions

این قالب (Template) به شما امکان می‌دهد با یک کلیک، یک ایمیج داکر بسازید و مستقیماً به **Docker Hub** منتشر کنید — بدون نیاز به تنظیم دستی Secrets (مگر اینکه بخواهید).

## ✨ ویژگی‌ها

- ✅ **Workflow dispatch** – اجرای دستی از داخل GitHub
- ✅ ورودی‌های امن و انعطاف‌پذیر:
  - `docker_username` – نام کاربری داکر هاب
  - `docker_repo` – نام مخزن داکر (پیش‌فرض: `Your-Image-Name`)
  - `docker_token` – توکن دسترسی داکر هاب
  - `image_tag` – تگ ایمیج (پیش‌فرض: `latest`)
- ✅ **Build & Push** خودکار با استفاده از `docker/build-push-action`
- ✅ نمایش لینک مستقیم ایمیج در خروجی
- ✅ قابلیت استفاده در هر مخزنی که `Dockerfile` دارد

## 🚀 نحوه استفاده

1. روی دکمه **Use this template** کلیک کنید.
2. در مخزن خود، به تب **Actions** بروید.
3. کارflow **🐳 Build Docker Image** را انتخاب کنید.
4. روی **Run workflow** کلیک کنید.
5. اطلاعات زیر را وارد کنید:
   - 👤 Docker Hub Username
   - 📦 Repository Name
   - 🔑 Docker Hub Access Token
   - 🏷️ Image Tag (اختیاری)
6. منتظر بمانید تا ایمیج ساخته شود و به Docker Hub منتشر گردد.

## 🔐 پیشنهاد امنیتی

برای امنیت بیشتر، می‌توانید به جای وارد کردن دستی توکن، از **GitHub Secrets** استفاده کنید:

- `DOCKER_USERNAME`
- `DOCKER_TOKEN`

سپس فایل اکشن را به این شکل تغییر دهید:

```yaml
with:
  username: ${{ secrets.DOCKER_USERNAME }}
  password: ${{ secrets.DOCKER_TOKEN }}
