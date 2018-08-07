#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@account
Feature: Create New Account
 Create new Account for the valid customer details
 Scenario: For valid customer create new Account
  Given customer details
  When  Valid Customer
  And valid opening balance
  Then create new Account

Scenario: For Invalid customer 
  For invalid customer details throw error message
   Given Customer details
   When Invalid Customer
   Then throw 'Invalid Customer' error message

Scenario: For Invalid Opening Balance 
   Given Customer details and opening balance
   When Invalid opening balance
   Then throw 'Invalid Balance' error message
Scenario: Find account details
	Find account details for the given account number
	Given Account number
	When Valid account Number
	Then find account details
	
Scenario: Withdraw Amount from Account
	Find account details and withdraw amount
	Given Account number 1001 and amount 1000
	When Find account and do withdrawal
	Then Update the account details.
	
Scenario: Deposit Amount to Account
	Given Deposit Account number 1002 and amount 1000
	When Find account and do deposit
	Then Update the Deposit account details. 
	
	
	