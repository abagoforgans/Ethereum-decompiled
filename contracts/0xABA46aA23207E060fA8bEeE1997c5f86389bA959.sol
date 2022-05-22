contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 6
    stor0.length.field_8 = 'hello?' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    return code.data[262 len 707]
}



// =====================  Runtime code  =====================


array of uint256 sayHello;

function sayHello() {
    return sayHello[0 len sayHello.length]
}

function _fallback() payable {
    revert
}

function changeHello(string arg1) {
    sayHello[] = Array(len=arg1.length, data=arg1[all])
}



}
