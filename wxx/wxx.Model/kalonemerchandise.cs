/**  版本信息模板在安装目录下，可自行修改。
* kalonemerchandise.cs
* model
* 功 能： N/A
* 类 名： kalonemerchandise
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
	/// kalonemerchandise:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class kalonemerchandise
	{
		public kalonemerchandise()
		{}
		#region Model
		private int _Id;
		private string _foodName;
		private int _amount;
		private string _unit;
		private string _description;
		private float _price;
		private string _pic;
		private string _editTime;
		private string _addTime;
		private string _editor;
		private string _foodID;
		private string _state;
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
		public string foodName
		{
			set{ _foodName=value;}
			get{return _foodName;}
		}
		/// <summary>
		///
		/// <summary>
		public int amount
		{
			set{ _amount=value;}
			get{return _amount;}
		}
		/// <summary>
		///
		/// <summary>
		public string unit
		{
			set{ _unit=value;}
			get{return _unit;}
		}
		/// <summary>
		///
		/// <summary>
		public string description
		{
			set{ _description=value;}
			get{return _description;}
		}
		/// <summary>
		///
		/// <summary>
		public float price
		{
			set{ _price=value;}
			get{return _price;}
		}
		/// <summary>
		///
		/// <summary>
		public string pic
		{
			set{ _pic=value;}
			get{return _pic;}
		}
		/// <summary>
		///
		/// <summary>
		public string editTime
		{
			set{ _editTime=value;}
			get{return _editTime;}
		}
		/// <summary>
		///
		/// <summary>
		public string addTime
		{
			set{ _addTime=value;}
			get{return _addTime;}
		}
		/// <summary>
		///
		/// <summary>
		public string editor
		{
			set{ _editor=value;}
			get{return _editor;}
		}
		/// <summary>
		///
		/// <summary>
		public string foodID
		{
			set{ _foodID=value;}
			get{return _foodID;}
		}
		/// <summary>
		///
		/// <summary>
		public string state
		{
			set{ _state=value;}
			get{return _state;}
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

