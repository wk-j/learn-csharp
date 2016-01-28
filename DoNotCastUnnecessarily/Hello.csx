class C {
    static string LowerWithIs(object input) {
        if(!(input is string)) return "";
        var str = (string) input;
        return str.ToLower();
    }
}

