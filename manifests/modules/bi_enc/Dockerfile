FROM daynauth/jaseci-kit:latest
ENV DEBIAN_FRONTEND=noninteractive

COPY load_model.py .
RUN python3 load_model.py
RUN apt-get update && apt-get install -y \
    curl

RUN cd /jaseci/jaseci_kit/jaseci_kit/modules/encoders/utils/ && curl -O https://raw.githubusercontent.com/AshishMahendra/jaseci/main/jaseci_kit/jaseci_kit/modules/encoders/utils/evaluate.py
RUN cd /jaseci/jaseci_kit/jaseci_kit/modules/encoders/ && curl -O https://raw.githubusercontent.com/AshishMahendra/jaseci/main/jaseci_kit/jaseci_kit/modules/encoders/bi.py