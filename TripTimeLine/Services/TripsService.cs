namespace TripTimeLine.Services
{
    using System.Threading.Tasks;
    using TripTimeLine.Contracts.Repositories;
    using TripTimeLine.Contracts.Services;
    using TripTimeLine.Models;

    public class TripsService : ITripsService
    {
        private readonly IGenericRepository repository;

        public TripsService(IGenericRepository repository)
        {
            this.repository = repository;
        }

        public async Task<Trip> GetTrip(string tripId)
        {
            return await repository.GetAsync<Trip>("http://...", "sdsssdsds");
        }
    }
}
