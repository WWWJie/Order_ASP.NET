/**  版本信息模板在安装目录下，可自行修改。
* kaloneadmin.cs
* model
* 功 能： N/A
* 类 名： kaloneadmin
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
	/// kaloneadmin:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class kaloneadmin
	{
		public kaloneadmin()
		{}
		#region Model
		private int _Id;
		private string _userName;
		private string _account;
		private string _password;
		private string _phone;
		private string _gender;
		private string _category;
		private string _role;
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
		public string userName
		{
			set{ _userName=value;}
			get{return _userName;}
		}
		/// <summary>
		///
		/// <summary>
		public string account
		{
			set{ _account=value;}
			get{return _account;}
		}
		/// <summary>
		///
		/// <summary>
		public string password
		{
			set{ _password=value;}
			get{return _password;}
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
		public string gender
		{
			set{ _gender=value;}
			get{return _gender;}
		}
		/// <summary>
		///
		/// <summary>
		public string category
		{
			set{ _category=value;}
			get{return _category;}
		}
		/// <summary>
		///
		/// <summary>
		public string role
		{
			set{ _role=value;}
			get{return _role;}
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

