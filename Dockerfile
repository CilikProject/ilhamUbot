#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b Ayiin-Userbot https://github.com/ACilikProject/ilhamUbot /home/ilhamubot/ \
    && chmod 777 /home/ilhamubot \
    && mkdir /home/ilhamubot/bin/

COPY ./sample_config.env ./config.env* /home/ilhamubot/

WORKDIR /home/ilhamubot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
