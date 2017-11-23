package com.bean;

import java.util.List;

public class OldSickness {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.id
     *
     * @mbggenerated
     */
    private Integer id;
    private List<OldDiseaselibrary> listOldDiseaselibraries;
    private List<Matchdisease> listMatchdiseases;
    private OldDiseasedetails oldDiseasedetails;
    private List<OldDiseasedetails> listOldDiseasedetails;
    
    
    public List<OldDiseasedetails> getListOldDiseasedetails() {
		return listOldDiseasedetails;
	}

	public void setListOldDiseasedetails(List<OldDiseasedetails> listOldDiseasedetails) {
		this.listOldDiseasedetails = listOldDiseasedetails;
	}

	public List<Matchdisease> getListMatchdiseases() {
		return listMatchdiseases;
	}

	public void setListMatchdiseases(List<Matchdisease> listMatchdiseases) {
		this.listMatchdiseases = listMatchdiseases;
	}

	public List<OldDiseaselibrary> getListOldDiseaselibraries() {
		return listOldDiseaselibraries;
	}

	public void setListOldDiseaselibraries(List<OldDiseaselibrary> listOldDiseaselibraries) {
		this.listOldDiseaselibraries = listOldDiseaselibraries;
	}
	public OldDiseasedetails getOldDiseasedetails() {
		return oldDiseasedetails;
	}

	public void setOldDiseasedetails(OldDiseasedetails oldDiseasedetails) {
		this.oldDiseasedetails = oldDiseasedetails;
	}

	/**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.did
     *
     * @mbggenerated
     */
    private Integer did;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.detailid
     *
     * @mbggenerated
     */
    private Integer detailid;
    private List<OldDiseaselibrary> oldDiseaselibrary;

	public List<OldDiseaselibrary> getOldDiseaselibrary() {
		return oldDiseaselibrary;
	}

	public void setOldDiseaselibrary(List<OldDiseaselibrary> oldDiseaselibrary) {
		this.oldDiseaselibrary = oldDiseaselibrary;
	}

	private OldDiseaselibrary diseaselibrary;

	public OldDiseaselibrary getDiseaselibrary() {
		return diseaselibrary;
	}

