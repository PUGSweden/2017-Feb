.\Feb.2017.tests.ps1 -function {[char[]]"$int"|%{('*'*1*[string]$_).padleft(10,'-')}}
.\Feb.2017.tests.ps1 -function {"$int"[0..9]|%{('*'*1*[string]$_).padleft(10,'-')}}