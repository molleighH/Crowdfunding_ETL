-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/n4zXzL
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(225)   NOT NULL,
    "description" VARCHAR(225)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(225)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(3)   NOT NULL,
    "currency" VARCHAR(5)   NOT NULL,
    "launched_date" INT   NOT NULL,
    "end_date" INT   NOT NULL,
    "category_id" VARCAHR(10)   NOT NULL,
    "subcategpry_id" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(225)   NOT NULL,
    "last_name" VARCHAR(225)   NOT NULL,
    "email" VARCHAR(225)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "category" (
    "category_id" INT   NOT NULL,
    "category" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" INT   NOT NULL,
    "subcategory" VARCAHR(10)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategpry_id" FOREIGN KEY("subcategpry_id")
REFERENCES "subcategory" ("subcategory_id");

