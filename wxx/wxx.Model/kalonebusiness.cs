/**  版本信息模板在安装目录下，可自行修改。
* kalonebusiness.cs
* model
* 功 能： N/A
* 类 名： kalonebusiness
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
using System.Collections.Generic;

namespace wxx.Model
{
	/// <summary>
	/// kalonebusiness:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class kalonebusiness
	{
		public kalonebusiness()
		{
            this.addTime = DateTime.Now.ToString();
            this.kalonebusinessdetail = new List<kalonebusinessdetail>();
        }
		#region Model
		private int _Id;
		private string _userName;
		private string _userID;
		private string _orderID;
		private string _address;
		private string _phone;
		private float _totalPrice;
		private string _status;
		private string _addTime;
		private string _shipTime;
		private string _finishTime;
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
		public string userID
		{
			set{ _userID=value;}
			get{return _userID;}
		}
		/// <summary>
		///
		/// <summary>
		public string orderID
		{
			set{ _orderID=value;}
			get{return _orderID;}
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
		public float totalPrice
		{
            set;
            get;
		}
		/// <summary>
		///
		/// <summary>
		public string status
		{
			set{ _status=value;}
			get{return _status;}
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
		public string shipTime
		{
			set{ _shipTime=value;}
			get{return _shipTime;}
		}
		/// <summary>
		///
		/// <summary>
		public string finishTime
		{
			set{ _finishTime=value;}
			get{return _finishTime;}
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
        public IList<kalonebusinessdetail> kalonebusinessdetail { get; set; }

        #endregion Model
        public kalonebusiness(string userName,string address,string phone,OrderState status=(OrderState)1 )
        {
            this.userName = userName;
            this.address = address;
            this.phone = phone;
            this.status = status.ToString();
            this.addTime = DateTime.Now.ToString();
            this.kalonebusinessdetail = new List<kalonebusinessdetail>();
            this.totalPrice = 0;
            foreach(kalonebusinessdetail kalonebusinessdetail in this.kalonebusinessdetail)
            {
                this.totalPrice += kalonebusinessdetail.new2 * kalonebusinessdetail.amount;
            }
        }
        public float GetTotle()
        {
            totalPrice = 0;
            foreach (kalonebusinessdetail kalonebusinessdetail in this.kalonebusinessdetail)
            {
                totalPrice += kalonebusinessdetail.new2 * kalonebusinessdetail.amount;
            }
            return totalPrice;
        }
        public enum OrderState { 未付款 = 1, 已付款, 已发货, 已完成 }
    }
}

