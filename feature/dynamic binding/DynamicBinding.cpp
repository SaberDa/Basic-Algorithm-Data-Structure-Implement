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

int main() {
    Binding* pBinding = new Binding();
    DynamicBinding* pDynamicBinding = new DynamicBinding();
    Binding* pTest = pDynamicBinding;

    cout << "The first part" << endl;
    pBinding->binding();
    pDynamicBinding->binding();
    pTest->binding();

    cout << "The second part" << endl;
    pBinding->dynamicBinding();
    pDynamicBinding->dynamicBinding();
    pTest->dynamicBinding();

}

