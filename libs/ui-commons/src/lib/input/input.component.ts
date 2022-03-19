import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'projects-input',
  templateUrl: './input.component.html',
  styleUrls: ['./input.component.scss']
})
export class InputComponent implements OnInit {

  private $textInput: any = '';

  public set textInput(v : string) { this.$textInput = v; }
  public get textInput() : string { return this.$textInput }

  constructor() { }

  ngOnInit(): void {
  }
}
