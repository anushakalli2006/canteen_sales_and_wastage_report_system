# Engine 1 – Database Test Cases

| Test No. | Test Description | Expected Result | Status |
|---|---|---|---|
| 1 | Insert negative quantity (-5) | Rejected by CHECK constraint | Passed |
| 2 | Insert invalid item_id (999) | Rejected by Foreign Key | Pending |
| 3 | Insert duplicate food item name (Idli) | Rejected by UNIQUE constraint | Pending |

## Test 1 – Negative Quantity
The database rejected a sales record with quantity -5.

Error: Check constraint violation.

Result: Passed.

## Test 2 – Invalid Food Item ID
Expected: The database should reject a sales record referring to a food item that does not exist.

## Test 3 – Duplicate Food Item
Expected: The database should reject a duplicate food item name.

## Conclusion
The initial test confirms that the database CHECK constraint prevents negative quantities.