## Getting Started

```bash
# For your convience, we have a setup script
bin/setup

#Install JS Dependencies
yarn install

# Start your Rails server
rails server

# In a separate tab
bin/webpack-dev-server
```
## Aim

To improve on company module and create related association and functionality around it
 
## Tasks

### 1. Display an Association

Added associations for company

Owner: has_one
Department: has_many
Address - has_one

### 2. JavaScript Interactivity

Nested forms for department for a company.
Added support for autocomplete.
Validations.

##Added Support-Not implemented

Many-Many relationship for company-owners
Autocomplete for ajax owner search
Zip Code Validations using zipcode gem


## TO Do

Many to Many support for Company-Owners.
Add association for company branch.
Implement functionality for already existing Employee association - Add, Associate to department, Delete, Edit
Remove Dropdown for owner in company creation/edit and use autocomplete.





