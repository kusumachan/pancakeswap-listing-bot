FROM python:alpine3.14	

RUN apk add --no-cache git g++ gcc libxslt-dev && \
    git clone https://github.com/kusumachan/pancakeswap-listing-bot /app && \
    pip3 install --no-cache-dir beautifulsoup4 lxml requests colorama
	
WORKDIR app	
	
CMD ["python3", "app.py"]
