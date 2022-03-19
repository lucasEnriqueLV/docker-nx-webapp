import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HeaderComponent } from './header/header.component';
import { ButtonComponent } from './button/button.component';
import { InputComponent } from './input/input.component';
import { FormsModule } from '@angular/forms';

@NgModule({
  imports: [
    CommonModule,
    FormsModule
  ],
  declarations: [
    HeaderComponent,
    ButtonComponent,
    InputComponent
  ],
  exports: [
    HeaderComponent,
    ButtonComponent,
    InputComponent
  ]
})
export class UiCommonsModule {}
