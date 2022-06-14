contract main {




// =====================  Runtime code  =====================


uint256 a;
uint256 b;
uint256 c;
uint256 d;
uint256 e;
uint256 f;
uint256 g;
uint256 h;

function a() {
    return a
}

function f() {
    return f
}

function b() {
    return b
}

function d() {
    return d
}

function h() {
    return h
}

function c() {
    return c
}

function g() {
    return g
}

function e() {
    return e
}

function _fallback() payable {
    revert
}

function test() {
    if not block.gasprice:
        a = 1
    else:
        if block.gasprice == 1:
            a = 1
            b = 1
        else:
            if block.gasprice < 1:
                a = 1
                b = 1
                c = 1
            else:
                if block.gasprice > 1:
                    a = 1
                    b = 1
                    c = 1
                    d = 1
                    if block.gasprice <= 2:
                    else:
                        e = 1
                        if block.gasprice <= 3:
                        else:
                            f = 1
                            if block.gasprice <= 4:
                            else:
                                g = 1
                                if block.gasprice <= 5:
                                else:
                                    h = 1
}



}
