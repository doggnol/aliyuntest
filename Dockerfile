FROM arm64v8/python:3.9.5-alpine

ENV LANG=C.UTF-8

RUN ["sed", "-i", "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g", "/etc/apk/repositories"]
RUN apk update
RUN apk add --no-cache vim

RUN pip install fastapi pydantic PyYAML requests pandas uvicorn starlette

WORKDIR /opt/tool_platform

CMD [ "tail", "-f", "/dev/null" ]
