BEGIN;

INSERT INTO transaction_demo
VALUES (2, 'First transaction change', 200);

SAVEPOINT first_savepoint;

INSERT INTO transaction_demo
VALUES (3, 'Second transaction change', 300);

ROLLBACK TO SAVEPOINT first_savepoint;

COMMIT;