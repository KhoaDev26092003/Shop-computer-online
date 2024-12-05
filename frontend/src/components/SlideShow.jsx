const images = [
  "../src/assets/slide1.webp",
  "../src/assets/slide2.jpg",
  "../src/assets/slide3.jpg"
];

import { Slide } from "react-slideshow-image";
import "react-slideshow-image/dist/styles.css";

const Slideshow = () => {
  return (
    <div className="w-4/5 mx-auto">
      <Slide easing="ease" duration={3000}>
        {images.map((image, index) => (
          <div key={index} className="each-slide">
            <img src={image} alt={`Slide ${index + 1}`} className="w-full h-auto" />
          </div>
        ))}
      </Slide>
    </div>
  );
};

export default Slideshow;

