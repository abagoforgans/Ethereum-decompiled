contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 10
    stor0.length.field_8 = 'Ciao mondo' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor1 = msg.sender
    return code.data[296 len 749]
}



// =====================  Runtime code  =====================


array of uint256 sub_2adb5a14;
address stor1;

function sub_2adb5a14(?) {
    return sub_2adb5a14[0 len sub_2adb5a14.length]
}

function _fallback() payable {
    revert
}

function sub_ec017b4f(?) {
    if stor1 == msg.sender:
        sub_2adb5a14[] = Array(len=arg1.length, data=arg1[all])
}



}
