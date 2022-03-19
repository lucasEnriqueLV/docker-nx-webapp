import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { NxWelcomeComponent } from './nx-welcome.component';
import { UiCommonsModule } from '@projects/ui-commons'

@NgModule({
  declarations: [AppComponent, NxWelcomeComponent],
  imports: [
    BrowserModule,
    UiCommonsModule,
  ],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
