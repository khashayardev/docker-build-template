FROM libretranslate/libretranslate:latest

# فقط curl نصب کن برای health check
USER root
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
USER libretranslate

# تنظیمات از طریق environment variables
ENV LT_LOAD_ONLY=en,fa
ENV LT_THREADS=2
ENV LT_REQ_LIMIT=1000
ENV LT_DISABLE_WEB_UI=true

EXPOSE 5000

# بدون CMD - بگذار خود تصویر اجرا شود
