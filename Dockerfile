FROM registry.access.redhat.com/ubi9/python-312

USER 0
ADD app-src .
RUN chown -R 1001:0 ./
USER 1001

COPY ./requirements.txt .

RUN pip install -U "pip>=19.3.1"
RUN pip3 install -r requirements.txt

CMD python app.py
