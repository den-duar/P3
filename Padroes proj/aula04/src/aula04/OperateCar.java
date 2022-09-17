package aula04;

public interface OperateCar {

    int turn(Direction direction, int radius, int startSpeed, int endSpeed);
    int changeLanes(Direction direction, int startSpeed, int endSpeed);
    int signalTurn(Direction direction, boolean signalOn);
    int getRadarFront(double distanceTocar, int speedOfCar);
    int getRadarRear(double distanceToCar, int speedOfCar);
}