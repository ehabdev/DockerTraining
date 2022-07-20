FROM python:3-alpine
Run pip install os_sys   
COPY Getusernamelogin.py /
CMD ["python3", "./Getusernamelogin.py"]
