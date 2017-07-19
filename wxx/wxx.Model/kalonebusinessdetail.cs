/**  版本信息模板在安装目录下，可自行修改。
* kalonebusinessdetail.cs
* model
* 功 能： N/A
* 类 名： kalonebusinessdetail
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
    /// kalonebusinessdetail:实体类(属性说明自动提取数据库字段的描述信息)
    /// </summary>
    [Serializable]
    public partial class kalonebusinessdetail
    {
        
        #region Model
        private int _Id;
        private string _orderID;
        private string _foodID;
        private string _foodName;
        private int _amount;
        private string _new1;
        private float _new2;


        /// <summary>
        ///
        /// <summary>
        public int Id
        {
            set { _Id = value; }
            get { return _Id; }
        }
        /// <summary>
        ///
        /// <summary>
        public string orderID
        {
            set { _orderID = value; }
            get { return _orderID; }
        }
        /// <summary>
        ///
        /// <summary>
        public string foodID
        {
            set { _foodID = value; }
            get { return _foodID; }
        }
        /// <summary>
        ///
        /// <summary>
        public string foodName
        {
            set { _foodName = value; }
            get { return _foodName; }
        }
        /// <summary>
        ///
        /// <summary>
        public int amount
        {
            set { _amount = value; }
            get { return _amount; }
        }
        /// <summary>
        ///
        /// <summary>
        public string new1
        {
            set { _new1 = value; }
            get { return _new1; }
        }
        /// <summary>
        ///
        /// <summary>
        public float new2
        {
            set { _new2 = value; }
            get { return _new2; }
        }


        #endregion Model
        public kalonemerchandise Food
        {
            set ;
            get ; 
        }
        public kalonebusinessdetail()
        {
            this.Food = new kalonemerchandise();

        }
        public kalonebusinessdetail(string new1,kalonemerchandise Food,int amount=1)
        {
            this.Food = Food;
            this.new2 = Food.price;
            this.amount = amount;
        }
    }
}

