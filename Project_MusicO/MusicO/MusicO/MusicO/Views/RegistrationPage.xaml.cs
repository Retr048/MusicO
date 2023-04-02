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
	public partial class RegistrationPage : ContentPage
	{
		public RegistrationPage ()
		{
            SetValue(NavigationPage.HasNavigationBarProperty, false);
            InitializeComponent();
		}

		void Handle_Clicked(object sender, System.EventArgs e)
		{
			var dbpath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), "UserDatabase.db");
			var db = new SQLiteConnection(dbpath);
			db.CreateTable<RegUserTable>();

			var item = new RegUserTable() 
			{
				
				UserName = EntryUserName.Text,
				Password = EntryPassword.Text,
				Email = EntryEmail.Text
			};
			db.Insert(item);
			Device.BeginInvokeOnMainThread(async () =>
			{

				var result = await this.DisplayAlert("Congratulations!", "User Registration Successfull", "Yes", "Cancel");

				if (result)
					await Navigation.PushAsync(new PageLogIn());

			});
		}
	}
}