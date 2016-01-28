dmcs /checked+ -out:Checked.exe Checked.cs
dmcs -out:Unchecked.exe Checked.cs

monodis --output=Checked.il Checked.exe
monodis --output=Unchecked.il Unchecked.exe