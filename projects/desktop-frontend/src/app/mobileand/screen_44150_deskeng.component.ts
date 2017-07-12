import { Component, OnInit, ViewChild } from '@angular/core';
import { Router } from '@angular/router';
import { ModalComponent } from 'ng2-bs3-modal/ng2-bs3-modal';
import { MobileAndService } from './mobileand.service';
import { IMobileAnd } from './mobileand';

@Component({
    moduleId: module.id,
    templateUrl: 'screen_44150_deskeng.component.html'
})
export class Screen_44150_deskengComponent implements OnInit {
  private mobileand: IMobileAnd = {
  	id: 0,
  	name: ''
  }
  ;

  constructor(private router: Router, private mobileandservice: MobileAndService) { 
  }

  ngOnInit() {
  }


  create_MobileAnd(){
      this.mobileandservice.create_MobileAnd(this.mobileand)
          .subscribe(data => {
            console.log("data", data);
          });
  }

}