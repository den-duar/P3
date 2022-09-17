package aula04;

public class OperateCarBMW7601 implements OperateCar {

    @Override
    public int turn(Direction direction, int radius, int startSpeed, int endSpeed) {
        return 0;
    }

    @Override
    public int changeLanes(Direction direction, int startSpeed, int endSpeed) {
        return 0;
    }

    @Override
    public int signalTurn(Direction direction, boolean signalOn) {
        return 0;
    }

    @Override
    public int getRadarFront(double distanceTocar, int speedOfCar) {
        return 0;
    }

    @Override
    public int getRadarRear(double distanceToCar, int speedOfCar) {
        return 0;
    }
}
