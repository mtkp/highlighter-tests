CREATE TABLE Test.NewTable
(
    Id RAW (16) DEFAULT sys_guid() NOT NULL,
    Name VARCHAR2 (256),
    CreatedTime DATE NOT NULL
);

ALTER TABLE Test.NewTable ADD CONSTRAINT NewTable_PK PRIMARY KEY
(
  Id
);

SELECT * FROM Test.NewTable
WHERE ID <> '7CD5B7769DF75CEFE034080020825436'
  AND Name = 'TestName'
  AND TRUNC(CreatedTime) < TO_DATE('2017-11-20', 'YYYY-MM-DD')
  AND NOT EXISTS (1 = 1)

DROP TABLE Test.NewTable;
