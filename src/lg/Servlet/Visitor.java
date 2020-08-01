package lg.Servlet;

import java.io.Serializable;

public class Visitor implements Serializable {

	private static final long serialVersionUID = 1L;
	private int id;
	private int vStatus;
	private String vName;
	private String vMobileNo;
	private String vPurpose;
	private String vDepartment;
	private String rRFidNo;
	private String vContactPerson;
	private String vIssueDate;
	private String vIssueTime;
	private String vLoginIdIssue;
	private String lLoginIdReturn;
	private String vReturnDate;
	private String vReturnTime;
	private String vItem;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getvStatus() {
		return vStatus;
	}

	public void setvStatus(int vStatus) {
		this.vStatus = vStatus;
	}

	public String getvName() {
		return vName;
	}

	public void setvName(String vName) {
		this.vName = vName;
	}

	public String getvMobileNo() {
		return vMobileNo;
	}

	public void setvMobileNo(String vMobileNo) {
		this.vMobileNo = vMobileNo;
	}

	public String getvPurpose() {
		return vPurpose;
	}

	public void setvPurpose(String vPurpose) {
		this.vPurpose = vPurpose;
	}

	public String getvDepartment() {
		return vDepartment;
	}

	public void setvDepartment(String vDepartment) {
		this.vDepartment = vDepartment;
	}

	public String getrRFidNo() {
		return rRFidNo;
	}

	public void setrRFidNo(String rRFidNo) {
		this.rRFidNo = rRFidNo;
	}

	public String getvContactPerson() {
		return vContactPerson;
	}

	public void setvContactPerson(String vContactPerson) {
		this.vContactPerson = vContactPerson;
	}

	public String getvIssueDate() {
		return vIssueDate;
	}

	public void setvIssueDate(String vIssueDate) {
		this.vIssueDate = vIssueDate;
	}

	public String getvIssueTime() {
		return vIssueTime;
	}

	public void setvIssueTime(String vIssueTime) {
		this.vIssueTime = vIssueTime;
	}

	public String getvLoginIdIssue() {
		return vLoginIdIssue;
	}

	public void setvLoginIdIssue(String vLoginIdIssue) {
		this.vLoginIdIssue = vLoginIdIssue;
	}

	public String getlLoginIdReturn() {
		return lLoginIdReturn;
	}

	public void setlLoginIdReturn(String lLoginIdReturn) {
		this.lLoginIdReturn = lLoginIdReturn;
	}

	public String getvReturnDate() {
		return vReturnDate;
	}

	public void setvReturnDate(String vReturnDate) {
		this.vReturnDate = vReturnDate;
	}

	public String getvReturnTime() {
		return vReturnTime;
	}

	public void setvReturnTime(String vReturnTime) {
		this.vReturnTime = vReturnTime;
	}

	public String getvItem() {
		return vItem;
	}

	public void setvItem(String vItem) {
		this.vItem = vItem;
	}

	@Override
	public String toString() {
		return "Visitor [id=" + id + ", vStatus=" + vStatus + ", vName=" + vName + ", vMobileNo=" + vMobileNo
				+ ", vPurpose=" + vPurpose + ", vDepartment=" + vDepartment + ", rRFidNo=" + rRFidNo
				+ ", vContactPerson=" + vContactPerson + ", vIssueDate=" + vIssueDate + ", vIssueTime=" + vIssueTime
				+ ", vLoginIdIssue=" + vLoginIdIssue + ", lLoginIdReturn=" + lLoginIdReturn + ", vReturnDate="
				+ vReturnDate + ", vReturnTime=" + vReturnTime + ", vItem=" + vItem + "]";
	}

}
