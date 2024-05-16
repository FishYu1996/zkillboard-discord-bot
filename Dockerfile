FROM python:3.10

WORKDIR .

COPY . .

RUN pip3 install --no-cache-dir -r ./requirements.txt
RUN apt-get update && apt-get install -y \
    fonts-wqy-zenhei 

CMD [ "python3.10", "bot.py" ]
