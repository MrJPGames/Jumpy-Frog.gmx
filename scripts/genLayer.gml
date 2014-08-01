///genLayer(y)
randomize()
prevx=global.minx+64
done=false
tries=0
ic=0
while (!done){
    randx=round(random_range(0,room_width/32-2))
    randx*=32
    if !(randx <= prevx and randx >= global.minx){
        for (i=0;i<randx/32;i+=1){
            instance_create(i*32,argument0,obj_Platform)
            ic+=1
        }
        for (i=14;i>randx/32+1;i-=1){
            instance_create(i*32,argument0,obj_Platform)
            ic+=1
        }
        done=true
    }
}
//possible fix
//if ic >= 14{
//    genLayer(argument0)
//}
global.minx = randx*32
