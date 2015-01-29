using GLib;

namespace SinticBolivia.POS
{
	public interface PosModule : Object
	{
		public abstract void OnLoad();
		public abstract void OnInit();
		public abstract void OnUnload();
	}
}

