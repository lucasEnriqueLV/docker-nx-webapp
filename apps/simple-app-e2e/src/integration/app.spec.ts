import { getButtonAdd, getBoxItem, getInput, getTextInput } from './../support/app.po';
import { getButtonComponent, getHeaderComponent, getInputComponent, getTitle } from '../support/app.po';

describe('simple-app', () => {
  beforeEach(() => cy.visit('/'));

  it('should display three components', () => {

    getHeaderComponent().should('exist');
    getButtonComponent().should('exist');
    getInputComponent().should('exist');
  
  });

  it('header should display simple-app', () => {
    getTitle().should('exist');
    getTitle().contains('simple-app');
  })

  it('button should add one', () => {
    getButtonAdd().should('exist');
    getBoxItem().contains('1');
    getButtonAdd().click();
    getBoxItem().contains('2');
  })

  it('input should display text after typing', () => {
    getInput().should('exist');
    getInput().type('hey this is a test!');
    getTextInput().contains('hey this is a test!')
  })
});
