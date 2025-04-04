#!/usr/bin/env bash
# Thoát ngay nếu có lỗi
set -o errexit

# Cài đặt dependencies
pip install -r requirements.txt

# Chạy LiteLLM (Render sẽ tự động gán biến $PORT)
litellm --config config.yaml --port $PORT --host 0.0.0.0
