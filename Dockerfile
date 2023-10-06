FROM python:3.12.0a1-buster
RUN apt-get update &&\ 
    adduser myuser
ENV QR_CODE_IMAGE_DIRECTORY='static'
ENV QR_CODE_DEFAULT_URL='https://github.com/Protoge'
ENV QR_CODE_DEFAULT_FILE_NAME='githubprofile.png'
WORKDIR /home/myuser
COPY --chown=myuser:myuser . .
RUN pip install -r requirements.txt
ENTRYPOINT ["python","./main.py"]

