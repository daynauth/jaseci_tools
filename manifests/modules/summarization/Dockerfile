FROM daynauth/jaseci-kit:latest
ENV DEBIAN_FRONTEND=noninteractive

COPY load_model.py .
RUN python3 load_model.py

RUN sed -i '14,15d' /jaseci/jaseci_kit/jaseci_kit/modules/summarization/summarization.py