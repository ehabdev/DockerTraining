FROM python:3-alpine
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install os   
COPY Getusernamelogin.py /
CMD ["python3", "./Getusernamelogin.py"]
