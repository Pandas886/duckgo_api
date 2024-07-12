# 使用官方的 Python 3.10 镜像作为基础镜像
FROM python:3.10

# 设置工作目录
WORKDIR /opt

# 将当前目录下的所有文件复制到容器的 /opt 目录下
COPY . /opt

# 安装所需的 Python 包
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# 暴露端口 9400
EXPOSE 9400

CMD ["python", "duckgo_fastapi_server.py"]
