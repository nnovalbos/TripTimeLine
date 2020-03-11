namespace TripTimeLine.Contracts.Services
{
    using System.Threading.Tasks;
    using Models;

    public interface ITripsService
    {
        Task<Trip> GetTrip(string tripId);
    }
}