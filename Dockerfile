FROM nginx:stable
MAINTAINER  <hscrystaleng@gmail.com>

# -----------------------------------------------
# Add config proxy_params
# -----------------------------------------------
ADD proxy_params /etc/nginx/proxy_params

# -----------------------------------------------
# Custom config in nginx
# -----------------------------------------------
ADD nginx.conf /etc/nginx/nginx.conf
ADD default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
