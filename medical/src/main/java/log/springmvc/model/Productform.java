package log.springmvc.model;

import java.util.List;

public class Productform {
    String Type;
    String Size;
    String Company;
//	String Pname;
    int Quantity;
    List<ProductType> productType;
    
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
//	public String getpname() {
//		return Pname;
//	}
//	public void setpname(String pname) {
//		Pname = pname;
//	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	public String getSize() {
		return Size;
	}
	public void setSize(String size) {
		Size = size;
	}
	public String getCompany() {
		return Company;
	}
	public void setCompany(String company) {
		Company = company;
	}
	public List<ProductType> getProductType() {
		return productType;
	}
	public void setProductType(List<ProductType> productType) {
		this.productType = productType;
	}
	
	
	
    
}
