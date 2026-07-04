USE EnterpriseRetailDW;
GO

CREATE TABLE stg.Reviews
(
	review_id VARCHAR(50),
	order_id VARCHAR(50),
	review_score INT,
	review_comment_title VARCHAR(255),
	review_comment_message VARCHAR(MAX),
	review_creation_date DATETIME,
	review_answer_timestamp DATETIME
);
GO