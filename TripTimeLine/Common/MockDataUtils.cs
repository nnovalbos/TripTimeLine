namespace TripTimeLine.Common
{
    using System;
    using System.Collections.Generic;
    using System.Collections.ObjectModel;
    using TripTimeLine.Extensions;
    using Newtonsoft.Json;
    using TripTimeLine.Models;

    public static class MockDataUtils
    {
        private static Trip mockDataObj = new Trip
        {
            Duration = 3,
            Kilometers = 300,
            FuelConsumption = 50,
            FuelConsumptionLitersPerHour = 0.16,
            StartTrip = new TripEvent
            {
                Date = DateTime.Now,
                Name = "STARTTEST-3"
            },
            EndTrip = new TripEvent
            {
                Date = DateTime.Now + TimeSpan.FromDays(2),
                Name = "ENDTEST-3"
            },

            TripEvents = new ObservableCollection<TripEvent>
                {
                    new TripEvent
                    {
                        Date = DateTime.Now + TimeSpan.FromHours(1),
                        Name = "Event-3-0-0"
                    },
                    new TripEvent
                    {
                        Date = DateTime.Now + TimeSpan.FromHours(2),
                        Name = "Event-3-0-1"
                    },
                    new TripEvent
                    {
                        Date = DateTime.Now + TimeSpan.FromHours(3),
                        Name = "Event-3-0-2"
                    },
                      new TripEvent
                    {
                        Date = DateTime.Now + TimeSpan.FromDays(1)  + TimeSpan.FromHours(1),
                        Name = "Event-3-1-0"
                    },
                    new TripEvent
                    {
                        Date = DateTime.Now + TimeSpan.FromDays(1) + TimeSpan.FromHours(2),
                        Name = "Event-3-1-1"
                    },
                    new TripEvent
                    {
                        Date = DateTime.Now + TimeSpan.FromDays(1) + TimeSpan.FromHours(3),
                        Name = "Event-3-1-2"
                    },
                      new TripEvent
                    {
                        Date = DateTime.Now + TimeSpan.FromDays(2)  + TimeSpan.FromHours(1),
                        Name = "Event-3-2-0"
                    },
                    new TripEvent
                    {
                        Date = DateTime.Now + TimeSpan.FromDays(2) + TimeSpan.FromHours(2),
                        Name = "Event-3-2-1"
                    },
                    new TripEvent
                    {
                        Date = DateTime.Now + TimeSpan.FromDays(2) + TimeSpan.FromHours(3),
                        Name = "Event-3-2-2"
                    }
                }
        };

        public static IEnumerable<GroupList<TripEvent>> PreviewData => mockDataObj.GetEventsGrouped();

        public static string GetJsonDataFromService()
        {
            return JsonConvert.SerializeObject(mockDataObj);
        }
    }
}
