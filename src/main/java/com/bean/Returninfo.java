package com.bean;

import java.util.Date;
import java.util.List;

public class Returninfo {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.id
     *
     * @mbggenerated
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.uid
     *
     * @mbggenerated
     */
    private String uid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.mid
     *
     * @mbggenerated
     */
    private Integer mid;
    private Manager manager;
    private OldUsers oldUser;
    public OldUsers getOldUser() {
		return oldUser;
	}

	public void setOldUser(OldUsers oldUser) {
		this.oldUser = oldUser;
	}

	public Manager getManager() {
		return manager;
	}

	public void setManager(Manager manager) {
		this.manager = manager;
	}

	private List<Returnshopping> listReturnshoppings;

    public List<Returnshopping> getListReturnshoppings() {
		return listReturnshoppings;
	}

	public void setListReturnshoppings(List<Returnshopping> listReturnshoppings) {
		this.listReturnshoppings = listReturnshoppings;
	}

	/**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.returndate
     *
     * @mbggenerated
     */
    private Date returndate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.returncontent
     *
     * @mbggenerated
     */
    private String returncontent;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended1
     *
     * @mbggenerated
     */
    private String extended1;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended2
     *
     * @mbggenerated
     */
    private String extended2;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended3
     *
     * @mbggenerated
     */
    private String extended3;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended4
     *
     * @mbggenerated
     */
    private String extended4;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended5
     *
     * @mbggenerated
     */
    private String extended5;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended6
     *
     * @mbggenerated
     */
    private String extended6;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended7
     *
     * @mbggenerated
     */
    private String extended7;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended8
     *
     * @mbggenerated
     */
    private String extended8;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended9
     *
     * @mbggenerated
     */
    private String extended9;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended10
     *
     * @mbggenerated
     */
    private String extended10;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended11
     *
     * @mbggenerated
     */
    private String extended11;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended12
     *
     * @mbggenerated
     */
    private String extended12;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended13
     *
     * @mbggenerated
     */
    private String extended13;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended14
     *
     * @mbggenerated
     */
    private String extended14;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended15
     *
     * @mbggenerated
     */
    private String extended15;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended16
     *
     * @mbggenerated
     */
    private String extended16;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended17
     *
     * @mbggenerated
     */
    private String extended17;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended18
     *
     * @mbggenerated
     */
    private String extended18;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended19
     *
     * @mbggenerated
     */
    private String extended19;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column returninfo.extended20
     *
     * @mbggenerated
     */
    private String extended20;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table returninfo
     *
     * @mbggenerated
     */
    public Returninfo(Integer id, String uid, Integer mid, Date returndate, String returncontent, String extended1, String extended2, String extended3, String extended4, String extended5, String extended6, String extended7, String extended8, String extended9, String extended10, String extended11, String extended12, String extended13, String extended14, String extended15, String extended16, String extended17, String extended18, String extended19, String extended20) {
        this.id = id;
        this.uid = uid;
        this.mid = mid;
        this.returndate = returndate;
        this.returncontent = returncontent;
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
     * This method corresponds to the database table returninfo
     *
     * @mbggenerated
     */
    public Returninfo() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.id
     *
     * @return the value of returninfo.id
     *
     * @mbggenerated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.id
     *
     * @param id the value for returninfo.id
     *
     * @mbggenerated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.uid
     *
     * @return the value of returninfo.uid
     *
     * @mbggenerated
     */
    public String getUid() {
        return uid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.uid
     *
     * @param uid the value for returninfo.uid
     *
     * @mbggenerated
     */
    public void setUid(String uid) {
        this.uid = uid == null ? null : uid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.mid
     *
     * @return the value of returninfo.mid
     *
     * @mbggenerated
     */
    public Integer getMid() {
        return mid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.mid
     *
     * @param mid the value for returninfo.mid
     *
     * @mbggenerated
     */
    public void setMid(Integer mid) {
        this.mid = mid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.returndate
     *
     * @return the value of returninfo.returndate
     *
     * @mbggenerated
     */
    public Date getReturndate() {
        return returndate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.returndate
     *
     * @param returndate the value for returninfo.returndate
     *
     * @mbggenerated
     */
    public void setReturndate(Date returndate) {
        this.returndate = returndate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.returncontent
     *
     * @return the value of returninfo.returncontent
     *
     * @mbggenerated
     */
    public String getReturncontent() {
        return returncontent;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.returncontent
     *
     * @param returncontent the value for returninfo.returncontent
     *
     * @mbggenerated
     */
    public void setReturncontent(String returncontent) {
        this.returncontent = returncontent == null ? null : returncontent.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended1
     *
     * @return the value of returninfo.extended1
     *
     * @mbggenerated
     */
    public String getExtended1() {
        return extended1;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended1
     *
     * @param extended1 the value for returninfo.extended1
     *
     * @mbggenerated
     */
    public void setExtended1(String extended1) {
        this.extended1 = extended1 == null ? null : extended1.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended2
     *
     * @return the value of returninfo.extended2
     *
     * @mbggenerated
     */
    public String getExtended2() {
        return extended2;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended2
     *
     * @param extended2 the value for returninfo.extended2
     *
     * @mbggenerated
     */
    public void setExtended2(String extended2) {
        this.extended2 = extended2 == null ? null : extended2.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended3
     *
     * @return the value of returninfo.extended3
     *
     * @mbggenerated
     */
    public String getExtended3() {
        return extended3;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended3
     *
     * @param extended3 the value for returninfo.extended3
     *
     * @mbggenerated
     */
    public void setExtended3(String extended3) {
        this.extended3 = extended3 == null ? null : extended3.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended4
     *
     * @return the value of returninfo.extended4
     *
     * @mbggenerated
     */
    public String getExtended4() {
        return extended4;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended4
     *
     * @param extended4 the value for returninfo.extended4
     *
     * @mbggenerated
     */
    public void setExtended4(String extended4) {
        this.extended4 = extended4 == null ? null : extended4.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended5
     *
     * @return the value of returninfo.extended5
     *
     * @mbggenerated
     */
    public String getExtended5() {
        return extended5;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended5
     *
     * @param extended5 the value for returninfo.extended5
     *
     * @mbggenerated
     */
    public void setExtended5(String extended5) {
        this.extended5 = extended5 == null ? null : extended5.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended6
     *
     * @return the value of returninfo.extended6
     *
     * @mbggenerated
     */
    public String getExtended6() {
        return extended6;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended6
     *
     * @param extended6 the value for returninfo.extended6
     *
     * @mbggenerated
     */
    public void setExtended6(String extended6) {
        this.extended6 = extended6 == null ? null : extended6.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended7
     *
     * @return the value of returninfo.extended7
     *
     * @mbggenerated
     */
    public String getExtended7() {
        return extended7;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended7
     *
     * @param extended7 the value for returninfo.extended7
     *
     * @mbggenerated
     */
    public void setExtended7(String extended7) {
        this.extended7 = extended7 == null ? null : extended7.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended8
     *
     * @return the value of returninfo.extended8
     *
     * @mbggenerated
     */
    public String getExtended8() {
        return extended8;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended8
     *
     * @param extended8 the value for returninfo.extended8
     *
     * @mbggenerated
     */
    public void setExtended8(String extended8) {
        this.extended8 = extended8 == null ? null : extended8.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended9
     *
     * @return the value of returninfo.extended9
     *
     * @mbggenerated
     */
    public String getExtended9() {
        return extended9;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended9
     *
     * @param extended9 the value for returninfo.extended9
     *
     * @mbggenerated
     */
    public void setExtended9(String extended9) {
        this.extended9 = extended9 == null ? null : extended9.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended10
     *
     * @return the value of returninfo.extended10
     *
     * @mbggenerated
     */
    public String getExtended10() {
        return extended10;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended10
     *
     * @param extended10 the value for returninfo.extended10
     *
     * @mbggenerated
     */
    public void setExtended10(String extended10) {
        this.extended10 = extended10 == null ? null : extended10.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended11
     *
     * @return the value of returninfo.extended11
     *
     * @mbggenerated
     */
    public String getExtended11() {
        return extended11;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended11
     *
     * @param extended11 the value for returninfo.extended11
     *
     * @mbggenerated
     */
    public void setExtended11(String extended11) {
        this.extended11 = extended11 == null ? null : extended11.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended12
     *
     * @return the value of returninfo.extended12
     *
     * @mbggenerated
     */
    public String getExtended12() {
        return extended12;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended12
     *
     * @param extended12 the value for returninfo.extended12
     *
     * @mbggenerated
     */
    public void setExtended12(String extended12) {
        this.extended12 = extended12 == null ? null : extended12.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended13
     *
     * @return the value of returninfo.extended13
     *
     * @mbggenerated
     */
    public String getExtended13() {
        return extended13;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended13
     *
     * @param extended13 the value for returninfo.extended13
     *
     * @mbggenerated
     */
    public void setExtended13(String extended13) {
        this.extended13 = extended13 == null ? null : extended13.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended14
     *
     * @return the value of returninfo.extended14
     *
     * @mbggenerated
     */
    public String getExtended14() {
        return extended14;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended14
     *
     * @param extended14 the value for returninfo.extended14
     *
     * @mbggenerated
     */
    public void setExtended14(String extended14) {
        this.extended14 = extended14 == null ? null : extended14.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended15
     *
     * @return the value of returninfo.extended15
     *
     * @mbggenerated
     */
    public String getExtended15() {
        return extended15;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended15
     *
     * @param extended15 the value for returninfo.extended15
     *
     * @mbggenerated
     */
    public void setExtended15(String extended15) {
        this.extended15 = extended15 == null ? null : extended15.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended16
     *
     * @return the value of returninfo.extended16
     *
     * @mbggenerated
     */
    public String getExtended16() {
        return extended16;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended16
     *
     * @param extended16 the value for returninfo.extended16
     *
     * @mbggenerated
     */
    public void setExtended16(String extended16) {
        this.extended16 = extended16 == null ? null : extended16.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended17
     *
     * @return the value of returninfo.extended17
     *
     * @mbggenerated
     */
    public String getExtended17() {
        return extended17;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended17
     *
     * @param extended17 the value for returninfo.extended17
     *
     * @mbggenerated
     */
    public void setExtended17(String extended17) {
        this.extended17 = extended17 == null ? null : extended17.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended18
     *
     * @return the value of returninfo.extended18
     *
     * @mbggenerated
     */
    public String getExtended18() {
        return extended18;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended18
     *
     * @param extended18 the value for returninfo.extended18
     *
     * @mbggenerated
     */
    public void setExtended18(String extended18) {
        this.extended18 = extended18 == null ? null : extended18.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended19
     *
     * @return the value of returninfo.extended19
     *
     * @mbggenerated
     */
    public String getExtended19() {
        return extended19;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended19
     *
     * @param extended19 the value for returninfo.extended19
     *
     * @mbggenerated
     */
    public void setExtended19(String extended19) {
        this.extended19 = extended19 == null ? null : extended19.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column returninfo.extended20
     *
     * @return the value of returninfo.extended20
     *
     * @mbggenerated
     */
    public String getExtended20() {
        return extended20;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column returninfo.extended20
     *
     * @param extended20 the value for returninfo.extended20
     *
     * @mbggenerated
     */
    public void setExtended20(String extended20) {
        this.extended20 = extended20 == null ? null : extended20.trim();
    }
}