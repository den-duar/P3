package aula05;

public class patoCubano extends Pato implements Voador {

    @Override
    public void nadar() {
        super.nadar();
    }

    @Override
    public void grasnar() {
    }

    @Override
    public void voar() {
        System.out.println("Voar voar, subir subir");;
    }
}
