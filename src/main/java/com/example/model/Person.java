package com.example.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Person {

    @Id
    @GeneratedValue
    private Integer id;

    private String firstName;

    private String lastName;
    
    private String postCode;
    
    private String crn;
    
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern= "dd/MM/yyyy")
    private Date dob;
    
    
    private String sex;
    
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern= "dd/MM/yyyy")
    private Date admissionDate;
    
    
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern= "dd/MM/yyyy")
    private Date transferDate;
    
    private String admissionCause;
    
    private String mobility;
    
    private String adl;
    
    private String planFromMdt;
    
    
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern= "dd/MM/yyyy")
    private Date edd;
    
    
    private String outcome;
    
    public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getAdmissionDate() {
		return admissionDate;
	}

	public void setAdmissionDate(Date admissionDate) {
		this.admissionDate = admissionDate;
	}

	public Date getTransferDate() {
		return transferDate;
	}

	public void setTransferDate(Date transferDate) {
		this.transferDate = transferDate;
	}

	public String getAdmissionCause() {
		return admissionCause;
	}

	public void setAdmissionCause(String admissionCause) {
		this.admissionCause = admissionCause;
	}

	public String getMobility() {
		return mobility;
	}

	public void setMobility(String mobility) {
		this.mobility = mobility;
	}

	public String getAdl() {
		return adl;
	}

	public void setAdl(String adl) {
		this.adl = adl;
	}

	public String getPlanFromMdt() {
		return planFromMdt;
	}

	public void setPlanFromMdt(String planFromMdt) {
		this.planFromMdt = planFromMdt;
	}

	public Date getEdd() {
		return edd;
	}

	public void setEdd(Date edd) {
		this.edd = edd;
	}

	public String getOutcome() {
		return outcome;
	}

	public void setOutcome(String outcome) {
		this.outcome = outcome;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getCrn() {
		return crn;
	}

	public void setCrn(String crn) {
		this.crn = crn;
	}

	public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
}
