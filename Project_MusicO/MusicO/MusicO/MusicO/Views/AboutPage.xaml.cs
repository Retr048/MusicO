using System;
using System.ComponentModel;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Forms.Maps;
using System.Threading.Tasks;
using System.Collections.Generic;
using Nominatim.API;
using Newtonsoft.Json.Linq;
using System.Diagnostics;
using System.Net.Http;

namespace MusicO.Views
{
    public partial class AboutPage : ContentPage
    {
        public AboutPage()
        {
            InitializeComponent();
        }
        Location location;
        public async void GetLocation()
        {
            location = await Geolocation.GetLastKnownLocationAsync();
            if (location == null)
            {
                location = await Geolocation.GetLocationAsync(new GeolocationRequest
                {
                    DesiredAccuracy = GeolocationAccuracy.Medium,
                    Timeout = TimeSpan.FromSeconds(1)
                });
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
            buttonPlaylist.Text = "You changed the text!";
            GetLocation();
            if (location != null)
            {
                string address = await GetCompleteAddressString(location.Latitude, location.Longitude);
            buttonPlaylist.Text = address;
            }
        }



    }
}