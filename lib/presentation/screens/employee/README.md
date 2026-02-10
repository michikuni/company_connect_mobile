# Model

## Employee

* EmployeeId: String - Username
* Department: String (Enum: Tech, Media, Marketing, Business...)
* Position: String (Enum: DEV, LEAD,...) - Role
* Status: String (Enum: Probation, Working, On Leave, Resigned, Terminated)
* Working Type: String (Enum: Full-time, Part-time, Remote,  Hybrid)
* IsActive: Boolean
* ManagerId: String? (EmployeeId)
* CreatedAt: DateTime
* UpdatedAt: DateTime
* CreatedBy: String
* Note: String

    ## Profile
* Name: String
* Gender: String (Enum: Male, Female, Other)
* Identity Type: String (Enum: citizen identity card, passport,...)
* Identity Number: String
* Identity Issue Date: Date
* Identity Issue Place: String
* Email: String
* Phone Number: String
* Emergency Contact Name: String
* Emergency Contact Phone: String
* Emergency Contact Relationship: String (Enum: Father, Mother, Sister, Wife,...)
* Date Of Birth: String (convert from DateTime)
* Health: String (Enum: Good, Bad,...)
* Married: String (Enum: Single, Married, divorced, widow,...)
* Permanent Residence: String
* Now Residence: String
* Avatar: String? (URL)
* Education Level: String (Enum: High School, College, University, Master, PhD, Professor)
* Major: String
* Certificate: List<String>?
* Skill Set: List<String>
* Experience Years: Int

## Contract
* Type Contract: String (Enum: Seasonal, Indefinite-term, term)
* Start Date: String (convert from DateTime)
* End Date: Date? (ngày nghỉ việc)
* Contract Expire: Float? (number of month)
* Probation Start Date: Date?
* Probation End Date: Date?
* Tax Code: String
* Social Insurance Number: String?
* Health Insurance Number: String?

## Payroll
* Salary Type: String (Enum: Gross / Net)
* Base Salary: Float
* Allowance: Float?
* Bonus: Float?
* Overtime Rate: Float?
* In Come: Float
* Currency: String (Enum: VND, USD…)
* Payday: String (from ... to ... monthly)
* Bank Account Number: String
* Bank Account Name: String
* Bank Name: String
* Bank Branch: String