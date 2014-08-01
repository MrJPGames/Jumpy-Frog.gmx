///genLayer(y)
randomize()
prevx=global.minx+64
done=false
tries=0
while (!done){
    randx=round(random_range(0,room_width/32-2))
    randx*=32
    if !(randx-global.minx == 32){
        for (i=0;i<randx/32;i+=1){
            instance_create(i*32,argument0,obj_Platform)
        }
        for (i=14;i>randx/32+1;i-=1){
            instance_create(i*32,argument0,obj_Platform)
        }
        done=true
        instance_create(480,argument0,obj_Platform)
    }
}
global.minx = randx
