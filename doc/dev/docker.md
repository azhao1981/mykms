# docker

## images

### postgresql

https://hub.docker.com/_/postgres

sudo docker pull postgres:13.2 
sudo docker pull postgres:11.11

```yaml
  postgres:
    image: postgres:13.2 
    restart: always
    expose:
      - 5432
    ports:
      - 5432:5432
    environment:
      - POSTGRES_PASSWORD=eNRN6Dr3xiu6ebqxq9r1
      - TZ=Asia/Shanghai
    volumes:
      - postgres-data:/var/lib/postgresql/data
volumes:
  postgres-data:
```
