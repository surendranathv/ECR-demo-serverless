# Use the AWS Lambda base image for Node.js 18
FROM public.ecr.aws/lambda/nodejs:18

# Copy application files
COPY handler.js package.json ./

# Install dependencies (if any)
RUN npm install

# Set the Lambda function handler
CMD ["handler.hello"]
