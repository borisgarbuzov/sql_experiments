use db1;

CREATE TABLE Books
(
BookID int IDENTITY PRIMARY KEY,
BookInfo xml
)


INSERT
INTO Books
VALUES ('<book>
<title>SQL Server 2005 for Dummies</title>
<author>Andrew Watt</author>
</book>')
INSERT
INTO Books
VALUES ('<book>
<title>SQL Server 2005 Programming for Dummies</title>
<author>Andrew Watt</author>
</book>')

SELECT * FROM Books
INSERT
INTO Books
VALUES ('<book>
<title>SQL Server 2005 Programming for Dummies</title>
<author>Andrew Watt</author>
</book>')

create XML SCHEMA COLLECTION SingleBookSchemaCollection_2 AS
N'<?xml version="1.0" encoding="utf-16"?>
<xs:schema attributeFormDefault="unqualified"
elementFormDefault="qualified"
xmlns:xs="http://www.w3.org/2001/XMLSchema">
<xs:element name="book">
<xs:complexType>
<xs:element name="title" type="xs:string" />
<xs:element name="author" type="xs:string" />
</xs:sequence>
</xs:complexType>
</xs:element>
</xs:schema>'

SELECT
xml_schema_namespace(N'dbo',N'SingleBookSchemaCollection')

SELECT *
FROM sys.xml_schema_collections

CREATE TABLE BooksTyped
(
BookID int IDENTITY PRIMARY KEY,
BookInfo xml (dbo.SingleBookSchemaCollection)
)

INSERT INTO BOOKS
VALUES ('<book>
<title>SQL Server 2005 for Dummies</title>
<author>Andrew Watt</author>
</book>')

INSERT
INTO BooksTyped
VALUES ('<book>
<title>SQL Server 2005 Programming for Dummies</title>
<author>Andrew Watt</author>
<publisher>Wiley Publishing</publisher>
</book>')







