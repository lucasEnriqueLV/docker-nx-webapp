import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'projects-button',
  templateUrl: './button.component.html',
  styleUrls: ['./button.component.scss']
})
export class ButtonComponent implements OnInit {
  private $addOne = 0;

  public set addOne(value: number) { this.$addOne = value }
  public get addOne() : number { return this.$addOne  }

  constructor() { }

  ngOnInit(): void {
  }

  public addOnClick() {
    this.addOne = this.addOne + 1;
  }

}
