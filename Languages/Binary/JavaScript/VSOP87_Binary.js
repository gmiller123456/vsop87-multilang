//VSOP87-Multilang http://www.astrogreg.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2023.  Released as Public Domain

//Binary implementation of VSOP87, requires the vsop87*.bin file for the version
//you want to use.  Order of the vairables is the same as in the offsets.txt
//file. E.g, x,y,z,xv,yv,zv for rectangular versions.

export class VSOP87_Binary{
    constructor(filename){
        this.assignOffsets();
        this.filename=filename;
        this.version=this.guessVersion(filename);
        this.setVersion(this.version);
    }

    getDataLayout(){
        return this.vsop87offsets;
    }

    setVersion(version){
        const versions={"vsop87": 0, "vsop87a": 1, "vsop87b": 2, "vsop87c": 3, "vsop87d": 4, "vsop87e": 5};
        this.planets=this.vsop87offsets[versions[version]].planets;
        this.setPlanetOrder(version);
    }

    guessVersion(filename){
        if(filename.startsWith("vsop87a")){return "vsop87a";}
        if(filename.startsWith("vsop87b")){return "vsop87b";}
        if(filename.startsWith("vsop87c")){return "vsop87c";}
        if(filename.startsWith("vsop87d")){return "vsop87d";}
        if(filename.startsWith("vsop87e")){return "vsop87e";}
        if(filename.startsWith("vsop87")){return "vsop87";}
        return null;
    }

    async init(){
        this.data=await this.getData(this.filename);
        return this;
    }

    setPlanetOrder(version){
        const orders={
            "vsop87": {"emb": 0,"jupiter": 1,"mars": 2,"mercury": 3,"neptune": 4,"saturn": 5,"uranus": 6,"venus": 7 },        
            "vsop87a": {"earth": 0,"emb": 1,"jupiter": 2,"mars": 3,"mercury": 4,"neptune": 5,"saturn": 6,"uranus": 7,"venus": 8},       
            "vsop87b": {"earth": 0,"jupiter": 1,"mars": 2,"mercury": 3,"neptune": 4,"saturn": 5,"uranus": 6,"venus": 7},
            "vsop87c": {"earth": 0,"jupiter": 1,"mars": 2,"mercury": 3,"neptune": 4,"saturn": 5,"uranus": 6,"venus": 7},
            "vsop87d": {"earth": 0,"jupiter": 1,"mars": 2,"mercury": 3,"neptune": 4,"saturn": 5,"uranus": 6,"venus": 7},
            "vsop87e": {"earth": 0,"jupiter": 1,"mars": 2,"mercury": 3,"neptune": 4,"saturn": 5,"sun": 6,"uranus": 7,"venus": 8}
        }

        const o=orders[version];
        this.planet={};
        this.planet.sun=o["sun"];
        this.planet.emb=o["emb"];
        this.planet.earth=o["earth"];
        this.planet.jupiter=o["jupiter"];
        this.planet.mars=o["mars"];
        this.planet.mercury=o["mercury"];
        this.planet.neptune=o["neptune"];
        this.planet.saturn=o["saturn"];
        this.planet.uranus=o["uranus"];
        this.planet.venus=o["venus"];
        
    }

    async getData(filename){
        const response = await fetch(filename);
        const blob = await response.blob();
        const buff=await blob.arrayBuffer();
        return new Float64Array(buff);
    }

    static getMoon(earth, emb){
        var temp=[0.0, 0.0, 0.0, 0.0, 0.0, 0.0];

        temp[0]=(emb[0]-earth[0])*(1 + 1 / 0.01230073677);
        temp[1]=(emb[1]-earth[1])*(1 + 1 / 0.01230073677);
        temp[2]=(emb[2]-earth[2])*(1 + 1 / 0.01230073677);
        temp[0]=temp[0]+earth[0];
        temp[1]=temp[1]+earth[1];
        temp[2]=temp[2]+earth[2];

        temp[3]=(emb[3]-earth[3])*(1 + 1 / 0.01230073677);
        temp[4]=(emb[4]-earth[4])*(1 + 1 / 0.01230073677);
        temp[5]=(emb[5]-earth[5])*(1 + 1 / 0.01230073677);
        temp[3]=temp[3]+earth[3];
        temp[4]=temp[4]+earth[4];
        temp[5]=temp[5]+earth[5];

        return temp;
    }

    getEarth(t){
        return this.getPlanet(this.planets[this.planet.earth],t);
    }

    getEmb(t){
        return this.getPlanet(this.planets[this.planet.emb],t);
    }

    getJupiter(t){
        return this.getPlanet(this.planets[this.planet.jupiter],t);
    }

    getMars(t){
        return this.getPlanet(this.planets[this.planet.mars],t);
    }

    getMercury(t){
        return this.getPlanet(this.planets[this.planet.mercury],t);
    }

    getNeptune(t){
        return this.getPlanet(this.planets[this.planet.neptune],t);
    }

    getSaturn(t){
        return this.getPlanet(this.planets[this.planet.saturn],t);
    }

    getSun(t){
        return this.getPlanet(this.planets[this.planet.sun],t);
    }

    getUranus(t){
        return this.getPlanet(this.planets[this.planet.uranus],t);
    }

    getVenus(t){
        return this.getPlanet(this.planets[this.planet.venus],t);
    }

    getPlanet(planet,t){
        const p=new Array();
        const v=new Array();
        for(let i=0;i<planet.vars.length;i++){
            const exps=planet.vars[i].exponents;
            let acc=0;
            let veacc=0;
            for(let j=0;j<exps.length;j++){
                const exp=exps[j];
                let eacc=0;
                let o=exp.offset*3;
                for(let k=0;k<exp.length;k++){
                    const a=this.data[o];
                    const b=this.data[o+1];
                    const c=this.data[o+2];
    
                    eacc+=a*Math.cos(b + c*t) //position
                    
                    //Velocity
                    if(j==0){
                        veacc += -a * c * Math.sin(b + c*t);
                    } else {
                        veacc+= Math.pow(t,j-1) * j * a * Math.cos(b + c*t) - Math.pow(t,j) * a * c * Math.sin(b + c*t);
                    }
                    o+=3;
                }
                acc+=eacc*Math.pow(t,j);
            }
            p.push(acc);
            v.push(veacc/365250.0);
        }
        return p.concat(v);
    }

