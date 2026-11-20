<div align="center">
<img src="assets/brand-logo.svg" alt="Arya Fatthurahman" width="120" />
</div>

# Snowflake Lab

<sub>Practice Snowflake SQL: warehouses, databases, stages, `COPY INTO`, `QUALIFY`, and time travel.</sub>

<p>
  <img src="https://img.shields.io/badge/Database-Snowflake-29B5E8?style=flat-square" alt="Database: Snowflake" />
  <img src="https://img.shields.io/badge/Category-Cloud%20data%20warehouse-6366F1?style=flat-square" alt="Category: Cloud data warehouse" />
  <img src="https://img.shields.io/badge/Runs%20in-Cloud-0EA5E9?style=flat-square&logo=icloud&logoColor=white" alt="Runs in Cloud" />
  <img src="https://img.shields.io/badge/License-MIT-22C55E?style=flat-square" alt="License: MIT" />
</p>

## What this lab is

Snowflake separates storage from compute, and the SQL surface reflects that: virtual warehouses, stages, file formats, and zero-copy clones. This lab uses a free trial account and gives you a compact schema plus the statements that show how the platform works.

## Quickstart

1. Create a Snowflake trial account and open a worksheet.
2. Run `examples/01_setup.sql` to create the warehouse, database, schema, and tables.
3. Run `examples/02_queries.sql` to seed and query the data.
4. Run `examples/03_stages.sql` to create an internal stage and inspect `COPY INTO`.
5. Optional: install SnowSQL and run the same files with `snowsql -f`.

## Connection details

| Field | Value |
| --- | --- |
| Account URL | `https://<account>.snowflakecomputing.com` |
| Warehouse | `LAB_WH` |
| Database / schema | `LAB_DB.RAW` |
| CLI | `snowsql -a <account> -u <user>` |
| JDBC URL | `jdbc:snowflake://<account>.snowflakecomputing.com/?db=LAB_DB&schema=RAW&warehouse=LAB_WH` |

## Examples

| File | What it shows |
| --- | --- |
| [`examples/01_setup.sql`](examples/01_setup.sql) | Warehouse, database, schema, and two tables. |
| [`examples/02_queries.sql`](examples/02_queries.sql) | Seed data, `QUALIFY`, and time travel. |
| [`examples/03_stages.sql`](examples/03_stages.sql) | An internal stage and a `COPY INTO` template. |

## Exercises

1. Create a zero-copy clone of `LAB_DB.RAW` and modify the clone without touching the original.
2. Add a clustering key to `orders` and compare the query profile before and after.
3. Load a small CSV through an internal stage and validate the row count.
4. Suspend `LAB_WH` and confirm that queries fail until it resumes.

## Notes and limits

- A Snowflake trial account is time-limited and may have credit limits. Suspend `LAB_WH` when idle.
- Snowflake is cloud-only; there is no official local emulator used in this lab.
- Time travel depends on the table retention setting and the account edition.
- Never commit credentials. Use SnowSQL config profiles or environment variables.

## Run it from anywhere

This lab already runs in the provider's cloud. To use it from another country safely:

- Keep the account behind MFA and restrict network access to your IP or VPN where the provider allows it.
- Use a dedicated lab user with the minimum privileges; never reuse personal credentials.
- Store tokens and passwords in a secret manager or environment variables, never in the repository.
- Stop or delete the warehouse, cluster, or VM when you finish to control cost.

The shared checklist and provider map are in **[REMOTE-ACCESS.md](https://github.com/devarent/database-labs/blob/main/REMOTE-ACCESS.md)**.

## References

- [Snowflake documentation](https://docs.snowflake.com/)
- [SnowSQL](https://docs.snowflake.com/en/user-guide/snowsql)
- [Snowflake trial](https://signup.snowflake.com/)

---

<sub>Part of the <a href="https://github.com/devarent/database-labs">database-labs</a> collection: 26 database engines, one index.</sub>

## License

MIT (c) 2026 Arya Fatthurahman. See [LICENSE](LICENSE).
