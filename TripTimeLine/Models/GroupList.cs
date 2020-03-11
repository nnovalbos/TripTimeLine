namespace TripTimeLine.Models
{
    using System.Collections.ObjectModel;

    public class GroupList<T>: ObservableCollection<T>
    {
        public string Heading { get; set; }
        public ObservableCollection<T> Events => this;
    }
}