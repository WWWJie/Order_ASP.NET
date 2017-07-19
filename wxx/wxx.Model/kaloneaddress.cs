/**  版本信息模板在安装目录下，可自行修改。
* kaloneaddress.cs
* model
* 功 能： N/A
* 类 名： kaloneaddress
*
* Ver    变更日期             负责人  变更内容
* ───────────────────────────────────
* V0.01  2016/12/3   N/A    初版
*
*┌──────────────────────────────────┐
*│　此技术信息为本公司机密信息，未经本公司书面同意禁止向第三方披露．　│
*│　版权所有：宁波大学科技学院 　　　　　　　　　　　　　　│
*└──────────────────────────────────┘
*/
using System;
namespace wxx.Model
{
	/// <summary>
	/// kaloneaddress:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class kaloneaddress
	{
		public kaloneaddress()
		{}
		#region Model
		private int _Id;
		private string _address;
		private string _phone;
		private string _name;
		private string _userID;
		private string _new1;
		private string _new2;


		/// <summary>
		///
		/// <summary>
		public int Id
		{
			set{ _Id=value;}
			get{return _Id;}
		}
		/// <summary>
		///
		/// <summary>
		public string address
		{
			set{ _address=value;}
			get{return _address;}
		}
		/// <summary>
		///
		/// <summary>
		public string phone
		{
			set{ _phone=value;}
			get{return _phone;}
		}
		/// <summary>
		///
		/// <summary>
		public string name
		{
			set{ _name=value;}
			get{return _name;}
		}
		/// <summary>
		///
		/// <summary>
		public string userID
		{
			set{ _userID=value;}
			get{return _userID;}
		}
		/// <summary>
		///
		/// <summary>
		public string new1
		{
			set{ _new1=value;}
			get{return _new1;}
		}
		/// <summary>
		///
		/// <summary>
		public string new2
		{
			set{ _new2=value;}
			get{return _new2;}
		}

 
		#endregion Model

	}
}

