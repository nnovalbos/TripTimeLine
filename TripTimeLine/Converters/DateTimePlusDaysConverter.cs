namespace TripTimeLine.Converters
{
    using System;
    using System.Globalization;
    using Xamarin.Forms;

    public class DateTimePlusDaysConverter : IValueConverter
    {

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var days = 1;

            if (parameter != null && parameter is int numDays)
            {
                days = numDays;
            }

            if(value is string strDate)
            {
                var date = DateTime.ParseExact(strDate, "dd/MM/yyyy", CultureInfo.InvariantCulture);
                date = date.AddDays(days);
                return date.ToString("dd/MM/yyyy");
            }

            return value;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotSupportedException();
        }
    }
}
