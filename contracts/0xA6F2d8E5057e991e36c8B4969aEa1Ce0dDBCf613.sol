contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 12
    stor0.length.field_8 = 'Hello World!' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[278 len 766]
}



// =====================  Runtime code  =====================


array of uint256 speak;

function speak() {
    return speak[0 len speak.length]
}

function _fallback() payable {
    revert
}

function saySomethingElse(string arg1) {
    speak[] = Array(len=arg1.length, data=arg1[all])
    return 1
}



}
