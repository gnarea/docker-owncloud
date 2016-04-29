# Lightweight Docker Image for ownCloud 9

## Environment Variables

Customisable:

- `DEBUG`.
- `OWNCLOUD_DATA_PATH`.
- `OWNCLOUD_SECRET`.
- `OWNCLOUD_PASSWORD_SALT`.
- `OWNCLOUD_TRUSTED_DOMAINS`.
- `OWNCLOUD_DB_TYPE`.
- `OWNCLOUD_DB_HOST`.
- `OWNCLOUD_DB_USER`.
- `OWNCLOUD_DB_PASSWORD`.
- `OWNCLOUD_DB_NAME`.
- `OWNCLOUD_DB_TABLE_PREFIX` (default: empty string).
- `OWNCLOUD_SMTP_HOST`.
- `OWNCLOUD_SMTP_PORT`.
- `OWNCLOUD_SMTP_ENCRYPTION` (default: empty string; also valid: "tls" or "ssl").
- `OWNCLOUD_SMTP_AUTHN_TYPE` (default: "LOGIN"; also valid: "PLAIN").
- `OWNCLOUD_SMTP_AUTHN_USER`.
- `OWNCLOUD_SMTP_AUTHN_PASSWORD`.
- `OWNCLOUD_ADMIN_USER`.
- `OWNCLOUD_ADMIN_PASS`.

More options can be set by adding configuration files to `/opt/web-app/config/`.
