# torch lib doesn't support latest python https://stackoverflow.com/a/58902298/2120382
FROM python:3.7 

WORKDIR /usr/src
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888

CMD "jupyter" "notebook" "--ip" "0.0.0.0" "--allow-root" "--no-browser"
