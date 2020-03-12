namespace TripTimeLine.Extensions
{
    using System.Collections.Generic;
    using System.Collections.ObjectModel;
    using System.Linq;
    using TripTimeLine.Models;

    public static class TripExtensions
    {
        public static IEnumerable<GroupList<TripEvent>> GetEventsGrouped(this Trip trip)
        {
            var eventList = new ObservableCollection<GroupList<TripEvent>>();

            var queryEventsByDate =
                from ev in trip.TripEvents
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