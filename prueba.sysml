package Day1_ChristmasTree {

  part myChristmasTree {
    part trunk;
    part branches [5..10];
    part needles;
    part ornaments;
    part lights [100] {
      part greenLights [50];
      part redLights [50]{
        attribute color = "red";
      }
    }
  }
}