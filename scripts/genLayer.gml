///genLayer(y)
randomize()
prevx=global.minx+96
done=false
tries=0
while (!done){
    randx=round(random_range(0,room_width/32))
    randx*=32
    if !(randx <= prevx and randx >= global.minx){
        for (i=0;i<randx/32;i+=1){
            instance_create(i*32,argument0,obj_Platform)
        }
        for (i=14;i>=randx/32+3;i-=1){
            instance_create(i*32,argument0,obj_Platform)
        }
        done=true
    }
}
global.minx = randx*32