	public void setDiseaselibrary(OldDiseaselibrary diseaselibrary) {
		this.diseaselibrary = diseaselibrary;
	}
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended1
     *
     * @mbggenerated
     */
    private String extended1;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended2
     *
     * @mbggenerated
     */
    private String extended2;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended3
     *
     * @mbggenerated
     */
    private String extended3;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended4
     *
     * @mbggenerated
     */
    private String extended4;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended5
     *
     * @mbggenerated
     */
    private String extended5;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended6
     *
     * @mbggenerated
     */
    private String extended6;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended7
     *
     * @mbggenerated
     */
    private String extended7;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended8
     *
     * @mbggenerated
     */
    private String extended8;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended9
     *
     * @mbggenerated
     */
    private String extended9;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended10
     *
     * @mbggenerated
     */
    private String extended10;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended11
     *
     * @mbggenerated
     */
    private String extended11;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended12
     *
     * @mbggenerated
     */
    private String extended12;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended13
     *
     * @mbggenerated
     */
    private String extended13;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended14
     *
     * @mbggenerated
     */
    private String extended14;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended15
     *
     * @mbggenerated
     */
    private String extended15;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended16
     *
     * @mbggenerated
     */
    private String extended16;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended17
     *
     * @mbggenerated
     */
    private String extended17;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended18
     *
     * @mbggenerated
     */
    private String extended18;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended19
     *
     * @mbggenerated
     */
    private String extended19;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column old_sickness.extended20
     *
     * @mbggenerated
     */
    private String extended20;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_sickness
     *
     * @mbggenerated
     */
    public OldSickness(Integer id, Integer did, Integer detailid, String extended1, String extended2, String extended3, String extended4, String extended5, String extended6, String extended7, String extended8, String extended9, String extended10, String extended11, String extended12, String extended13, String extended14, String extended15, String extended16, String extended17, String extended18, String extended19, String extended20) {
        this.id = id;
        this.did = did;
        this.detailid = detailid;
        this.extended1 = extended1;
        this.extended2 = extended2;
        this.extended3 = extended3;
        this.extended4 = extended4;
        this.extended5 = extended5;
        this.extended6 = extended6;
        this.extended7 = extended7;
        this.extended8 = extended8;
        this.extended9 = extended9;
        this.extended10 = extended10;
        this.extended11 = extended11;
        this.extended12 = extended12;
        this.extended13 = extended13;
        this.extended14 = extended14;
        this.extended15 = extended15;
        this.extended16 = extended16;
        this.extended17 = extended17;
        this.extended18 = extended18;
        this.extended19 = extended19;
        this.extended20 = extended20;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table old_sickness
     *
     * @mbggenerated
     */
    public OldSickness() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.id
     *
     * @return the value of old_sickness.id
     *
     * @mbggenerated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.id
     *
     * @param id the value for old_sickness.id
     *
     * @mbggenerated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.did
     *
     * @return the value of old_sickness.did
     *
     * @mbggenerated
     */
    public Integer getDid() {
        return did;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.did
     *
     * @param did the value for old_sickness.did
     *
     * @mbggenerated
     */
    public void setDid(Integer did) {
        this.did = did;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.detailid
     *
     * @return the value of old_sickness.detailid
     *
     * @mbggenerated
     */
    public Integer getDetailid() {
        return detailid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.detailid
     *
     * @param detailid the value for old_sickness.detailid
     *
     * @mbggenerated
     */
    public void setDetailid(Integer detailid) {
        this.detailid = detailid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended1
     *
     * @return the value of old_sickness.extended1
     *
     * @mbggenerated
     */
    public String getExtended1() {
        return extended1;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended1
     *
     * @param extended1 the value for old_sickness.extended1
     *
     * @mbggenerated
     */
    public void setExtended1(String extended1) {
        this.extended1 = extended1 == null ? null : extended1.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended2
     *
     * @return the value of old_sickness.extended2
     *
     * @mbggenerated
     */
    public String getExtended2() {
        return extended2;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended2
     *
     * @param extended2 the value for old_sickness.extended2
     *
     * @mbggenerated
     */
    public void setExtended2(String extended2) {
        this.extended2 = extended2 == null ? null : extended2.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended3
     *
     * @return the value of old_sickness.extended3
     *
     * @mbggenerated
     */
    public String getExtended3() {
        return extended3;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended3
     *
     * @param extended3 the value for old_sickness.extended3
     *
     * @mbggenerated
     */
    public void setExtended3(String extended3) {
        this.extended3 = extended3 == null ? null : extended3.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended4
     *
     * @return the value of old_sickness.extended4
     *
     * @mbggenerated
     */
    public String getExtended4() {
        return extended4;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended4
     *
     * @param extended4 the value for old_sickness.extended4
     *
     * @mbggenerated
     */
    public void setExtended4(String extended4) {
        this.extended4 = extended4 == null ? null : extended4.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended5
     *
     * @return the value of old_sickness.extended5
     *
     * @mbggenerated
     */
    public String getExtended5() {
        return extended5;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended5
     *
     * @param extended5 the value for old_sickness.extended5
     *
     * @mbggenerated
     */
    public void setExtended5(String extended5) {
        this.extended5 = extended5 == null ? null : extended5.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended6
     *
     * @return the value of old_sickness.extended6
     *
     * @mbggenerated
     */
    public String getExtended6() {
        return extended6;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended6
     *
     * @param extended6 the value for old_sickness.extended6
     *
     * @mbggenerated
     */
    public void setExtended6(String extended6) {
        this.extended6 = extended6 == null ? null : extended6.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended7
     *
     * @return the value of old_sickness.extended7
     *
     * @mbggenerated
     */
    public String getExtended7() {
        return extended7;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended7
     *
     * @param extended7 the value for old_sickness.extended7
     *
     * @mbggenerated
     */
    public void setExtended7(String extended7) {
        this.extended7 = extended7 == null ? null : extended7.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended8
     *
     * @return the value of old_sickness.extended8
     *
     * @mbggenerated
     */
    public String getExtended8() {
        return extended8;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended8
     *
     * @param extended8 the value for old_sickness.extended8
     *
     * @mbggenerated
     */
    public void setExtended8(String extended8) {
        this.extended8 = extended8 == null ? null : extended8.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended9
     *
     * @return the value of old_sickness.extended9
     *
     * @mbggenerated
     */
    public String getExtended9() {
        return extended9;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended9
     *
     * @param extended9 the value for old_sickness.extended9
     *
     * @mbggenerated
     */
    public void setExtended9(String extended9) {
        this.extended9 = extended9 == null ? null : extended9.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended10
     *
     * @return the value of old_sickness.extended10
     *
     * @mbggenerated
     */
    public String getExtended10() {
        return extended10;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended10
     *
     * @param extended10 the value for old_sickness.extended10
     *
     * @mbggenerated
     */
    public void setExtended10(String extended10) {
        this.extended10 = extended10 == null ? null : extended10.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended11
     *
     * @return the value of old_sickness.extended11
     *
     * @mbggenerated
     */
    public String getExtended11() {
        return extended11;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended11
     *
     * @param extended11 the value for old_sickness.extended11
     *
     * @mbggenerated
     */
    public void setExtended11(String extended11) {
        this.extended11 = extended11 == null ? null : extended11.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended12
     *
     * @return the value of old_sickness.extended12
     *
     * @mbggenerated
     */
    public String getExtended12() {
        return extended12;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended12
     *
     * @param extended12 the value for old_sickness.extended12
     *
     * @mbggenerated
     */
    public void setExtended12(String extended12) {
        this.extended12 = extended12 == null ? null : extended12.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended13
     *
     * @return the value of old_sickness.extended13
     *
     * @mbggenerated
     */
    public String getExtended13() {
        return extended13;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended13
     *
     * @param extended13 the value for old_sickness.extended13
     *
     * @mbggenerated
     */
    public void setExtended13(String extended13) {
        this.extended13 = extended13 == null ? null : extended13.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended14
     *
     * @return the value of old_sickness.extended14
     *
     * @mbggenerated
     */
    public String getExtended14() {
        return extended14;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended14
     *
     * @param extended14 the value for old_sickness.extended14
     *
     * @mbggenerated
     */
    public void setExtended14(String extended14) {
        this.extended14 = extended14 == null ? null : extended14.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended15
     *
     * @return the value of old_sickness.extended15
     *
     * @mbggenerated
     */
    public String getExtended15() {
        return extended15;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended15
     *
     * @param extended15 the value for old_sickness.extended15
     *
     * @mbggenerated
     */
    public void setExtended15(String extended15) {
        this.extended15 = extended15 == null ? null : extended15.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended16
     *
     * @return the value of old_sickness.extended16
     *
     * @mbggenerated
     */
    public String getExtended16() {
        return extended16;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended16
     *
     * @param extended16 the value for old_sickness.extended16
     *
     * @mbggenerated
     */
    public void setExtended16(String extended16) {
        this.extended16 = extended16 == null ? null : extended16.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended17
     *
     * @return the value of old_sickness.extended17
     *
     * @mbggenerated
     */
    public String getExtended17() {
        return extended17;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended17
     *
     * @param extended17 the value for old_sickness.extended17
     *
     * @mbggenerated
     */
    public void setExtended17(String extended17) {
        this.extended17 = extended17 == null ? null : extended17.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended18
     *
     * @return the value of old_sickness.extended18
     *
     * @mbggenerated
     */
    public String getExtended18() {
        return extended18;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended18
     *
     * @param extended18 the value for old_sickness.extended18
     *
     * @mbggenerated
     */
    public void setExtended18(String extended18) {
        this.extended18 = extended18 == null ? null : extended18.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended19
     *
     * @return the value of old_sickness.extended19
     *
     * @mbggenerated
     */
    public String getExtended19() {
        return extended19;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended19
     *
     * @param extended19 the value for old_sickness.extended19
     *
     * @mbggenerated
     */
    public void setExtended19(String extended19) {
        this.extended19 = extended19 == null ? null : extended19.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column old_sickness.extended20
     *
     * @return the value of old_sickness.extended20
     *
     * @mbggenerated
     */
    public String getExtended20() {
        return extended20;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column old_sickness.extended20
     *
     * @param extended20 the value for old_sickness.extended20
     *
     * @mbggenerated
     */
    public void setExtended20(String extended20) {
        this.extended20 = extended20 == null ? null : extended20.trim();
    }
}