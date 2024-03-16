FROM python:3

COPY run.sh /run.sh

RUN apt update \
 && apt install -y python3-usb i2c-tools python3-smbus

RUN python -m pip install -U wheel cython pyusb libusb \
 && python -m pip install git+https://github.com/liquidctl/liquidctl#egg=liquidctl

CMD ["/run.sh"]
