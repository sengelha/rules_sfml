#include <SFML/Graphics.hpp>

class pat_tile : public sf::Drawable, public sf::Transformable {
  private:
    virtual void draw(sf::RenderTarget &target, sf::RenderStates states) const {
        states.transform *= getTransform();

        sf::Uint8 pixels[8 * 8 * 4];
        sf::Image image;
        image.create(8, 8, pixels);
        sf::Texture texture;
        texture.loadFromImage(image);
        sf::Sprite sprite;
        sprite.setTexture(texture, true);
        target.draw(sprite, states);
    }
};

int main(void) {
    pat_tile t;
    return 0;
}