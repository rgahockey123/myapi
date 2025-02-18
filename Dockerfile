FROM quay.io/centos/centos:stream10
RUN dnf update -y && dnf install python3 python3-pip -y && python3 -m pip install --upgrade pip && python3 -m pip install flask requests && dnf upgrade -y
EXPOSE 8080
COPY myapi.py /
ENTRYPOINT ["/bin/python3"]
CMD ["myapi.py"]
