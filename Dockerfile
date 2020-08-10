FROM centos:centos7

# Bundle app source
ADD . /

#RUN apt update
RUN yum -y update

RUN yum -y install gcc gcc-c++ kernel-devel
RUN yum -y install python-devel libxslt-devel libffi-devel openssl-devel


# Add debug tool
#RUN yum install net-tools

# Install pip
#RUN pip install -y python-pip
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN python get-pip.py

RUN yum install -y libxslt-devel libxml2-devel
RUN easy_install lxml==3.3.5

RUN pip install -r /requirements.txt


ENTRYPOINT ["python", "manage.py"]

CMD ["runserver"]