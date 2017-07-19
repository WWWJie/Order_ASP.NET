/**  版本信息模板在安装目录下，可自行修改。
* kalonebusiness.cs
* dal
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
using System.Data;
using System.Text;
using wxx.Common;//Please add references
using MySql.Data.MySqlClient;

namespace wxx.DAL
{
	/// <summary>
	/// 数据访问类:kalonebusiness
	/// </summary>
	public partial class kalonebusiness
	{
        public kalonebusiness()
		{}

		#region  add update del

		/// <summary>
		/// 增加一条数据
		/// </summary>
        public int Add(wxx.Model.kalonebusiness model)
		{
			StringBuilder strSql=new StringBuilder();
         
			strSql.Append("insert into kalonebusiness(");
			strSql.Append("userName,userID,orderID,address,phone,totalPrice,status,addTime,shipTime,finishTime,new1,new2)  values (");
			strSql.Append("@userName,@userID,@orderID,@address,@phone,@totalPrice,@status,@addTime,@shipTime,@finishTime,@new1,@new2)");
			strSql.Append(";");
			MySqlParameter[] parameters = {
					new MySqlParameter("@userName", MySqlDbType.VarChar,255),
					new MySqlParameter("@userID", MySqlDbType.VarChar,255),
					new MySqlParameter("@orderID", MySqlDbType.VarChar,255),
					new MySqlParameter("@address", MySqlDbType.VarChar,255),
					new MySqlParameter("@phone", MySqlDbType.VarChar,50),
					new MySqlParameter("@totalPrice", MySqlDbType.VarChar,255),
					new MySqlParameter("@status", MySqlDbType.VarChar,255),
					new MySqlParameter("@addTime", MySqlDbType.VarChar,255),
					new MySqlParameter("@shipTime", MySqlDbType.VarChar,255),
					new MySqlParameter("@finishTime", MySqlDbType.VarChar,255),
					new MySqlParameter("@new1", MySqlDbType.VarChar,255),
					new MySqlParameter("@new2", MySqlDbType.VarChar,255)};
			parameters[0].Value = model.userName;
			parameters[1].Value = model.userID;
			parameters[2].Value = model.orderID;
			parameters[3].Value = model.address;
			parameters[4].Value = model.phone;
			parameters[5].Value = model.totalPrice;
			parameters[6].Value = model.status;
			parameters[7].Value = model.addTime;
			parameters[8].Value = model.shipTime;
			parameters[9].Value = model.finishTime;
			parameters[10].Value = model.new1;
			parameters[11].Value = model.new2;


			int rows=DbHelperMySQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return rows;
			}
			else
			{
				return 0;
			}
		}
		/// <summary>
		/// 更新一条数据
		/// </summary>
        public bool Update(wxx.Model.kalonebusiness model)
		{
			StringBuilder strSql=new StringBuilder();

            strSql.Append("update kalonebusiness set ");
            strSql.Append("userName=@userName,");
            strSql.Append("userID=@userID,");
            strSql.Append("orderID=@orderID,");
            strSql.Append("address=@address,");
            strSql.Append("phone=@phone,");
            strSql.Append("totalPrice=@totalPrice,");
            strSql.Append("status=@status,");
            strSql.Append("addTime=@addTime,");
            strSql.Append("shipTime=@shipTime,");
            strSql.Append("finishTime=@finishTime,");
            strSql.Append("new1=@new1,");
            strSql.Append("new2=@new2");
            strSql.Append(" where Id=@Id");
            MySqlParameter[] parameters = {
					new MySqlParameter("@userName", MySqlDbType.VarChar,255),
					new MySqlParameter("@userID", MySqlDbType.VarChar,255),
					new MySqlParameter("@orderID", MySqlDbType.VarChar,255),
					new MySqlParameter("@address", MySqlDbType.VarChar,255),
					new MySqlParameter("@phone", MySqlDbType.VarChar,50),
					new MySqlParameter("@totalPrice", MySqlDbType.VarChar,255),
					new MySqlParameter("@status", MySqlDbType.VarChar,255),
					new MySqlParameter("@addTime", MySqlDbType.VarChar,255),
					new MySqlParameter("@shipTime", MySqlDbType.VarChar,255),
					new MySqlParameter("@finishTime", MySqlDbType.VarChar,255),
					new MySqlParameter("@new1", MySqlDbType.VarChar,255),
					new MySqlParameter("@new2", MySqlDbType.VarChar,255),
					new MySqlParameter("@Id", MySqlDbType.Int16,6)};
			parameters[0].Value = model.userName;
			parameters[1].Value = model.userID;
			parameters[2].Value = model.orderID;
			parameters[3].Value = model.address;
			parameters[4].Value = model.phone;
			parameters[5].Value = model.totalPrice;
			parameters[6].Value = model.status;
			parameters[7].Value = model.addTime;
			parameters[8].Value = model.shipTime;
			parameters[9].Value = model.finishTime;
			parameters[10].Value = model.new1;
			parameters[11].Value = model.new2;
			parameters[12].Value = model.Id;

			 

			int rows=DbHelperMySQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(int Id)
		{
			//该表无主键信息，请自定义主键/条件字段
			StringBuilder strSql=new StringBuilder();
            strSql.Append("delete from kalonebusiness ");
            strSql.Append(" where Id=@Id");
            MySqlParameter[] parameters = {
					new MySqlParameter("@Id", MySql.Data.MySqlClient.MySqlDbType.Int16,11)
			};
            parameters[0].Value = Id;

			int rows=DbHelperMySQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

        /// <summary>
        /// 批量删除数据
        /// </summary>
        public bool DeleteList(string Idlist)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from kalonebusiness ");
            strSql.Append(" where Id in (" + Idlist + ")  ");
            int rows = DbHelperMySQL.ExecuteSql(strSql.ToString());
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        #endregion add update del              

        /// <summary>
		/// 得到一个对象实体
		/// </summary>
        public wxx.Model.kalonebusiness GetModel(int Id)
		{
			//该表无主键信息，请自定义主键/条件字段
			StringBuilder strSql=new StringBuilder();
            strSql.Append("select   * from kalonebusiness ");
            strSql.Append(" where Id=@Id LIMIT 1");
            MySqlParameter[] parameters = {
					new MySqlParameter("@Id", MySql.Data.MySqlClient.MySqlDbType.Int16,11)
			};
            parameters[0].Value = Id;

            wxx.Model.kalonebusiness model = new wxx.Model.kalonebusiness();
			DataSet ds=DbHelperMySQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				return DataRowToModel(ds.Tables[0].Rows[0]);
			}
			else
			{
				return null;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public wxx.Model.kalonebusiness DataRowToModel(DataRow row)
		{
			wxx.Model.kalonebusiness model=new wxx.Model.kalonebusiness();
			if (row != null)
			{
                if (row["Id"] != null && row["Id"].ToString() != "")
                {
                    model.Id = int.Parse(row["Id"].ToString());
                }
                if (row["userName"] != null )
                {
                    model.userName = row["userName"].ToString();
                }
                if (row["userID"] != null )
                {
                    model.userID = row["userID"].ToString();
                }
                if (row["orderID"] != null )
                {
                    model.orderID = row["orderID"].ToString();
                }
                if (row["address"] != null )
                {
                    model.address = row["address"].ToString();
                }
                if (row["phone"] != null )
                {
                    model.phone = row["phone"].ToString();
                }
                if (row["totalPrice"] != null )
                {
                    model.totalPrice = float.Parse(row["totalPrice"].ToString());
                }
                if (row["status"] != null )
                {
                    model.status = row["status"].ToString();
                }
                if (row["addTime"] != null )
                {
                    model.addTime = row["addTime"].ToString();
                }
                if (row["shipTime"] != null )
                {
                    model.shipTime = row["shipTime"].ToString();
                }
                if (row["finishTime"] != null )
                {
                    model.finishTime = row["finishTime"].ToString();
                }
                if (row["new1"] != null )
                {
                    model.new1 = row["new1"].ToString();
                }
                if (row["new2"] != null )
                {
                    model.new2 = row["new2"].ToString();
                }

				
			}
			return model;
		}

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select * ");
            strSql.Append(" FROM kalonebusiness ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            return DbHelperMySQL.Query(strSql.ToString());
        }

        /// <summary>
                ///根据要读取的字段列表和条件 获得数据列表
        /// </summary>
        /// <param name="columslist">字段列表，如：Id,姓名,性别,年龄 </param>
        /// <param name="strWhere">条件或排序，如：年龄>12 and 性别='女' order by Id desc </param>
        /// <returns></returns>
        public DataSet GetList(string columslist,string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select " + columslist  );
            strSql.Append(" FROM kalonebusiness ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            return DbHelperMySQL.Query(strSql.ToString());
        }

        /// <summary>
        /// 获得前几行数据
        /// </summary>
        /// <param name="Top">前几行，如：10</param>
        /// <param name="strWhere">条件，如：年龄>12 and 性别='女'</param>
        /// <param name="filedOrder">排序，如： Id desc </param>
        /// <returns></returns>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select ");
 
			strSql.Append(" * ");
			strSql.Append(" FROM kalonebusiness ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			strSql.Append(" order by " + filedOrder);
            if (Top > 0)
            {
                strSql.Append("  LIMIT 0," + Top.ToString());
            }

			return DbHelperMySQL.Query(strSql.ToString());
		}
 
        /// <summary>
        /// 获得前几行数据
        /// </summary>
        /// <param name="Top">前几行，如：10</param>
        /// <param name="columslist">字段列表，如：Id,姓名,性别,年龄</param>
        /// <param name="strWhere">条件，如：年龄>12 and 性别='女'</param>
        /// <param name="filedOrder">排序，如： Id desc </param>
        /// <returns></returns>
        public DataSet GetList(int Top, string columslist, string strWhere, string filedOrder)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ");

            strSql.Append(" " + columslist + " ");
            strSql.Append(" FROM kalonebusiness ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            strSql.Append(" order by " + filedOrder);
            if (Top > 0)
            {
                strSql.Append("  LIMIT 0," + Top.ToString());
            }
            return DbHelperMySQL.Query(strSql.ToString());
        }


        /// <summary>
        /// 获得表中的某一个值
        /// </summary>
        /// <param name="columnname">字段，如：姓名</param>
        /// <param name="strWhere">条件，如：年龄>12 and 性别='女'</param>
        /// <returns>如果读取不到值，则返回 空字符串</returns>
        public string GetValue(string columnname, string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ");
 
            strSql.Append(" " + columnname + " ");
            strSql.Append(" FROM kalonebusiness ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            DataSet ds = new DataSet();
            ds =  DbHelperMySQL.Query(strSql.ToString());
            string tempstr = "";
            if (ds.Tables[0] != null && ds.Tables[0].Rows.Count > 0)
                tempstr = ds.Tables[0].Rows[0][0].ToString();

            return tempstr;
        }

		/// <summary>
		/// 获取记录总数
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) FROM kalonebusiness ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			object obj = DbHelperMySQL.GetSingle(strSql.ToString());
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}


        /// <summary>
        /// 根据条件和排序，开始位置和结束位置 分页获取数据列表
        /// </summary>
        /// <param name="columslist">字段列表，如：Id,姓名,性别,年龄</param>
        /// <param name="strWhere">条件，如：年龄>12 and 性别='女'</param>
        /// <param name="filedOrder">排序，如： Id desc </param>
        /// <param name="startIndex"></param>
        /// <param name="endIndex"></param>
        /// <returns></returns>
        private DataSet GetListByPage(string columslist, string strWhere, string orderby, int startIndex, int endIndex)
		{
			StringBuilder strSql=new StringBuilder();
            strSql.Append("SELECT " + columslist + " FROM ( ");
			strSql.Append(" SELECT ROW_NUMBER() OVER (");
			if (!string.IsNullOrEmpty(orderby.Trim()))
			{
				strSql.Append("order by T." + orderby );
			}
			else
			{
				strSql.Append("order by T.Id desc");
			}
			strSql.Append(")AS Row, T.*  from kalonebusiness T ");
			if (!string.IsNullOrEmpty(strWhere.Trim()))
			{
				strSql.Append(" WHERE " + strWhere);
			}
			strSql.Append(" ) TT");
			strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
			return DbHelperMySQL.Query(strSql.ToString());
		}

        /// <summary>
        /// 根据字段列表，条件，排序，每页记录数，页码（从1开始），分页读取记录
        /// </summary>
        /// <param name="columslist">字段列表，如：Id,姓名,性别,年龄</param>
        /// <param name="strWhere">条件，如：年龄>12 and 性别='女'</param>
        /// <param name="filedOrder">排序，如： Id desc </param>
        /// <param name="PageSize">每页记录数，如：30</param>
        /// <param name="PageIndex">页码，如：2</param>
        /// <returns>返回组装好的json字符串</returns>
        public string GetListByPageColumns_tojson(string columslist, string strWhere, string orderby, int PageSize, int PageIndex)
        {
            string str = DbHelperMySQL.GetListByPageColumns_tojson(columslist, strWhere, orderby, PageSize, PageIndex, "kalonebusiness");

            return str;
        }

        /// <summary>
        /// 根据字段列表，条件，排序，读取记录
        /// </summary>
        /// <param name="columslist">字段列表，如：Id,姓名,性别,年龄</param>
        /// <param name="strWhere">条件，如：年龄>12 and 性别='女'</param>
        /// <param name="filedOrder">排序，如： Id desc </param>
        /// <returns>返回组装好的json字符串</returns>
        public string GetListByColumns_tojson(string columslist, string strWhere, string orderby)
        {
            string str = DbHelperMySQL.GetListByColumns_tojson(columslist, strWhere, orderby, "kalonebusiness");

            return str;
        }


        /// <summary>
        /// 根据字段列表，条件，排序，每页记录数，页码（从1开始），分页读取记录
        /// </summary>
        /// <param name="columslist">字段列表，如：Id,姓名,性别,年龄</param>
        /// <param name="strWhere">条件，如：年龄>12 and 性别='女'</param>
        /// <param name="filedOrder">排序，如： Id desc </param>
        /// <param name="PageSize">每页记录数，如：30</param>
        /// <param name="PageIndex">页码，如：2</param>
        /// <returns></returns>
        public DataSet GetListByPageColumns(string columslist, string strWhere, string orderby, int PageSize, int PageIndex)
        {
            string strsql = DbHelperMySQL.GetListByPageColumns(columslist, strWhere, orderby, PageSize, PageIndex, "kalonebusiness");
            return DbHelperMySQL.Query(strsql);
        }

        #region 根据sql语句分页函数


        /// <summary>
        /// 根据sqlstr 语句，页号和每页记录数 返回表格中一页的数据
        /// </summary>
        /// <param name="sql">sql语句</param>
        /// <param name="PageSize">每页的记录数</param>
        /// <param name="PageIndex">页号，第一页是1</param>
        /// <returns>读取结果的数据集</returns>
        public DataSet GetListByPageofSql(string sql, int PageSize, int PageIndex)
        {

            int pagenum = PageIndex;
            int pagerecord = PageSize;

            DataSet ds = new DataSet();
 
            string strsql = sql;
            strsql = DbHelperMySQL.createsql(sql, pagenum, pagerecord);
            ds = DbHelperMySQL.Query(strsql);
 
            return ds;
        }
        #endregion
	}
}

