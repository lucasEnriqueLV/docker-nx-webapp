import { getButton, getHeader, getInput } from '../support/app.po';

describe('simple-app', () => {
  beforeEach(() => cy.visit('/'));

  it('should display three components', () => {

    // Function helper example, see `../support/app.po.ts` file
    getHeader().should('exist');
    getButton().should('exist');
    getInput().should('exist');
  });
});
