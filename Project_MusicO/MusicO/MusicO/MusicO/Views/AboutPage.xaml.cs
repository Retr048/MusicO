using System;
using Xamarin.Forms;
using Xamarin.Essentials;
using Xamarin.Forms.Maps;
using Newtonsoft.Json.Linq;
using System.Diagnostics;
using System.Net.Http;
using System.Threading.Tasks;
using System.IO;

namespace MusicO.Views
{
    public partial class AboutPage : ContentPage
    {
        private const string BingMapsKey = "ArdglWqtAhasv8gI78DVQnWI-tEDLud3rOd2MKAsAx7xb-tWVkInzXgt5EeEEE-Z";
        string address;
        Location location;

        public AboutPage()
        {
            InitializeComponent();
            GetLocation();
            if (location != null)
                InitializeMap();
        }
        
        public async Task GetLocation()
        {
            location = await Geolocation.GetLastKnownLocationAsync();
            if (location == null)
            {
                location = await Geolocation.GetLocationAsync(new GeolocationRequest
                {
                    DesiredAccuracy = GeolocationAccuracy.Best,
                    Timeout = TimeSpan.FromSeconds(1)
                });
            }
        }

        private async void InitializeMap()
        {
            await LoadMapAsync(location.Latitude, location.Longitude);
        }

        private async Task LoadMapAsync(double latitude, double longitude)
        {
            try
            {
                int zoomLevel = 16;
                string lat = Convert.ToString(latitude).Replace(',', '.');
                string lng = Convert.ToString(longitude).Replace(',', '.');
                string url = $"https://dev.virtualearth.net/REST/v1/Imagery/Map/Road/{lat},{lng}/{zoomLevel}?mapSize=500,500&key={BingMapsKey}&q={DateTime.Now.Ticks}";
                Debug.WriteLine(url);
                // Send a GET request to the Bing Maps REST services.
                using (HttpClient client = new HttpClient())
                {
                    HttpResponseMessage response = await client.GetAsync(url);

                    if (response.IsSuccessStatusCode)
                    {
                        // Get the map data from the response.
                        byte[] mapData = await response.Content.ReadAsByteArrayAsync();

                        // Set the map data as the source of the Image control.
                        MapImage.Source = ImageSource.FromStream(() => new MemoryStream(mapData));
                    }
                }
            }
            catch (Exception ex)
            {
                // Todo Handle errors.
                Console.WriteLine($"Error: {ex.Message}");
            }
        }

        private async Task<string> GetCompleteAddressString(double latitude, double longitude)
        {
            Debug.WriteLine(latitude + " " + longitude);
            string address = "";
            try
            {
                string url = $"https://nominatim.openstreetmap.org/reverse?format=jsonv2&lat={latitude}&lon={longitude}";
                using (HttpClient client = new HttpClient())
                {
                    client.DefaultRequestHeaders.Add("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0");
                    HttpResponseMessage response = await client.GetAsync(url);
                    if (response.IsSuccessStatusCode)
                    {
                        string json = await response.Content.ReadAsStringAsync();
                        JObject result = JObject.Parse(json);
                        address = result["display_name"].ToString();
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error getting address:{address}");
            }
            Debug.WriteLine(address);
            return address;
        }



        private async void btnLocationClicked(object ender, EventArgs e)
        {
            try
            {
                await GetLocation();
                if (location != null)
                {
                    address = await GetCompleteAddressString(location.Latitude, location.Longitude);
                    buttonPlaylist.Text = address;
                    await LoadMapAsync(location.Latitude, location.Longitude);
                }
            }
            catch 
            {
                // Todo exception handling
            }
        }

        async void Handle_Clicked(object sender, System.EventArgs e)
        {
            await Navigation.PushAsync(new PageLogIn());
        }

    }
}