# Dockerfile for Lightweight LibreTranslate
# مناسب برای GitHub Actions با دانلود سریع و حجم کم

FROM libretranslate/libretranslate:latest

# حفظ کننده سلامت
HEALTHCHECK --interval=10s --timeout=5s --start-period=30s --retries=3 \
  CMD curl -f http://localhost:5000/health || exit 1

# تنظیمات بهینه برای اجرای سریع‌تر و حجم کمتر
ENV LT_LOAD_ONLY=en,fa
ENV LT_THREADS=2
ENV LT_REQ_LIMIT=1000
ENV LT_DISABLE_WEB_UI=true
ENV LT_UPDATE_MODELS=false

# پورت پیش‌فرض
EXPOSE 5000

# اجرای سرویس
CMD ["lt-preset", "run"]
