FROM python:3.7

COPY requirements.txt ./
COPY configs ./configs
COPY mig ./mig

RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update
RUN apt-get -y install vim 

CMD ["/bin/bash"]
