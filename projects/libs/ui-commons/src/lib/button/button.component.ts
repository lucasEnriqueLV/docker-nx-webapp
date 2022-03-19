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
  
  public boxes = [
    {number: 1}
  ]
  
  constructor() { }

  ngOnInit(): void {
  }

  public addOnClick() {
    this.boxes.push(
      {number: this.boxes.length + 1}
    )
  }

}
