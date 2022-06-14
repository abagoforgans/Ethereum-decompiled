contract main {




// =====================  Runtime code  =====================


uint256 a;
uint256 b;
uint256 c;
uint256 d;

function a() {
    return a
}

function b() {
    return b
}

function d() {
    return d
}

function c() {
    return c
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
}



}
