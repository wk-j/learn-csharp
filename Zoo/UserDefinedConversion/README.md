
## Test.csx

```csharp


class MagicNumber {
    public int Number { set; get;}

    public static implicit operator MagicNumber(int value) {
        return new MagicNumber { Number = value };
    }

    public static explicit operator int(MagicNumber value) {
        return value.Number;
    }
}

int i = 3;
MagicNumber n = i;


MagicNumber n2 = new MagicNumber { Number = 2 };
int i2 = (int) n2;

var i3 = n2 as int?

```