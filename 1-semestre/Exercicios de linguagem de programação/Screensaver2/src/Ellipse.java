import java.awt.*;

public class Ellipse extends Rectangle {

    @Override
    public void draw(Graphics g) {

        g.setColor(getColor()); // Define a cor da elipse
        g.fillOval(getX(), getY(), getWidth(), getHeight()); // Desenha a elipse
    }
}
