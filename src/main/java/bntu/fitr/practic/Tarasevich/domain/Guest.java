package bntu.fitr.practic.Tarasevich.domain;

public class Guest {
    private String nameGuest;
    private int phone;

    public Guest() {
    }

    public Guest(String nameGuest, int phone) {
        this.nameGuest = nameGuest;
        this.phone = phone;
    }

    public String getNameGuest() {
        return nameGuest;
    }

    public void setNameGuest(String name) {
        this.nameGuest = name;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }
}
