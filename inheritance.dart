//inheritance supported in dart are single,multilevel,hierarchical

class vehicle
{
    var enginerpm;
    var no_of_wheel;

    void engine_running()
    {
        print("engine is running");
    }


}

class truck extends vehicle
{
    var heavyload;
    void truck_started()
    {
        print("truck is started");

    }
}

class car extends vehicle
{
    var no_of_seats;
    void car_started()
    {
        print("car is started");

    }

}



void main()
{
    var t1=truck();
    t1.enginerpm=3000;
    t1.no_of_wheel=10;
    print(t1.enginerpm);
    print(t1.no_of_wheel);
    t1.truck_started();



    var c1=car();
    c1.enginerpm=500;
    c1.no_of_wheel=4;
    print(c1.enginerpm);
    print(c1.no_of_wheel);
    c1.car_started();
}