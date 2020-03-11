namespace TripTimeLine.Models
{
    using System.Collections.ObjectModel;
    using System.ComponentModel;

    [DesignTimeVisible(true)]
    public class GroupList<T>: ObservableCollection<T>
    {
        public string Heading { get; set; }
        public ObservableCollection<T> Events => this;
    }
}