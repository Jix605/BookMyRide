-- ********************************************************************************
-- This script creates the database users and grants them the necessary permissions
-- ********************************************************************************

CREATE USER "BookMyRide_owner"
WITH PASSWORD 'bookmyridepassword';

GRANT ALL
ON ALL TABLES IN SCHEMA public
TO "BookMyRide_owner";

GRANT ALL
ON ALL SEQUENCES IN SCHEMA public
TO "BookMyRide_owner";

CREATE USER "BookMyRide_appuser"
WITH PASSWORD 'bookmyridepassword';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO "BookMyRide_appuser";

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO "BookMyRide_appuser";
