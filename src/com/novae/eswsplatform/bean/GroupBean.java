package com.novae.eswsplatform.bean;




/**
 * GroupBean entity. @author MyEclipse Persistence Tools
 */

/**学科组
 * @author kinslayer
 *
 */
public class GroupBean  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String name;
     private Integer quota;
     private Boolean submit;


    // Constructors

    /** default constructor */
    public GroupBean() {
    }

    
    /** full constructor */
    public GroupBean( String name, Integer quota, Boolean submit) {
        this.name = name;
        this.quota = quota;
        this.submit = submit;
    }

   
    // Property accessors

    /**id
     * @return id
     */
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    /**学科组名称
     * @return 学科组名称
     */
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }


    /**分配名额 
     * @return 分配名额
     */
    public Integer getQuota() {
        return this.quota;
    }
    
    public void setQuota(Integer quota) {
        this.quota = quota;
    }

    /**是否提交
     * @return 是否提交
     */
    public Boolean getSubmit() {
        return this.submit;
    }
    
    public void setSubmit(Boolean submit) {
        this.submit = submit;
    }
   








}