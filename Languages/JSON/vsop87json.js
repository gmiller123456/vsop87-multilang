export default class vsop87json{
    constructor(){
        this.data=null;
        this.version=-1;
        this.versionString="";
        this.varsOsculating=['a','l','k','h','q','p'];
        this.varsRectangular=['x','y','z'];
        this.varsPolar=['l','b','r'];
    }

    loadData(url,versionid){
        this.version=versionid;
        return new Promise(async (resolve,reject)=>{
            try{
                const response = await fetch(url);
                this.data = await response.json();
                resolve();
            } catch (e){
                reject(e);
            }
        });
    }

    checkInitialized(){
        if(this.data==null){
            throw "You must call loadData(url) before computing any positions.";
        }
    }

    getSun(t){
        return this.getPlanet("sun",t);
    }

    getMercury(t){
        return this.getPlanet("mercury",t);
    }

    getVenus(t){
        return this.getPlanet("venus",t);
    }

    getEarth(t){
        return this.getPlanet("earth",t);
    }

    getMars(t){
        return this.getPlanet("mars",t);
    }

    getJupiter(t){
        return this.getPlanet("jupiter",t);
    }

    getSaturn(t){
        return this.getPlanet("saturn",t);
    }

    getUranus(t){
        return this.getPlanet("uranus",t);
    }

    getNeptune(t){
        return this.getPlanet("neptune",t);
    }

    getEmb(t){
        return this.getPlanet("emb",t);
    }

    getMoon(earth, emb){
        temp=[0,0,0];
        temp[0]=(emb[0]-earth[0])*(1 + 1 / 0.01230073677);
        temp[1]=(emb[1]-earth[1])*(1 + 1 / 0.01230073677);
        temp[2]=(emb[2]-earth[2])*(1 + 1 / 0.01230073677);
        temp[0]=temp[0]+earth[0];
        temp[1]=temp[1]+earth[1];
        temp[2]=temp[2]+earth[2];
        return temp;
    }

    getPlanet(planetID, t){
        this.checkInitialized();

        const pv=[0,0,0,0,0,0];
        const planet=this.data[planetID];

        if(this.version==0){
            for (let i=0;i<this.varsOsculating.length;i++){
                const v=planet[this.varsOsculating[i]];
                pv[i]=this.computeSeries(v,t)[0];
            }
        }else{
            let vars=this.varsRectangular;
            if(this.version==2 || this.version==4){
                vars=this.varsPolar;
            }

            for(let i=0;i<vars.length;i++){
                const v=planet[vars[i]];
                const temp=this.computeSeries(v,t);
                pv[i]=temp[0];
                pv[i+3]=temp[1];
            }
        }
        return pv;
    }

    computeSeries(v, t){
        let acc=0;
        let vsum=0;
        for(let exponent=0;exponent<Object.keys(v).length;exponent++){
            let expList=v[exponent];
            let psum=0;
            for(let i=0;i<expList.length;i++){
                const l=expList[i]
                const a=l[0];
                const b=l[1];
                const c=l[2];

                //Position
                psum+=a*Math.cos(b+c*t);

                //Velocity
                if(exponent==0){
                    vsum+= - a * c * Math.sin(b + c*t);
                }else{
                    vsum+=Math.pow(t,exponent-1) * exponent * a * Math.cos(b + c * t) - Math.pow(t,exponent) * a * c * Math.sin(b + c*t);
                }
            }

            acc+=Math.pow(t,exponent)*psum;
        }

        return [acc,vsum/365250.0];
    }

}