#include <iostream>

using namespace std;

class Binding {
    public:
    void binding() {
        cout << "This is Class: Binding" << endl;
    }
    virtual void dynamicBinding() {
        cout << "This is Class: Binding" << endl;
    }
};

class DynamicBinding : public Binding {
    public:
    void binding() {
        cout << "This is Class: DynamicBinding" << endl;
    }

    virtual void dynamicBinding() {
        cout << "This is Class: DynamicBinding" << endl;
    }
};

class SecondDynamicBinding : public DynamicBinding {
    public:
    void binding() {
        cout << "This is Class: SecondDynamicBinding" << endl;
    }
    
    virtual void dynamicBinding() {
        cout << "This is Class: SecondDynamicBinding" << endl;
    }
};

int main() {
    Binding* pBinding = new Binding();
    DynamicBinding* pDynamicBinding = new DynamicBinding();
    SecondDynamicBinding* pSecondDynamicBinding = new SecondDynamicBinding();
    Binding* pTest1 = pDynamicBinding;
    Binding* pTest2 = pSecondDynamicBinding;

    cout << "The first part" << endl;
    pBinding->binding();
    pDynamicBinding->binding();
    pTest1->binding();
    pTest2->binding();

    cout << "The second part" << endl;
    pBinding->dynamicBinding();
    pDynamicBinding->dynamicBinding();
    pTest1->dynamicBinding();
    pTest2->dynamicBinding();

}

