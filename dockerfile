# Use the official Odoo 17 image as the base
FROM odoo:17

# Set environment variables
ENV ODOO_VERSION=17.0 \
    ODOO_USER=odoo

# Set the working directory inside the container
WORKDIR /odoo

# Copy custom addons
COPY ./addons /mnt/extra-addons

# Copy Odoo configuration
COPY ./etc/odoo.conf /etc/odoo/odoo.conf

# Expose necessary ports
EXPOSE 8069 8072

# Run Odoo with the specified configuration file
CMD ["odoo", "--config=/etc/odoo/odoo.conf"]
