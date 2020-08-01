package lg.Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Security.*;
import lg.Servlet.*;

public class VisitorDao {
	
	public static List<Visitor> getVisitorByDate(String date){
		List<Visitor> list=new ArrayList<Visitor>();
		Connection con=null;
		ResultSet rs=null;
		PreparedStatement ps=null;
		try{
			con=ConnectionProvider.getConnection();
			 ps=con.prepareStatement("select * from S_VISITOR where V_ISSUEDATE='"+date+"%' and V_STATUS='4' ");
			 rs=ps.executeQuery();
			Visitor visitor = null;
			while(rs.next()){
				visitor=new Visitor();
				visitor.setId(rs.getInt("V_ID"));
				visitor.setvName(rs.getString("V_NAME"));
				visitor.setvMobileNo(rs.getString("V_MOBILENO"));
				visitor.setvPurpose(rs.getString("V_PURPOSE"));
				visitor.setvDepartment(rs.getString("V_DEPARTMENT"));
				visitor.setrRFidNo(rs.getString("R_RFIDNO"));
				visitor.setvContactPerson(rs.getString("V_CONTACTPERSON"));
				visitor.setvIssueDate(rs.getString("V_ISSUEDATE"));
				visitor.setvIssueTime(rs.getString("V_ISSUETIME"));
				visitor.setvLoginIdIssue(rs.getString("L_LOGINID_ISSUE"));
				visitor.setvReturnDate(rs.getString("V_RETURNDATE"));
				visitor.setvReturnTime(rs.getString("V_RETURNTIME"));
				visitor.setlLoginIdReturn(rs.getString("L_LOGINID_RETURN"));
				visitor.setvStatus(rs.getInt("V_STATUS"));
				visitor.setvItem(rs.getString("V_ITEM"));
				list.add(visitor);
			}
			con.close();
		}catch(Exception e){System.out.println(e);}
		return list;
	}
	public static List<Visitor> getVisitorByDepartment(String department){
		List<Visitor> list=new ArrayList<Visitor>();
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			con=ConnectionProvider.getConnection();
			 ps=con.prepareStatement("select * from S_VISITOR where V_DEPARTMENT='"+department+"' ");
			 rs=ps.executeQuery();
			Visitor visitor=null;
			while(rs.next()){
				visitor=new Visitor();
				visitor.setId(rs.getInt("V_ID"));
				visitor.setvName(rs.getString("V_NAME"));
				visitor.setvMobileNo(rs.getString("V_MOBILENO"));
				visitor.setvPurpose(rs.getString("V_PURPOSE"));
				visitor.setvDepartment(rs.getString("V_DEPARTMENT"));
				visitor.setrRFidNo(rs.getString("R_RFIDNO"));
				visitor.setvContactPerson(rs.getString("V_CONTACTPERSON"));
				visitor.setvIssueDate(rs.getString("V_ISSUEDATE"));
				visitor.setvReturnTime(rs.getString("V_RETURNTIME"));
				visitor.setvStatus(rs.getInt("V_STATUS"));
				visitor.setvItem(rs.getString("V_ITEM"));
				list.add(visitor);
			}
			con.close();
		}catch(Exception e){System.out.println(e);}
		return list;
	}
	
	
}