    assignOffsets(){
        this.vsop87offsets=
        [{"name": "vsop87","planets": [
        {"name": "emb", "vars":  [{"name": "a", "exponents": [{"offset": 0, "length": 438},{"offset": 438, "length": 258},{"offset": 696, "length": 100}]},{"name": "h", "exponents": [{"offset": 796, "length": 584},{"offset": 1380, "length": 251},{"offset": 1631, "length": 53},{"offset": 1684, "length": 1},{"offset": 1685, "length": 1},{"offset": 1686, "length": 1}]},{"name": "k", "exponents": [{"offset": 1687, "length": 597},{"offset": 2284, "length": 254},{"offset": 2538, "length": 55},{"offset": 2593, "length": 1},{"offset": 2594, "length": 1},{"offset": 2595, "length": 1}]},{"name": "l", "exponents": [{"offset": 2596, "length": 688},{"offset": 3284, "length": 313},{"offset": 3597, "length": 80},{"offset": 3677, "length": 5},{"offset": 3682, "length": 2},{"offset": 3684, "length": 1}]},{"name": "p", "exponents": [{"offset": 3685, "length": 183},{"offset": 3868, "length": 57},{"offset": 3925, "length": 6},{"offset": 3931, "length": 1},{"offset": 3932, "length": 1},{"offset": 3933, "length": 1}]},{"name": "q", "exponents": [{"offset": 3934, "length": 197},{"offset": 4131, "length": 58},{"offset": 4189, "length": 8},{"offset": 4197, "length": 1},{"offset": 4198, "length": 1},{"offset": 4199, "length": 1}]}]},
        {"name": "jupiter", "vars":  [{"name": "a", "exponents": [{"offset": 4200, "length": 646},{"offset": 4846, "length": 341},{"offset": 5187, "length": 189},{"offset": 5376, "length": 92},{"offset": 5468, "length": 29},{"offset": 5497, "length": 2}]},{"name": "h", "exponents": [{"offset": 5499, "length": 733},{"offset": 6232, "length": 338},{"offset": 6570, "length": 164},{"offset": 6734, "length": 69},{"offset": 6803, "length": 13}]},{"name": "k", "exponents": [{"offset": 6816, "length": 723},{"offset": 7539, "length": 341},{"offset": 7880, "length": 166},{"offset": 8046, "length": 72},{"offset": 8118, "length": 12}]},{"name": "l", "exponents": [{"offset": 8130, "length": 915},{"offset": 9045, "length": 425},{"offset": 9470, "length": 205},{"offset": 9675, "length": 89},{"offset": 9764, "length": 30},{"offset": 9794, "length": 2}]},{"name": "p", "exponents": [{"offset": 9796, "length": 139},{"offset": 9935, "length": 74},{"offset": 10009, "length": 24},{"offset": 10033, "length": 3}]},{"name": "q", "exponents": [{"offset": 10036, "length": 141},{"offset": 10177, "length": 75},{"offset": 10252, "length": 24},{"offset": 10276, "length": 3}]}]},
        {"name": "mars", "vars":  [{"name": "a", "exponents": [{"offset": 10279, "length": 820},{"offset": 11099, "length": 504},{"offset": 11603, "length": 248}]},{"name": "h", "exponents": [{"offset": 11851, "length": 994},{"offset": 12845, "length": 471},{"offset": 13316, "length": 158},{"offset": 13474, "length": 2},{"offset": 13476, "length": 1},{"offset": 13477, "length": 1}]},{"name": "k", "exponents": [{"offset": 13478, "length": 1009},{"offset": 14487, "length": 483},{"offset": 14970, "length": 153},{"offset": 15123, "length": 2},{"offset": 15125, "length": 1},{"offset": 15126, "length": 1}]},{"name": "l", "exponents": [{"offset": 15127, "length": 1192},{"offset": 16319, "length": 567},{"offset": 16886, "length": 173},{"offset": 17059, "length": 16},{"offset": 17075, "length": 4},{"offset": 17079, "length": 3}]},{"name": "p", "exponents": [{"offset": 17082, "length": 236},{"offset": 17318, "length": 90},{"offset": 17408, "length": 21},{"offset": 17429, "length": 1},{"offset": 17430, "length": 1}]},{"name": "q", "exponents": [{"offset": 17431, "length": 234},{"offset": 17665, "length": 95},{"offset": 17760, "length": 24},{"offset": 17784, "length": 1},{"offset": 17785, "length": 1},{"offset": 17786, "length": 1}]}]},
        {"name": "mercury", "vars":  [{"name": "a", "exponents": [{"offset": 17787, "length": 496},{"offset": 18283, "length": 225},{"offset": 18508, "length": 42}]},{"name": "h", "exponents": [{"offset": 18550, "length": 658},{"offset": 19208, "length": 312},{"offset": 19520, "length": 56},{"offset": 19576, "length": 1},{"offset": 19577, "length": 1},{"offset": 19578, "length": 1}]},{"name": "k", "exponents": [{"offset": 19579, "length": 659},{"offset": 20238, "length": 294},{"offset": 20532, "length": 57},{"offset": 20589, "length": 1},{"offset": 20590, "length": 1},{"offset": 20591, "length": 1}]},{"name": "l", "exponents": [{"offset": 20592, "length": 810},{"offset": 21402, "length": 370},{"offset": 21772, "length": 80},{"offset": 21852, "length": 1}]},{"name": "p", "exponents": [{"offset": 21853, "length": 272},{"offset": 22125, "length": 106},{"offset": 22231, "length": 13},{"offset": 22244, "length": 1},{"offset": 22245, "length": 1},{"offset": 22246, "length": 1}]},{"name": "q", "exponents": [{"offset": 22247, "length": 249},{"offset": 22496, "length": 89},{"offset": 22585, "length": 11},{"offset": 22596, "length": 1},{"offset": 22597, "length": 1},{"offset": 22598, "length": 1}]}]},
        {"name": "neptune", "vars":  [{"name": "a", "exponents": [{"offset": 22599, "length": 1149},{"offset": 23748, "length": 435},{"offset": 24183, "length": 155},{"offset": 24338, "length": 45},{"offset": 24383, "length": 14},{"offset": 24397, "length": 4}]},{"name": "h", "exponents": [{"offset": 24401, "length": 1161},{"offset": 25562, "length": 493},{"offset": 26055, "length": 190},{"offset": 26245, "length": 48},{"offset": 26293, "length": 16},{"offset": 26309, "length": 2}]},{"name": "k", "exponents": [{"offset": 26311, "length": 1163},{"offset": 27474, "length": 494},{"offset": 27968, "length": 192},{"offset": 28160, "length": 47},{"offset": 28207, "length": 16},{"offset": 28223, "length": 2}]},{"name": "l", "exponents": [{"offset": 28225, "length": 1097},{"offset": 29322, "length": 461},{"offset": 29783, "length": 169},{"offset": 29952, "length": 45},{"offset": 29997, "length": 11},{"offset": 30008, "length": 2}]},{"name": "p", "exponents": [{"offset": 30010, "length": 210},{"offset": 30220, "length": 71},{"offset": 30291, "length": 17},{"offset": 30308, "length": 4}]},{"name": "q", "exponents": [{"offset": 30312, "length": 214},{"offset": 30526, "length": 69},{"offset": 30595, "length": 17},{"offset": 30612, "length": 4}]}]},
        {"name": "saturn", "vars":  [{"name": "a", "exponents": [{"offset": 30616, "length": 1492},{"offset": 32108, "length": 727},{"offset": 32835, "length": 354},{"offset": 33189, "length": 162},{"offset": 33351, "length": 62},{"offset": 33413, "length": 13}]},{"name": "h", "exponents": [{"offset": 33426, "length": 1503},{"offset": 34929, "length": 713},{"offset": 35642, "length": 314},{"offset": 35956, "length": 126},{"offset": 36082, "length": 43},{"offset": 36125, "length": 3}]},{"name": "k", "exponents": [{"offset": 36128, "length": 1515},{"offset": 37643, "length": 723},{"offset": 38366, "length": 328},{"offset": 38694, "length": 129},{"offset": 38823, "length": 41},{"offset": 38864, "length": 3}]},{"name": "l", "exponents": [{"offset": 38867, "length": 1731},{"offset": 40598, "length": 866},{"offset": 41464, "length": 389},{"offset": 41853, "length": 157},{"offset": 42010, "length": 51},{"offset": 42061, "length": 7}]},{"name": "p", "exponents": [{"offset": 42068, "length": 260},{"offset": 42328, "length": 129},{"offset": 42457, "length": 45},{"offset": 42502, "length": 9},{"offset": 42511, "length": 1}]},{"name": "q", "exponents": [{"offset": 42512, "length": 262},{"offset": 42774, "length": 127},{"offset": 42901, "length": 45},{"offset": 42946, "length": 10},{"offset": 42956, "length": 1}]}]},
        {"name": "uranus", "vars":  [{"name": "a", "exponents": [{"offset": 42957, "length": 2047},{"offset": 45004, "length": 900},{"offset": 45904, "length": 343},{"offset": 46247, "length": 97},{"offset": 46344, "length": 18},{"offset": 46362, "length": 2}]},{"name": "h", "exponents": [{"offset": 46364, "length": 2047},{"offset": 48411, "length": 963},{"offset": 49374, "length": 377},{"offset": 49751, "length": 105},{"offset": 49856, "length": 21}]},{"name": "k", "exponents": [{"offset": 49877, "length": 2047},{"offset": 51924, "length": 967},{"offset": 52891, "length": 370},{"offset": 53261, "length": 106},{"offset": 53367, "length": 21}]},{"name": "l", "exponents": [{"offset": 53388, "length": 2047},{"offset": 55435, "length": 1023},{"offset": 56458, "length": 398},{"offset": 56856, "length": 124},{"offset": 56980, "length": 25},{"offset": 57005, "length": 2}]},{"name": "p", "exponents": [{"offset": 57007, "length": 396},{"offset": 57403, "length": 136},{"offset": 57539, "length": 27},{"offset": 57566, "length": 2}]},{"name": "q", "exponents": [{"offset": 57568, "length": 403},{"offset": 57971, "length": 140},{"offset": 58111, "length": 25},{"offset": 58136, "length": 3}]}]},
        {"name": "venus", "vars":  [{"name": "a", "exponents": [{"offset": 58139, "length": 308},{"offset": 58447, "length": 168},{"offset": 58615, "length": 52}]},{"name": "h", "exponents": [{"offset": 58667, "length": 439},{"offset": 59106, "length": 167},{"offset": 59273, "length": 25},{"offset": 59298, "length": 1},{"offset": 59299, "length": 1},{"offset": 59300, "length": 1}]},{"name": "k", "exponents": [{"offset": 59301, "length": 442},{"offset": 59743, "length": 158},{"offset": 59901, "length": 28},{"offset": 59929, "length": 1},{"offset": 59930, "length": 1},{"offset": 59931, "length": 1}]},{"name": "l", "exponents": [{"offset": 59932, "length": 499},{"offset": 60431, "length": 201},{"offset": 60632, "length": 43},{"offset": 60675, "length": 1}]},{"name": "p", "exponents": [{"offset": 60676, "length": 155},{"offset": 60831, "length": 56},{"offset": 60887, "length": 8},{"offset": 60895, "length": 1},{"offset": 60896, "length": 1},{"offset": 60897, "length": 1}]},{"name": "q", "exponents": [{"offset": 60898, "length": 163},{"offset": 61061, "length": 52},{"offset": 61113, "length": 10},{"offset": 61123, "length": 1},{"offset": 61124, "length": 1},{"offset": 61125, "length": 1}]}]}
        ]},{"name": "vsop87a","planets": [
        {"name": "earth", "vars":  [{"name": "x", "exponents": [{"offset": 0, "length": 843},{"offset": 843, "length": 491},{"offset": 1334, "length": 204},{"offset": 1538, "length": 18},{"offset": 1556, "length": 15},{"offset": 1571, "length": 6}]},{"name": "y", "exponents": [{"offset": 1577, "length": 854},{"offset": 2431, "length": 496},{"offset": 2927, "length": 202},{"offset": 3129, "length": 17},{"offset": 3146, "length": 15},{"offset": 3161, "length": 6}]},{"name": "z", "exponents": [{"offset": 3167, "length": 178},{"offset": 3345, "length": 120},{"offset": 3465, "length": 53},{"offset": 3518, "length": 12},{"offset": 3530, "length": 6},{"offset": 3536, "length": 2}]}]},
        {"name": "emb", "vars":  [{"name": "x", "exponents": [{"offset": 3538, "length": 793},{"offset": 4331, "length": 478},{"offset": 4809, "length": 185},{"offset": 4994, "length": 18},{"offset": 5012, "length": 10},{"offset": 5022, "length": 6}]},{"name": "y", "exponents": [{"offset": 5028, "length": 804},{"offset": 5832, "length": 482},{"offset": 6314, "length": 184},{"offset": 6498, "length": 17},{"offset": 6515, "length": 10},{"offset": 6525, "length": 6}]},{"name": "z", "exponents": [{"offset": 6531, "length": 154},{"offset": 6685, "length": 113},{"offset": 6798, "length": 46},{"offset": 6844, "length": 10},{"offset": 6854, "length": 4},{"offset": 6858, "length": 2}]}]},
        {"name": "jupiter", "vars":  [{"name": "x", "exponents": [{"offset": 6860, "length": 1055},{"offset": 7915, "length": 488},{"offset": 8403, "length": 255},{"offset": 8658, "length": 140},{"offset": 8798, "length": 58},{"offset": 8856, "length": 11}]},{"name": "y", "exponents": [{"offset": 8867, "length": 1037},{"offset": 9904, "length": 499},{"offset": 10403, "length": 259},{"offset": 10662, "length": 136},{"offset": 10798, "length": 60},{"offset": 10858, "length": 11}]},{"name": "z", "exponents": [{"offset": 10869, "length": 216},{"offset": 11085, "length": 104},{"offset": 11189, "length": 65},{"offset": 11254, "length": 27},{"offset": 11281, "length": 10},{"offset": 11291, "length": 3}]}]},
        {"name": "mars", "vars":  [{"name": "x", "exponents": [{"offset": 11294, "length": 1584},{"offset": 12878, "length": 956},{"offset": 13834, "length": 387},{"offset": 14221, "length": 135},{"offset": 14356, "length": 41},{"offset": 14397, "length": 21}]},{"name": "y", "exponents": [{"offset": 14418, "length": 1612},{"offset": 16030, "length": 969},{"offset": 16999, "length": 384},{"offset": 17383, "length": 136},{"offset": 17519, "length": 44},{"offset": 17563, "length": 21}]},{"name": "z", "exponents": [{"offset": 17584, "length": 355},{"offset": 17939, "length": 232},{"offset": 18171, "length": 122},{"offset": 18293, "length": 51},{"offset": 18344, "length": 16},{"offset": 18360, "length": 7}]}]},
        {"name": "mercury", "vars":  [{"name": "x", "exponents": [{"offset": 18367, "length": 1449},{"offset": 19816, "length": 792},{"offset": 20608, "length": 299},{"offset": 20907, "length": 54},{"offset": 20961, "length": 15},{"offset": 20976, "length": 10}]},{"name": "y", "exponents": [{"offset": 20986, "length": 1438},{"offset": 22424, "length": 782},{"offset": 23206, "length": 299},{"offset": 23505, "length": 59},{"offset": 23564, "length": 15},{"offset": 23579, "length": 10}]},{"name": "z", "exponents": [{"offset": 23589, "length": 598},{"offset": 24187, "length": 351},{"offset": 24538, "length": 143},{"offset": 24681, "length": 28},{"offset": 24709, "length": 10},{"offset": 24719, "length": 7}]}]},
        {"name": "neptune", "vars":  [{"name": "x", "exponents": [{"offset": 24726, "length": 772},{"offset": 25498, "length": 330},{"offset": 25828, "length": 102},{"offset": 25930, "length": 33},{"offset": 25963, "length": 7}]},{"name": "y", "exponents": [{"offset": 25970, "length": 746},{"offset": 26716, "length": 325},{"offset": 27041, "length": 97},{"offset": 27138, "length": 34},{"offset": 27172, "length": 7}]},{"name": "z", "exponents": [{"offset": 27179, "length": 133},{"offset": 27312, "length": 37},{"offset": 27349, "length": 11},{"offset": 27360, "length": 2}]}]},
        {"name": "saturn", "vars":  [{"name": "x", "exponents": [{"offset": 27362, "length": 1652},{"offset": 29014, "length": 892},{"offset": 29906, "length": 481},{"offset": 30387, "length": 215},{"offset": 30602, "length": 87},{"offset": 30689, "length": 31}]},{"name": "y", "exponents": [{"offset": 30720, "length": 1658},{"offset": 32378, "length": 917},{"offset": 33295, "length": 465},{"offset": 33760, "length": 201},{"offset": 33961, "length": 88},{"offset": 34049, "length": 32}]},{"name": "z", "exponents": [{"offset": 34081, "length": 420},{"offset": 34501, "length": 217},{"offset": 34718, "length": 87},{"offset": 34805, "length": 44},{"offset": 34849, "length": 19},{"offset": 34868, "length": 6}]}]},
        {"name": "uranus", "vars":  [{"name": "x", "exponents": [{"offset": 34874, "length": 1464},{"offset": 36338, "length": 649},{"offset": 36987, "length": 249},{"offset": 37236, "length": 84},{"offset": 37320, "length": 12}]},{"name": "y", "exponents": [{"offset": 37332, "length": 1447},{"offset": 38779, "length": 659},{"offset": 39438, "length": 255},{"offset": 39693, "length": 80},{"offset": 39773, "length": 12}]},{"name": "z", "exponents": [{"offset": 39785, "length": 235},{"offset": 40020, "length": 98},{"offset": 40118, "length": 33},{"offset": 40151, "length": 12}]}]},
        {"name": "venus", "vars":  [{"name": "x", "exponents": [{"offset": 40163, "length": 548},{"offset": 40711, "length": 338},{"offset": 41049, "length": 99},{"offset": 41148, "length": 5},{"offset": 41153, "length": 4},{"offset": 41157, "length": 3}]},{"name": "y", "exponents": [{"offset": 41160, "length": 565},{"offset": 41725, "length": 325},{"offset": 42050, "length": 99},{"offset": 42149, "length": 5},{"offset": 42154, "length": 4},{"offset": 42158, "length": 3}]},{"name": "z", "exponents": [{"offset": 42161, "length": 190},{"offset": 42351, "length": 108},{"offset": 42459, "length": 45},{"offset": 42504, "length": 10},{"offset": 42514, "length": 3},{"offset": 42517, "length": 3}]}]}
        ]},{"name": "vsop87b","planets": [
        {"name": "earth", "vars":  [{"name": "b", "exponents": [{"offset": 0, "length": 184},{"offset": 184, "length": 134},{"offset": 318, "length": 62},{"offset": 380, "length": 14},{"offset": 394, "length": 6},{"offset": 400, "length": 2}]},{"name": "l", "exponents": [{"offset": 402, "length": 623},{"offset": 1025, "length": 379},{"offset": 1404, "length": 144},{"offset": 1548, "length": 23},{"offset": 1571, "length": 11},{"offset": 1582, "length": 4}]},{"name": "r", "exponents": [{"offset": 1586, "length": 523},{"offset": 2109, "length": 290},{"offset": 2399, "length": 134},{"offset": 2533, "length": 20},{"offset": 2553, "length": 9},{"offset": 2562, "length": 2}]}]},
        {"name": "jupiter", "vars":  [{"name": "b", "exponents": [{"offset": 2564, "length": 249},{"offset": 2813, "length": 120},{"offset": 2933, "length": 82},{"offset": 3015, "length": 33},{"offset": 3048, "length": 13},{"offset": 3061, "length": 3}]},{"name": "l", "exponents": [{"offset": 3064, "length": 860},{"offset": 3924, "length": 426},{"offset": 4350, "length": 225},{"offset": 4575, "length": 120},{"offset": 4695, "length": 48},{"offset": 4743, "length": 11}]},{"name": "r", "exponents": [{"offset": 4754, "length": 727},{"offset": 5481, "length": 371},{"offset": 5852, "length": 186},{"offset": 6038, "length": 97},{"offset": 6135, "length": 45},{"offset": 6180, "length": 9}]}]},
        {"name": "mars", "vars":  [{"name": "b", "exponents": [{"offset": 6189, "length": 441},{"offset": 6630, "length": 291},{"offset": 6921, "length": 161},{"offset": 7082, "length": 64},{"offset": 7146, "length": 18},{"offset": 7164, "length": 9}]},{"name": "l", "exponents": [{"offset": 7173, "length": 1409},{"offset": 8582, "length": 891},{"offset": 9473, "length": 442},{"offset": 9915, "length": 194},{"offset": 10109, "length": 75},{"offset": 10184, "length": 24}]},{"name": "r", "exponents": [{"offset": 10208, "length": 1107},{"offset": 11315, "length": 672},{"offset": 11987, "length": 368},{"offset": 12355, "length": 160},{"offset": 12515, "length": 57},{"offset": 12572, "length": 17}]}]},
        {"name": "mercury", "vars":  [{"name": "b", "exponents": [{"offset": 12589, "length": 818},{"offset": 13407, "length": 492},{"offset": 13899, "length": 231},{"offset": 14130, "length": 39},{"offset": 14169, "length": 13},{"offset": 14182, "length": 10}]},{"name": "l", "exponents": [{"offset": 14192, "length": 1583},{"offset": 15775, "length": 931},{"offset": 16706, "length": 438},{"offset": 17144, "length": 162},{"offset": 17306, "length": 23},{"offset": 17329, "length": 12}]},{"name": "r", "exponents": [{"offset": 17341, "length": 1209},{"offset": 18550, "length": 706},{"offset": 19256, "length": 318},{"offset": 19574, "length": 111},{"offset": 19685, "length": 17},{"offset": 19702, "length": 10}]}]},
        {"name": "neptune", "vars":  [{"name": "b", "exponents": [{"offset": 19712, "length": 172},{"offset": 19884, "length": 49},{"offset": 19933, "length": 13},{"offset": 19946, "length": 2}]},{"name": "l", "exponents": [{"offset": 19948, "length": 539},{"offset": 20487, "length": 224},{"offset": 20711, "length": 59},{"offset": 20770, "length": 18}]},{"name": "r", "exponents": [{"offset": 20788, "length": 596},{"offset": 21384, "length": 251},{"offset": 21635, "length": 71},{"offset": 21706, "length": 23},{"offset": 21729, "length": 7}]}]},
        {"name": "saturn", "vars":  [{"name": "b", "exponents": [{"offset": 21736, "length": 500},{"offset": 22236, "length": 247},{"offset": 22483, "length": 111},{"offset": 22594, "length": 54},{"offset": 22648, "length": 24},{"offset": 22672, "length": 11}]},{"name": "l", "exponents": [{"offset": 22683, "length": 1437},{"offset": 24120, "length": 817},{"offset": 24937, "length": 438},{"offset": 25375, "length": 192},{"offset": 25567, "length": 85},{"offset": 25652, "length": 30}]},{"name": "r", "exponents": [{"offset": 25682, "length": 1208},{"offset": 26890, "length": 627},{"offset": 27517, "length": 338},{"offset": 27855, "length": 154},{"offset": 28009, "length": 65},{"offset": 28074, "length": 27}]}]},
        {"name": "uranus", "vars":  [{"name": "b", "exponents": [{"offset": 28101, "length": 311},{"offset": 28412, "length": 130},{"offset": 28542, "length": 39},{"offset": 28581, "length": 15}]},{"name": "l", "exponents": [{"offset": 28596, "length": 1441},{"offset": 30037, "length": 655},{"offset": 30692, "length": 259},{"offset": 30951, "length": 69},{"offset": 31020, "length": 8}]},{"name": "r", "exponents": [{"offset": 31028, "length": 1387},{"offset": 32415, "length": 625},{"offset": 33040, "length": 249},{"offset": 33289, "length": 69},{"offset": 33358, "length": 12}]}]},
        {"name": "venus", "vars":  [{"name": "b", "exponents": [{"offset": 33370, "length": 210},{"offset": 33580, "length": 121},{"offset": 33701, "length": 51},{"offset": 33752, "length": 12},{"offset": 33764, "length": 4},{"offset": 33768, "length": 4}]},{"name": "l", "exponents": [{"offset": 33772, "length": 416},{"offset": 34188, "length": 235},{"offset": 34423, "length": 72},{"offset": 34495, "length": 7},{"offset": 34502, "length": 4},{"offset": 34506, "length": 2}]},{"name": "r", "exponents": [{"offset": 34508, "length": 323},{"offset": 34831, "length": 174},{"offset": 35005, "length": 62},{"offset": 35067, "length": 8},{"offset": 35075, "length": 3},{"offset": 35078, "length": 2}]}]}
        ]},{"name": "vsop87c","planets": [
        {"name": "earth", "vars":  [{"name": "x", "exponents": [{"offset": 0, "length": 1007},{"offset": 1007, "length": 600},{"offset": 1607, "length": 248},{"offset": 1855, "length": 46},{"offset": 1901, "length": 20},{"offset": 1921, "length": 7}]},{"name": "y", "exponents": [{"offset": 1928, "length": 1007},{"offset": 2935, "length": 600},{"offset": 3535, "length": 248},{"offset": 3783, "length": 46},{"offset": 3829, "length": 20},{"offset": 3849, "length": 7}]},{"name": "z", "exponents": [{"offset": 3856, "length": 178},{"offset": 4034, "length": 97},{"offset": 4131, "length": 47},{"offset": 4178, "length": 11},{"offset": 4189, "length": 5}]}]},
        {"name": "jupiter", "vars":  [{"name": "x", "exponents": [{"offset": 4194, "length": 1272},{"offset": 5466, "length": 638},{"offset": 6104, "length": 358},{"offset": 6462, "length": 190},{"offset": 6652, "length": 73},{"offset": 6725, "length": 15}]},{"name": "y", "exponents": [{"offset": 6740, "length": 1272},{"offset": 8012, "length": 638},{"offset": 8650, "length": 358},{"offset": 9008, "length": 190},{"offset": 9198, "length": 73},{"offset": 9271, "length": 15}]},{"name": "z", "exponents": [{"offset": 9286, "length": 216},{"offset": 9502, "length": 124},{"offset": 9626, "length": 68},{"offset": 9694, "length": 39},{"offset": 9733, "length": 11},{"offset": 9744, "length": 5}]}]},
        {"name": "mars", "vars":  [{"name": "x", "exponents": [{"offset": 9749, "length": 1907},{"offset": 11656, "length": 1023},{"offset": 12679, "length": 511},{"offset": 13190, "length": 192},{"offset": 13382, "length": 81},{"offset": 13463, "length": 26}]},{"name": "y", "exponents": [{"offset": 13489, "length": 1907},{"offset": 15396, "length": 1023},{"offset": 16419, "length": 511},{"offset": 16930, "length": 192},{"offset": 17122, "length": 81},{"offset": 17203, "length": 26}]},{"name": "z", "exponents": [{"offset": 17229, "length": 355},{"offset": 17584, "length": 252},{"offset": 17836, "length": 133},{"offset": 17969, "length": 56},{"offset": 18025, "length": 20},{"offset": 18045, "length": 7}]}]},
        {"name": "mercury", "vars":  [{"name": "x", "exponents": [{"offset": 18052, "length": 1853},{"offset": 19905, "length": 1023},{"offset": 20928, "length": 413},{"offset": 21341, "length": 135},{"offset": 21476, "length": 42},{"offset": 21518, "length": 16}]},{"name": "y", "exponents": [{"offset": 21534, "length": 1853},{"offset": 23387, "length": 1023},{"offset": 24410, "length": 413},{"offset": 24823, "length": 135},{"offset": 24958, "length": 42},{"offset": 25000, "length": 16}]},{"name": "z", "exponents": [{"offset": 25016, "length": 598},{"offset": 25614, "length": 360},{"offset": 25974, "length": 167},{"offset": 26141, "length": 47},{"offset": 26188, "length": 12},{"offset": 26200, "length": 7}]}]},
        {"name": "neptune", "vars":  [{"name": "x", "exponents": [{"offset": 26207, "length": 821},{"offset": 27028, "length": 342},{"offset": 27370, "length": 113},{"offset": 27483, "length": 37},{"offset": 27520, "length": 14},{"offset": 27534, "length": 1}]},{"name": "y", "exponents": [{"offset": 27535, "length": 821},{"offset": 28356, "length": 342},{"offset": 28698, "length": 113},{"offset": 28811, "length": 37},{"offset": 28848, "length": 14},{"offset": 28862, "length": 1}]},{"name": "z", "exponents": [{"offset": 28863, "length": 133},{"offset": 28996, "length": 61},{"offset": 29057, "length": 20},{"offset": 29077, "length": 8},{"offset": 29085, "length": 1},{"offset": 29086, "length": 1}]}]},
        {"name": "saturn", "vars":  [{"name": "x", "exponents": [{"offset": 29087, "length": 2047},{"offset": 31134, "length": 1023},{"offset": 32157, "length": 511},{"offset": 32668, "length": 250},{"offset": 32918, "length": 110},{"offset": 33028, "length": 40}]},{"name": "y", "exponents": [{"offset": 33068, "length": 2047},{"offset": 35115, "length": 1023},{"offset": 36138, "length": 511},{"offset": 36649, "length": 250},{"offset": 36899, "length": 110},{"offset": 37009, "length": 40}]},{"name": "z", "exponents": [{"offset": 37049, "length": 420},{"offset": 37469, "length": 234},{"offset": 37703, "length": 91},{"offset": 37794, "length": 45},{"offset": 37839, "length": 22},{"offset": 37861, "length": 9}]}]},
        {"name": "uranus", "vars":  [{"name": "x", "exponents": [{"offset": 37870, "length": 1926},{"offset": 39796, "length": 856},{"offset": 40652, "length": 341},{"offset": 40993, "length": 106},{"offset": 41099, "length": 23},{"offset": 41122, "length": 2}]},{"name": "y", "exponents": [{"offset": 41124, "length": 1926},{"offset": 43050, "length": 856},{"offset": 43906, "length": 341},{"offset": 44247, "length": 106},{"offset": 44353, "length": 23},{"offset": 44376, "length": 2}]},{"name": "z", "exponents": [{"offset": 44378, "length": 235},{"offset": 44613, "length": 159},{"offset": 44772, "length": 65},{"offset": 44837, "length": 18},{"offset": 44855, "length": 6},{"offset": 44861, "length": 1}]}]},
        {"name": "venus", "vars":  [{"name": "x", "exponents": [{"offset": 44862, "length": 685},{"offset": 45547, "length": 406},{"offset": 45953, "length": 133},{"offset": 46086, "length": 25},{"offset": 46111, "length": 12},{"offset": 46123, "length": 4}]},{"name": "y", "exponents": [{"offset": 46127, "length": 685},{"offset": 46812, "length": 406},{"offset": 47218, "length": 133},{"offset": 47351, "length": 25},{"offset": 47376, "length": 12},{"offset": 47388, "length": 4}]},{"name": "z", "exponents": [{"offset": 47392, "length": 190},{"offset": 47582, "length": 117},{"offset": 47699, "length": 49},{"offset": 47748, "length": 12},{"offset": 47760, "length": 3},{"offset": 47763, "length": 3}]}]}
        ]},{"name": "vsop87d","planets": [
        {"name": "earth", "vars":  [{"name": "b", "exponents": [{"offset": 0, "length": 184},{"offset": 184, "length": 99},{"offset": 283, "length": 49},{"offset": 332, "length": 11},{"offset": 343, "length": 5}]},{"name": "l", "exponents": [{"offset": 348, "length": 559},{"offset": 907, "length": 341},{"offset": 1248, "length": 142},{"offset": 1390, "length": 22},{"offset": 1412, "length": 11},{"offset": 1423, "length": 5}]},{"name": "r", "exponents": [{"offset": 1428, "length": 526},{"offset": 1954, "length": 292},{"offset": 2246, "length": 139},{"offset": 2385, "length": 27},{"offset": 2412, "length": 10},{"offset": 2422, "length": 3}]}]},
        {"name": "jupiter", "vars":  [{"name": "b", "exponents": [{"offset": 2425, "length": 249},{"offset": 2674, "length": 141},{"offset": 2815, "length": 81},{"offset": 2896, "length": 42},{"offset": 2938, "length": 12},{"offset": 2950, "length": 5}]},{"name": "l", "exponents": [{"offset": 2955, "length": 760},{"offset": 3715, "length": 369},{"offset": 4084, "length": 191},{"offset": 4275, "length": 109},{"offset": 4384, "length": 45},{"offset": 4429, "length": 10}]},{"name": "r", "exponents": [{"offset": 4439, "length": 745},{"offset": 5184, "length": 381},{"offset": 5565, "length": 190},{"offset": 5755, "length": 98},{"offset": 5853, "length": 46},{"offset": 5899, "length": 9}]}]},
        {"name": "mars", "vars":  [{"name": "b", "exponents": [{"offset": 5908, "length": 441},{"offset": 6349, "length": 287},{"offset": 6636, "length": 130},{"offset": 6766, "length": 41},{"offset": 6807, "length": 11},{"offset": 6818, "length": 5}]},{"name": "l", "exponents": [{"offset": 6823, "length": 1217},{"offset": 8040, "length": 686},{"offset": 8726, "length": 310},{"offset": 9036, "length": 129},{"offset": 9165, "length": 36},{"offset": 9201, "length": 15}]},{"name": "r", "exponents": [{"offset": 9216, "length": 1118},{"offset": 10334, "length": 596},{"offset": 10930, "length": 313},{"offset": 11243, "length": 111},{"offset": 11354, "length": 28},{"offset": 11382, "length": 9}]}]},
        {"name": "mercury", "vars":  [{"name": "b", "exponents": [{"offset": 11391, "length": 818},{"offset": 12209, "length": 494},{"offset": 12703, "length": 230},{"offset": 12933, "length": 53},{"offset": 12986, "length": 15},{"offset": 13001, "length": 10}]},{"name": "l", "exponents": [{"offset": 13011, "length": 1380},{"offset": 14391, "length": 839},{"offset": 15230, "length": 395},{"offset": 15625, "length": 153},{"offset": 15778, "length": 28},{"offset": 15806, "length": 13}]},{"name": "r", "exponents": [{"offset": 15819, "length": 1215},{"offset": 17034, "length": 711},{"offset": 17745, "length": 326},{"offset": 18071, "length": 119},{"offset": 18190, "length": 18},{"offset": 18208, "length": 10}]}]},
        {"name": "neptune", "vars":  [{"name": "b", "exponents": [{"offset": 18218, "length": 172},{"offset": 18390, "length": 82},{"offset": 18472, "length": 25},{"offset": 18497, "length": 9},{"offset": 18506, "length": 1},{"offset": 18507, "length": 1}]},{"name": "l", "exponents": [{"offset": 18508, "length": 423},{"offset": 18931, "length": 183},{"offset": 19114, "length": 57},{"offset": 19171, "length": 15},{"offset": 19186, "length": 2},{"offset": 19188, "length": 1}]},{"name": "r", "exponents": [{"offset": 19189, "length": 607},{"offset": 19796, "length": 250},{"offset": 20046, "length": 72},{"offset": 20118, "length": 22},{"offset": 20140, "length": 7}]}]},
        {"name": "saturn", "vars":  [{"name": "b", "exponents": [{"offset": 20147, "length": 500},{"offset": 20647, "length": 260},{"offset": 20907, "length": 111},{"offset": 21018, "length": 58},{"offset": 21076, "length": 26},{"offset": 21102, "length": 11}]},{"name": "l", "exponents": [{"offset": 21113, "length": 1152},{"offset": 22265, "length": 642},{"offset": 22907, "length": 321},{"offset": 23228, "length": 148},{"offset": 23376, "length": 68},{"offset": 23444, "length": 27}]},{"name": "r", "exponents": [{"offset": 23471, "length": 1205},{"offset": 24676, "length": 639},{"offset": 25315, "length": 342},{"offset": 25657, "length": 157},{"offset": 25814, "length": 64},{"offset": 25878, "length": 28}]}]},
        {"name": "uranus", "vars":  [{"name": "b", "exponents": [{"offset": 25906, "length": 283},{"offset": 26189, "length": 154},{"offset": 26343, "length": 60},{"offset": 26403, "length": 16},{"offset": 26419, "length": 2}]},{"name": "l", "exponents": [{"offset": 26421, "length": 947},{"offset": 27368, "length": 426},{"offset": 27794, "length": 151},{"offset": 27945, "length": 46},{"offset": 27991, "length": 7},{"offset": 27998, "length": 1}]},{"name": "r", "exponents": [{"offset": 27999, "length": 1124},{"offset": 29123, "length": 514},{"offset": 29637, "length": 192},{"offset": 29829, "length": 55},{"offset": 29884, "length": 11}]}]},
        {"name": "venus", "vars":  [{"name": "b", "exponents": [{"offset": 29895, "length": 210},{"offset": 30105, "length": 133},{"offset": 30238, "length": 59},{"offset": 30297, "length": 15},{"offset": 30312, "length": 5},{"offset": 30317, "length": 4}]},{"name": "l", "exponents": [{"offset": 30321, "length": 367},{"offset": 30688, "length": 215},{"offset": 30903, "length": 70},{"offset": 30973, "length": 9},{"offset": 30982, "length": 5},{"offset": 30987, "length": 5}]},{"name": "r", "exponents": [{"offset": 30992, "length": 330},{"offset": 31322, "length": 180},{"offset": 31502, "length": 63},{"offset": 31565, "length": 7},{"offset": 31572, "length": 3},{"offset": 31575, "length": 2}]}]}
        ]},{"name": "vsop87e","planets": [
        {"name": "earth", "vars":  [{"name": "x", "exponents": [{"offset": 0, "length": 1199},{"offset": 1199, "length": 698},{"offset": 1897, "length": 349},{"offset": 2246, "length": 112},{"offset": 2358, "length": 67},{"offset": 2425, "length": 29}]},{"name": "y", "exponents": [{"offset": 2454, "length": 1212},{"offset": 3666, "length": 710},{"offset": 4376, "length": 345},{"offset": 4721, "length": 111},{"offset": 4832, "length": 68},{"offset": 4900, "length": 29}]},{"name": "z", "exponents": [{"offset": 4929, "length": 275},{"offset": 5204, "length": 186},{"offset": 5390, "length": 96},{"offset": 5486, "length": 40},{"offset": 5526, "length": 22},{"offset": 5548, "length": 8}]}]},
        {"name": "jupiter", "vars":  [{"name": "x", "exponents": [{"offset": 5556, "length": 1083},{"offset": 6639, "length": 499},{"offset": 7138, "length": 258},{"offset": 7396, "length": 140},{"offset": 7536, "length": 59},{"offset": 7595, "length": 11}]},{"name": "y", "exponents": [{"offset": 7606, "length": 1064},{"offset": 8670, "length": 510},{"offset": 9180, "length": 262},{"offset": 9442, "length": 136},{"offset": 9578, "length": 61},{"offset": 9639, "length": 11}]},{"name": "z", "exponents": [{"offset": 9650, "length": 229},{"offset": 9879, "length": 110},{"offset": 9989, "length": 66},{"offset": 10055, "length": 30},{"offset": 10085, "length": 10},{"offset": 10095, "length": 3}]}]},
        {"name": "mars", "vars":  [{"name": "x", "exponents": [{"offset": 10098, "length": 1572},{"offset": 11670, "length": 966},{"offset": 12636, "length": 446},{"offset": 13082, "length": 205},{"offset": 13287, "length": 74},{"offset": 13361, "length": 38}]},{"name": "y", "exponents": [{"offset": 13399, "length": 1590},{"offset": 14989, "length": 993},{"offset": 15982, "length": 444},{"offset": 16426, "length": 203},{"offset": 16629, "length": 75},{"offset": 16704, "length": 38}]},{"name": "z", "exponents": [{"offset": 16742, "length": 404},{"offset": 17146, "length": 273},{"offset": 17419, "length": 147},{"offset": 17566, "length": 70},{"offset": 17636, "length": 27},{"offset": 17663, "length": 10}]}]},
        {"name": "mercury", "vars":  [{"name": "x", "exponents": [{"offset": 17673, "length": 1553},{"offset": 19226, "length": 948},{"offset": 20174, "length": 473},{"offset": 20647, "length": 187},{"offset": 20834, "length": 95},{"offset": 20929, "length": 43}]},{"name": "y", "exponents": [{"offset": 20972, "length": 1553},{"offset": 22525, "length": 946},{"offset": 23471, "length": 478},{"offset": 23949, "length": 186},{"offset": 24135, "length": 98},{"offset": 24233, "length": 43}]},{"name": "z", "exponents": [{"offset": 24276, "length": 625},{"offset": 24901, "length": 363},{"offset": 25264, "length": 178},{"offset": 25442, "length": 63},{"offset": 25505, "length": 34},{"offset": 25539, "length": 14}]}]},
        {"name": "neptune", "vars":  [{"name": "x", "exponents": [{"offset": 25553, "length": 720},{"offset": 26273, "length": 291},{"offset": 26564, "length": 83},{"offset": 26647, "length": 27},{"offset": 26674, "length": 5}]},{"name": "y", "exponents": [{"offset": 26679, "length": 693},{"offset": 27372, "length": 287},{"offset": 27659, "length": 79},{"offset": 27738, "length": 28},{"offset": 27766, "length": 5}]},{"name": "z", "exponents": [{"offset": 27771, "length": 126},{"offset": 27897, "length": 33},{"offset": 27930, "length": 10},{"offset": 27940, "length": 2}]}]},
        {"name": "saturn", "vars":  [{"name": "x", "exponents": [{"offset": 27942, "length": 1651},{"offset": 29593, "length": 896},{"offset": 30489, "length": 481},{"offset": 30970, "length": 214},{"offset": 31184, "length": 87},{"offset": 31271, "length": 31}]},{"name": "y", "exponents": [{"offset": 31302, "length": 1657},{"offset": 32959, "length": 921},{"offset": 33880, "length": 464},{"offset": 34344, "length": 200},{"offset": 34544, "length": 89},{"offset": 34633, "length": 32}]},{"name": "z", "exponents": [{"offset": 34665, "length": 424},{"offset": 35089, "length": 218},{"offset": 35307, "length": 87},{"offset": 35394, "length": 45},{"offset": 35439, "length": 19},{"offset": 35458, "length": 6}]}]},
        {"name": "sun", "vars":  [{"name": "x", "exponents": [{"offset": 35464, "length": 1293},{"offset": 36757, "length": 816},{"offset": 37573, "length": 461},{"offset": 38034, "length": 206},{"offset": 38240, "length": 84},{"offset": 38324, "length": 34}]},{"name": "y", "exponents": [{"offset": 38358, "length": 1291},{"offset": 39649, "length": 814},{"offset": 40463, "length": 470},{"offset": 40933, "length": 206},{"offset": 41139, "length": 87},{"offset": 41226, "length": 34}]},{"name": "z", "exponents": [{"offset": 41260, "length": 376},{"offset": 41636, "length": 243},{"offset": 41879, "length": 123},{"offset": 42002, "length": 61},{"offset": 42063, "length": 26},{"offset": 42089, "length": 9}]}]},
        {"name": "uranus", "vars":  [{"name": "x", "exponents": [{"offset": 42098, "length": 1432},{"offset": 43530, "length": 628},{"offset": 44158, "length": 234},{"offset": 44392, "length": 79},{"offset": 44471, "length": 10}]},{"name": "y", "exponents": [{"offset": 44481, "length": 1411},{"offset": 45892, "length": 634},{"offset": 46526, "length": 238},{"offset": 46764, "length": 75},{"offset": 46839, "length": 10}]},{"name": "z", "exponents": [{"offset": 46849, "length": 232},{"offset": 47081, "length": 97},{"offset": 47178, "length": 33},{"offset": 47211, "length": 12}]}]},
        {"name": "venus", "vars":  [{"name": "x", "exponents": [{"offset": 47223, "length": 956},{"offset": 48179, "length": 583},{"offset": 48762, "length": 266},{"offset": 49028, "length": 106},{"offset": 49134, "length": 61},{"offset": 49195, "length": 32}]},{"name": "y", "exponents": [{"offset": 49227, "length": 972},{"offset": 50199, "length": 574},{"offset": 50773, "length": 264},{"offset": 51037, "length": 106},{"offset": 51143, "length": 59},{"offset": 51202, "length": 31}]},{"name": "z", "exponents": [{"offset": 51233, "length": 288},{"offset": 51521, "length": 186},{"offset": 51707, "length": 100},{"offset": 51807, "length": 42},{"offset": 51849, "length": 20},{"offset": 51869, "length": 11}]}]}
        ]}];
        
    }
}

