let a = { x = 1; y = 2; z = 3; }; in rec { b = with a; [ x y z ]; c = builtins.elemAt b 0; }
