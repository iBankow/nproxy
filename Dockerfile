FROM nginx:alpine

# Copia sua config para o local correto no container
COPY nginx.conf /etc/nginx/conf.d/default.conf

ARG REPORT

# Expõe a porta que o Railway vai usar
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
