FROM python:3.12-slim

USER root

WORKDIR /home/workspace

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    build-essential \
    wget \
    git \
    libnss3 \
    libatk1.0-0 \
    libx11-xcb1 \
    libxcomposite1 \
    libxdamage1 \
    libxrandr2 \
    libgbm1 \
    libasound2 \
    libpangocairo-1.0-0 \
    libgtk-3-0 \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir --upgrade pip pipenv

#RUN python3 -m venv /home/workspace/venv && \
    /home/workspace/venv/bin/pip install --no-cache-dir --upgrade pip
#ENV PATH="/home/workspace/venv/bin:$PATH"

RUN python -m pip install --user pipenv
ENV PATH="/root/.local/bin:${PATH}"



RUN curl -fsSL https://code-server.dev/install.sh | sh

COPY requirements.txt /home/workspace/
RUN pipenv install --dev --ignore-pipfile

COPY . /home/workspace/

EXPOSE 3000

CMD ["code-server", "--bind-addr", "0.0.0.0:3000", "--auth", "none", "/home/workspace"]
