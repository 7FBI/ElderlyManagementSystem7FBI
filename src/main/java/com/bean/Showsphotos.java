package com.bean;

public class Showsphotos {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column showsphotos.id
     *
     * @mbggenerated
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column showsphotos.product_id
     *
     * @mbggenerated
     */
    private Integer productId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column showsphotos.showphotosurl
     *
     * @mbggenerated
     */
    private String showphotosurl;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table showsphotos
     *
     * @mbggenerated
     */
    public Showsphotos(Integer id, Integer productId, String showphotosurl) {
        this.id = id;
        this.productId = productId;
        this.showphotosurl = showphotosurl;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table showsphotos
     *
     * @mbggenerated
     */
    public Showsphotos() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column showsphotos.id
     *
     * @return the value of showsphotos.id
     *
     * @mbggenerated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column showsphotos.id
     *
     * @param id the value for showsphotos.id
     *
     * @mbggenerated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column showsphotos.product_id
     *
     * @return the value of showsphotos.product_id
     *
     * @mbggenerated
     */
    public Integer getProductId() {
        return productId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column showsphotos.product_id
     *
     * @param productId the value for showsphotos.product_id
     *
     * @mbggenerated
     */
    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column showsphotos.showphotosurl
     *
     * @return the value of showsphotos.showphotosurl
     *
     * @mbggenerated
     */
    public String getShowphotosurl() {
        return showphotosurl;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column showsphotos.showphotosurl
     *
     * @param showphotosurl the value for showsphotos.showphotosurl
     *
     * @mbggenerated
     */
    public void setShowphotosurl(String showphotosurl) {
        this.showphotosurl = showphotosurl == null ? null : showphotosurl.trim();
    }
}