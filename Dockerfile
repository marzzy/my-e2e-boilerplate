FROM cypress/base:10
WORKDIR /app/
COPY package* .
RUN ["npm", "i"]
COPY . .
CMD ["npm", "run", "cy:run"]
