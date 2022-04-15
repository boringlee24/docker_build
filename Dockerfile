FROM python:3.7

COPY requirements.txt ./
COPY mig_data ./mig_data

RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update
RUN apt-get -y install vim 
RUN mkdir -p /home/li.baol/GIT/sc22-miso

CMD ["/bin/bash"]
