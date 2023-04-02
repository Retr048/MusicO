using System;
using Xamarin.Forms;
using Xamarin.Essentials;
using Xamarin.Forms.Maps;
using Newtonsoft.Json.Linq;
using System.Diagnostics;
using System.Net.Http;
using System.Threading.Tasks;
using System.IO;
using Android.Text;

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
            string adrToText = "";

            try
            {
                await GetLocation();
                if (location != null)
                {
                    address = await GetCompleteAddressString(location.Latitude, location.Longitude);

                    foreach (char chr in address)
                    {
                        if (chr == ',') break;
                        adrToText += chr;
                    }
                    adrLabel.Text = "You are in: " + adrToText + "\nCurrently playing: ";
                    await LoadMapAsync(location.Latitude, location.Longitude);
                }
                Random rnd = new Random();


                if (adrToText.Contains("Американски университет в България"))
                {
                    int rand = rnd.Next(5);
                    Browser.OpenAsync(playlist1[rand]);
                    adrLabel.Text += subplay1[rand];
                }
                else
                {
                    int rand = rnd.Next(5);
                    Browser.OpenAsync(playlist2[rand]);
                    adrLabel.Text += subplay2[rand];
                }
            }
            catch (Exception ex)
            {
                // Todo exception handling
            }
        }

        string[] playlist1 = { "https://www.youtube.com/watch?v=QYh6mYIJG2Y",
            "https://www.youtube.com/watch?v=gl1aHhXnN1k", "https://www.youtube.com/watch?v=hT_nvWreIhg&list=PLl9ZdhTSovhwFfkrRD3sL52sN67j8FBwu",
            "https://www.youtube.com/watch?v=0KSOMA3QBU0&list=PLl9ZdhTSovhwFfkrRD3sL52sN67j8FBwu&index=2", "https://www.youtube.com/watch?v=rp2e4-Sh0Hc&embeds_euri=https%3A%2F%2Fwww.chosic.com%2F&source_ve_path=MjM4NTE&feature=emb_title"};
        string[] playlist2 = { " https://www.youtube.com/watch?v=x9buV_HJePE&embeds_euri=https%3A%2F%2Fwww.chosic.com%2F&source_ve_path=MjM4NTE&feature=emb_title",
            "https://www.youtube.com/watch?v=C2HHRRxKGiY&embeds_euri=https%3A%2F%2Fwww.chosic.com%2F&source_ve_path=MjM4NTE&feature=emb_title"
                , "https://www.youtube.com/watch?v=b1kbLwvqugk",
            "https://www.youtube.com/watch?v=QXQQAsIhHMw&embeds_euri=https%3A%2F%2Fwww.chosic.com%2F&source_ve_path=MjM4NTE&feature=emb_title",
            "https://www.youtube.com/watch?v=ANS9sSJA9Yc&embeds_euri=https%3A%2F%2Fwww.chosic.com%2F&source_ve_path=MjM4NTE&feature=emb_title" };


        string[] playlist3 = { "https://www.youtube.com/watch?v=RgKAFK5djSk&embeds_euri=https%3A%2F%2Fwww.chosic.com%2F&source_ve_path=MjM4NTE&feature=emb_title",
            "https://www.youtube.com/watch?v=j5-yKhDd64s&embeds_euri=https%3A%2F%2Fwww.chosic.com%2F&source_ve_path=MjM4NTE&feature=emb_title",
            "https://www.youtube.com/watch?v=GzU8KqOY8YA&embeds_euri=https%3A%2F%2Fwww.chosic.com%2F&source_ve_path=MjM4NTE&feature=emb_title",
            "https://www.youtube.com/watch?v=uelHwf8o7_U&embeds_euri=https%3A%2F%2Fwww.chosic.com%2F&source_ve_path=MjM4NTE&feature=emb_title",
            "https://www.youtube.com/watch?v=2KBFD0aoZy8&embeds_euri=https%3A%2F%2Fwww.chosic.com%2F&source_ve_path=MjM4NTE&feature=emb_title" };

        string[] subplay1 = { "Ariana Grande - 7 rings", "Ariana Grande - thank u, next ", "OneRepublic - Counting Stars", "Katy Perry - Dark Horse", "Juice WRLD ft. Marshmello, Polo G & Kid Laroi - Hate The Other Side" };
        string[] subplay2 = { "Melanie Martinez - Void", "FIFTY FIFTY - Cupid", "Taylor Swift - Anti-Hero", "ROSALÍA, Rauw Alejandro - BESO", "Maroon 5 - Don't Wanna Know" };
        string[] subplay3 = { "Wiz Khalifa - See You Again ft. Charlie Puth", "Eminem - Not Afraid", "Sean Paul - No Lie", "Eminem - Love The Way You Lie ft. Rihanna", "Ava Max - Sweet but Psycho" };

        async void Handle_Clicked(object sender, System.EventArgs e)
        {
            await Navigation.PushAsync(new PageLogIn());
        }

    }
}