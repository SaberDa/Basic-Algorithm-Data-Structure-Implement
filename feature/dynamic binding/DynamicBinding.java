class Binding {
    protected String test = "Binding test";

    public String getStr() {
        return test;
    }

}

class DynamicBinding extends Binding {
    protected String test = "DynamicBinding test";

    public String getStr() {
        return test;
    }

    public static void main(String[] args) {
        Binding test = new DynamicBinding();
        
        System.out.println("The first part");
        System.out.println("The class is " + test.test);
        System.out.println("The second part");
        System.out.println("The class is " + test.getStr());
    }
}