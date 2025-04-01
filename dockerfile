# Use AWS Lambda base image for Python
FROM public.ecr.aws/lambda/python:3.9

# Copy function code
COPY app.py .  

# Set the handler (matches function name in app.py)
CMD ["app.lambda_handler"]
