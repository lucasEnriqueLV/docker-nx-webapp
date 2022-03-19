// Component checkers
export const getHeaderComponent = () => cy.get('projects-header.title');
export const getButtonComponent = () => cy.get('projects-button.button');
export const getInputComponent = () => cy.get('projects-input.input');

// Individual html tags
export const getTitle = () => cy.get('h1.title');
export const getButtonAdd = () => cy.get('button#buttonClickMe');
export const getBoxItem = () => cy.get('div.box');
export const getInput = () => cy.get('input.input');
export const getTextInput = () => cy.get('div.text-from-input');