FROM python:latest

RUN pip install --upgrade google-cloud-storage
RUN pip install wget

WORKDIR /usr/app/src

COPY tugas_df_upload.py ./
ENV GOOGLE_APPLICATION_CREDENTIALS="../tugas-data-fellowship-8-2a9fbf79ab84.json"
CMD ["pyhton","./tugas_df_upload.py"]


