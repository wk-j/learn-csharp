
class Test {
    public static void T() {
        unsafe {
            object o = new object();
            TypedReference tr = __makeref(o);
            IntPtr ptr = **(IntPtr**)(&tr);
        }
    }
}

Test.T();