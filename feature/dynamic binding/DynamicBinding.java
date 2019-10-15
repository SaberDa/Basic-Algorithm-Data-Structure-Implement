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
}

class SecondDynamicBinding extends DynamicBinding {
    protected String test = "SecondDynamicBinding test";

    public String getStr() {
        return test;
    }

    public static void main(String[] args) {
        Binding test1 = new Binding();
        Binding test2 = new DynamicBinding();
        Binding test3 = new SecondDynamicBinding();

        System.out.println("The first part");
        System.out.println("The class is " + test1.test);
        System.out.println("The class is " + test2.test);
        System.out.println("The class is " + test3.test);

        System.out.println("The second part");
        System.out.println("The class is " + test1.getStr());
        System.out.println("The class is " + test2.getStr());
        System.out.println("The class is " + test3.getStr());
    }
}