using System;
using System.Text;
using Loger;

namespace BuildingLib
{
	public class TeamLeader : Worker, IWorker
	{
		public TeamLeader ()
			: base()
		{
		}

		public TeamLeader (string name)
			: base(name)
		{
		}

		public override string Work (House house)
		{ //make report
			StringBuilder str = new StringBuilder ();
			for (int i=0; i < house.CountParts; ++i) {
				if (house [i].IsBuilding) {
					str = str.Append (String.Format ("Построен(а) {0}\n", house [i].ToString ()));
				}
			}
			if (str.Length != 0) {
				Log.WriteLog (new Message (str, this.ToString ()));
				return str.ToString ();
			} else {
				str.Append ("Ничего не сделано");
				Log.WriteLog (new Message (str, this.ToString ()));
				return str.ToString ();
			}
		}

		public override string ToString ()
		{
			return "TeamLeader";
		}
	}
}
