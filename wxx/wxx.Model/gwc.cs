/**  版本信息模板在安装目录下，可自行修改。
* gwc.cs
* model
* 功 能： N/A
* 类 名： gwc
*
* Ver    变更日期             负责人  变更内容
* ───────────────────────────────────
* V0.01  2016/12/24   N/A    初版
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
	/// gwc:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class gwc
	{
		public gwc()
		{}
		#region Model
		private int _Id;
		private string _userid;
		private string _foodname;
		private double _price;
		private int _count;


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
		public string userid
		{
			set{ _userid=value;}
			get{return _userid;}
		}
		/// <summary>
		///
		/// <summary>
		public string foodname
		{
			set{ _foodname=value;}
			get{return _foodname;}
		}
		/// <summary>
		///
		/// <summary>
		public double price
		{
			set{ _price=value;}
			get{return _price;}
		}
		/// <summary>
		///
		/// <summary>
		public int count
		{
			set{ _count=value;}
			get{return _count;}
		}

 
		#endregion Model

	}
}

