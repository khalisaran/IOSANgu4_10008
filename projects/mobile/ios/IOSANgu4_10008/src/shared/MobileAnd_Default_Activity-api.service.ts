import { Injectable } from '@angular/core';
import { Http, Response } from '@angular/http';
import 'rxjs';
import { Observable } from 'rxjs/Observable';

@Injectable()
export class MobileAnd_Default_ActivityService {
    private baseUrl = "http://34.193.74.68/IOSANgu4_10008";
    constructor(private http : Http) {

    }

    createMobileAnd(MobileAnd):Observable<any> {
        return this.http.post(`${this.baseUrl}/MobileAnd_Default_Activity/create_MobileAnd`,MobileAnd)
                                .map((res:Response) => res.json())
                                .catch((error:any) => Observable.throw(error.json().error || 'Server error')); 
    }

}