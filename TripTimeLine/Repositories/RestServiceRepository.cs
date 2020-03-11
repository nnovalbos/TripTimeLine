namespace TripTimeLine.Repositories
{
    using System;
    using System.Threading.Tasks;
    using Newtonsoft.Json;
    using TripTimeLine.Common;
    using TripTimeLine.Contracts.Repositories;

    public class RestServiceRepository : IGenericRepository
    {

        public async Task<T> GetAsync<T>(string uri, string authToken = "")
        {
            await Task.Delay(2000);
            var jsonResult = MockDataUtils.GetJsonDataFromService();
            return JsonConvert.DeserializeObject<T>(jsonResult);
        }

        public Task DeleteAsync(string uri, string authToken = "")
        {
            throw new NotSupportedException();
        }

        public Task<T> PostAsync<T>(string uri, T data, string authToken = "")
        {
            throw new NotSupportedException();
        }

        public Task<R> PostAsync<T, R>(string uri, T data, string authToken = "")
        {
            throw new NotSupportedException();
        }

        public Task<T> PutAsync<T>(string uri, T data, string authToken = "")
        {
            throw new NotSupportedException();
        }
    }
}