#  My E2E Boilerplate
[![License: AGPL v3](https://img.shields.io/badge/license-GPL%20(%3E%3D%203)-blue.svg)](https://opensource.org/licenses/GPL-3.0)
[![Renovate enabled](https://img.shields.io/badge/renovate-enabled-brightgreen.svg)](https://renovatebot.com/)


## Tools
- [Cypress](https://www.cypress.io/) - E2E testing tool
- [eslint-plugin-cypress](https://github.com/cypress-io/eslint-plugin-cypress) - as an ESLint plugin for your Cypress tests
- [eslint-plugin-chai-friendly](https://github.com/ihordiachenko/eslint-plugin-chai-friendly) - to overrides 'no-unused-expressions' to make it friendly towards chai(which we use for assertion along with our Cypress tests)
- [junit](https://github.com/michaelleeallen/mocha-junit-reporter) : 3rd party reporters for Mocha which is built into Cypress
- [cypress/snapshot](https://www.npmjs.com/package/@cypress/snapshot) : as DOM element snapshot testing tool

## Cypress Tools
Cypress builds on these popular tools:
- [Mocha](https://mochajs.org/)
- [Chai](https://www.chaijs.com/)


## Install
1. Clone the project on your system.
2. If you have `npm` installed on your system ,you just need to run 
  `npm install` on the project directory if not,install it first.
3. Cypress needs some dependencies to be installed in your system , you
  can find it in [here](https://docs.cypress.io/guides/guides/continuous-integration.html#Dependencies).
* Make sure you are login in [Cypress Dashboard Service](https://on.cypress.io/dashboard).

## Config your local Cypress project
### Config run_host_project.sh :
1. copy `run_host_project_EXAMPLE.sh` and rename it to 
  `run_host_project.sh`.
2. open `run_host_project.sh` and replace 'PROJECT_PATH' in the 2th
  line with your local project path
3. make sure `run_host_project.sh` has execute access,if not run 
  `chmod +x run_host_project.sh`.

### Config cypress.env.json :
1. copy `cypress.env_EXAMPLE.json` and rename it to `cypress.env.json`.
2. if your local project run in `http://localhost:8080` its ok,if not
  change it into yours.

### Set record key as environment variable
1. Within Cypress CI on `Runs` tab , get the Record Key.
2. Set Record key as environment variable by run 
  `export CYPRESS_RECORD_KEY=<Record Key>` in Cypress project directory.

### Config cypress.json
1. Modified `<YOUR_PROJECT_ID>` with the one that Cypress give to you.

## Scripts
- `npm run host:start` : to run your local project and use 
  `run_host_project.sh` for it. (so don't forget to config it before 
  using this command).

- `npm run cy:run` :  to running Cypress CI. (If you are using it in
  your local, you should run your local project first and config your
  cypress.env.json file).

- `npm run cy:record`: to asking Cypress to run new tests and record 
  video save it on `cypress/video` directory and upload to the 
  dashboard service after every spec file runs, successful or not.
  :warnigng: Cypress clears any existing videos before a Cypress run.

- `npm run cy:report` : to run all the test and make a .xml file on 
  `cypress/results`.
  :warnigng: Cypress clears any existing reports before a Cypress run.


## Noticed
1. To Set up Intelligent code completion in your Dev Environment can 
  use [this link](https://docs.cypress.io/guides/tooling/intelligent-code-completion.html#Set-up-in-your-Dev-Environment-1).
2. Cypress Projects can run on all CI providers.we are using [CircleCI](https://circleci.com).
3. package-lock.json is using by CircleCI so never ever delete it or
  move it to .gitignore file.


## Authors

- Marzzieh Moghtaderi - [Marzzy Mogh](https://github.com/marzzy)


## License

This project is licensed under the terms of the 
[AGPLv3 (GNU General Public License v3.0)](./LICENSE.md) license.