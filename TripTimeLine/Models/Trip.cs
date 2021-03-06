﻿namespace TripTimeLine.Models
{
    using System.Collections.Generic;
    using System.Collections.ObjectModel;
    using System.Linq;

    public class Trip
    {
        public int Duration { get; set; }

        public double Kilometers { get; set; }

        public double FuelConsumption { get; set; }

        public double FuelConsumptionLitersPerHour { get; set; }

        public TripEvent StartTrip { get; set; }

        public TripEvent EndTrip { get; set; }

        public IEnumerable<TripEvent> TripEvents { get; set; }

        public IEnumerable<GroupList<TripEvent>> CreateGroupList()
        {
            var eventList = new ObservableCollection<GroupList<TripEvent>>();

            var queryEventsByDate =
                from ev in TripEvents
                group ev by ev.Date.Day into newGroup
                orderby newGroup.Key
                select newGroup;

            foreach (var nameGroup in queryEventsByDate)
            {
                var tripEvent = new GroupList<TripEvent>();

                foreach (var TripEvent in nameGroup)
                {
                    tripEvent.Add(TripEvent);
                }

                tripEvent.Heading = tripEvent[0].Date.ToString("dd/MM/yyyy");

                eventList.Add(tripEvent);
            }

            return eventList;
        }

    }
}