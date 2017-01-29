

class Test {
    public static string T() {
        string s = "cat";
        unsafe {
            fixed (char* i = s) {
                *i = 'b';
                char* p2 = i + 1;
                *p2 = 'o';
            }
        }
        return s;
    }
}

Test.T();
