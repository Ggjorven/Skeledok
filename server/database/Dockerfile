FROM postgres:19

RUN mkdir /app

COPY --chown=root:root ./entrypoint.sh /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
