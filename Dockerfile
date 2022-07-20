FROM python:3-alpine
RUN pip install os   
COPY Getusernamelogin.py /
CMD ["python3", "./Getusernamelogin.py"]
