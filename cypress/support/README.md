# support/index.js
This is a great place to put global configuration and behavior that modifies Cypress.

# support/commands.js
A great place to define or overwrite commands is in your `cypress/support/commands.js` file, since it is loaded before any test files are evaluated via an import statement in `cypress/support/index.js`.

# example for commands.js
- This is a parent command
` Cypress.Commands.add("login", (email, password) => { ... }) `

- This is a child command
`Cypress.Commands.add("drag", { prevSubject: 'element'}, (subject, options) => { ... })`

- This is a dual command
`Cypress.Commands.add("dismiss", { prevSubject: 'optional'}, (subject, options) => { ... })`

- This is will overwrite an existing command
`Cypress.Commands.overwrite("visit", (originalFn, url, options) => { ... })`


# More info
You can read more [here](https://on.cypress.io/custom-commands)
