package com.kwce.domain;
import java.util.Date;

public class BoardVO{

   
   private String t_name;
   private String t_address;
   private String t_phone;
   
   private Integer a_ID;
   private String a_name;
   private String a_birthday;
   private String a_gender;
   
   private String d_birth;
   private String d_gender;
   
   private String m_img;
   public String getM_img() {
	return m_img;
}
public void setM_img(String m_img) {
	this.m_img = m_img;
}

private Integer m_ID;
   private String m_title;
   private String m_genre;
   private String m_country;
   private Float m_grade;
   private Integer m_period;
   private String d_name;
   private String m_opening;
   private String m_running;
   private Float m_ticketing;
   private Integer m_rating;
   private Date regdate;
   private int viewcnt;
   private int pcheck;
    
   

public String getA_gender() {
   return a_gender;
}
public void setA_gender(String a_gender) {
   this.a_gender = a_gender;
}
public String getD_gender() {
   return d_gender;
}
public void setD_gender(String d_gender) {
   this.d_gender = d_gender;
}
public String getT_name() {
   return t_name;
}
public void setT_name(String t_name) {
   this.t_name = t_name;
}
public String getT_address() {
   return t_address;
}
public void setT_address(String t_address) {
   this.t_address = t_address;
}
public String getT_phone() {
   return t_phone;
}
public void setT_phone(String t_phone) {
   this.t_phone = t_phone;
}
public Integer getA_ID() {
   return a_ID;
}
public void setA_ID(Integer a_ID) {
   this.a_ID = a_ID;
}
public String getD_birth() {
   return d_birth;
}
public void setD_birth(String d_birth) {
   this.d_birth = d_birth;
}
public String getA_name() {
      return a_name;
   }
   public void setA_name(String a_name) {
      this.a_name = a_name;
   }
   public String getA_birthday() {
      return a_birthday;
   }
   public void setA_birthday(String a_birthday) {
      this.a_birthday = a_birthday;
   }

   
   
   
      public Integer getM_ID() {
      return m_ID;
   }
   public void setM_ID(Integer m_ID) {
      this.m_ID = m_ID;
   }
   public String getM_title() {
      return m_title;
   }
   public void setM_title(String m_title) {
      this.m_title = m_title;
   }
   public String getM_genre() {
      return m_genre;
   }
   public void setM_genre(String m_genre) {
      this.m_genre = m_genre;
   }
   public String getM_country() {
      return m_country;
   }
   public void setM_country(String m_country) {
      this.m_country = m_country;
   }
   public Float getM_grade() {
      return m_grade;
   }
   public void setM_grade(Float m_grade) {
      this.m_grade = m_grade;
   }
   public Integer getM_period() {
      return m_period;
   }
   public void setM_period(Integer m_period) {
      this.m_period = m_period;
   }
   public String getM_opening() {
      return m_opening;
   }
   public void setM_opening(String m_opening) {
      this.m_opening = m_opening;
   }
   public String getM_running() {
      return m_running;
   }
   public void setM_running(String m_running) {
      this.m_running = m_running;
   }
   public Float getM_ticketing() {
      return m_ticketing;
   }
   public void setM_ticketing(Float m_ticketing) {
      this.m_ticketing = m_ticketing;
   }
   public Integer getM_rating() {
      return m_rating;
   }
   public void setM_rating(Integer m_rating) {
      this.m_rating = m_rating;
   }
   public Date getRegdate() {
         return regdate;
      }
      public void setRegdate(Date regdate) {
         this.regdate = regdate;
      }
      public int getViewcnt() {
         return viewcnt;
      }
      public void setViewcnt(int viewcnt) {
         this.viewcnt = viewcnt;
      }
      public int getPcheck() {
         return pcheck;
      }
      public void setPcheck(int pcheck) {
         this.pcheck = pcheck;
      }
   
   public String getD_name() {
      return d_name;
   }
   
   public void setD_name(String d_name) {
      this.d_name = d_name;
   }
	@Override
	public String toString() {
		return "BoardVO [t_name=" + t_name + ", t_address=" + t_address + ", t_phone=" + t_phone + ", a_ID=" + a_ID
				+ ", a_name=" + a_name + ", a_birthday=" + a_birthday + ", a_gender=" + a_gender + ", d_birth=" + d_birth
				+ ", d_gender=" + d_gender + ", m_img=" + m_img + ", m_ID=" + m_ID + ", m_title=" + m_title + ", m_genre="
				+ m_genre + ", m_country=" + m_country + ", m_grade=" + m_grade + ", m_period=" + m_period + ", d_name="
				+ d_name + ", m_opening=" + m_opening + ", m_running=" + m_running + ", m_ticketing=" + m_ticketing
				+ ", m_rating=" + m_rating + ", regdate=" + regdate + ", viewcnt=" + viewcnt + ", pcheck=" + pcheck + "]";
	}
   

}