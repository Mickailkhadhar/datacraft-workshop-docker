FROM python:3.7-slim

# equivalent de cd en shell unix
WORKDIR /app

EXPOSE 8501 

# Install requirements.
ADD ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt --no-cache-dir

ADD ./css /app/css/
ADD ./utils/ /app/utils/
ADD ./images/ /app/images/
ADD ./models/ /app/models/

ADD datacraft.py /datacraft.py

CMD ["streamlit","run","/app/datacraft.py"]
