#include <iostream>
using namespace std;

class Car
{
    public:
    int speed;
    void drive()
    {
        speed = 10;
        cout << "Jade" << endl << "Aktualna predkosc: " << speed << endl;
    }
    void stop()
    {
        speed = 0;
        cout << "Zatrzymuje sie" << endl << "Aktualna predkosc: " << speed << endl;
    }
    void accelerate(int acc)
    {
        speed += acc;
        cout << "Przyspieszam" << endl << "Aktualna predkosc: " << speed << endl;
    }
};

int main()
{
    Car autko;
    autko.drive();
    autko.stop();
    autko.accelerate(20);
    return 0;
}