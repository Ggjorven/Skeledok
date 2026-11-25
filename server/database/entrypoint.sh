#!/bin/sh

psql -v ON_ERROR_STOP=1 \
	--username root \
	--dbname skeledok-db
