FROM registry.gitlab.com/okinta/algatrader

RUN apk add --no-cache bash

COPY entrypoint.sh /entrypoint
ENTRYPOINT ["/entrypoint.sh"]
CMD ["autotrade"]
