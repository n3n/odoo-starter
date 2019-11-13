FROM odoo:12
LABEL maintainer="Nonpawit Teerachetmongkol <nonpawit.tee@aginix.tech>"

# Copy to Workdir
COPY ./requirements.txt ./

# Install requirements
RUN pip3 install -r requirements.txt

# Copy to root directory
COPY ./entrypoint.sh /

COPY ./addons /mnt/extra-addons
RUN chown odoo /mnt/extra-addons


EXPOSE 8080

# Set default user when running the container
USER odoo

ENV PORT 8080

ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo", "--http-port=8080"]
# CMD odoo --http-port=8080