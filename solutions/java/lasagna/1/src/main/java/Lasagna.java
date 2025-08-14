public class Lasagna {
    // TODO: define the 'expectedMinutesInOven()' method
    public int expectedMinutesInOven() {
        int minutes = 40;
        return minutes;
    }
    // TODO: define the 'remainingMinutesInOven()' method
    public int remainingMinutesInOven(int minutesPassed) {
        return this.expectedMinutesInOven() - minutesPassed;
    }
    // TODO: define the 'preparationTimeInMinutes()' method
    public int preparationTimeInMinutes(int numLayers) {
        int layerTime = 2 * numLayers;
        return layerTime;
    }
    // TODO: define the 'totalTimeInMinutes()' method
    public int totalTimeInMinutes(int numLayers, int minutesPassed) {
        return this.preparationTimeInMinutes(numLayers) + minutesPassed;
    }
}
