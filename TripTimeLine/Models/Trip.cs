namespace TripTimeLine.Models
{
    using System.Collections.Generic;

    public class Trip
    {
        public int Duration { get; set; }

        public double Kilometers { get; set; }

        public double FuelConsumption { get; set; }

        public double FuelConsumptionLitersPerHour { get; set; }

        public TripEvent StartTrip { get; set; }

        public TripEvent EndTrip { get; set; }

        public IEnumerable<TripEvent> TripEvents { get; set; }

    }
}