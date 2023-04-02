using MusicO.Tables;
using SQLite;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace MusicO.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PageLogIn : ContentPage
	{
		public PageLogIn ()
		{
			SetValue(NavigationPage.HasNavigationBarProperty, false);
			InitializeComponent ();
		}

		async void Handle_Clicked(object sender, System.EventArgs e)
		{
			await Navigation.PushAsync(new RegistrationPage());
		}

		async void Handle_Clicked_2(object sender, System.EventArgs e)
		{
            var dbpath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), "UserDatabase.db");
            var db = new SQLiteConnection(dbpath);
			var myquery = db.Table<RegUserTable>().Where(u => u.UserName.Equals(EntryUser.Text) && u.Password.Equals(EntryPassword.Text)).FirstOrDefault();
			
			if(myquery != null)
			{
				App.Current.MainPage = new NavigationPage(new AboutPage());
			}
			else
			{
                Device.BeginInvokeOnMainThread(async () =>
                {

                    var result = await this.DisplayAlert("Error", "Failed Registration", "Yes", "Cancel");

                    if (result)
                        await Navigation.PushAsync(new PageLogIn());
					else
					{
						await Navigation.PushAsync(new PageLogIn());
					}
                });
            }
		
		}

	}
}