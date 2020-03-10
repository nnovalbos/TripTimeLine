using System;
using System.Collections.ObjectModel;
using Newtonsoft.Json;
using TripTimeLine.Models;

namespace TripTimeLine.Common
{
    public static class MockDataUtils
    {
        public static string GetJsonDataFromService()
        {
            var mockDataObj = new Trip
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

            return JsonConvert.SerializeObject(mockDataObj);
        }
    }
}
