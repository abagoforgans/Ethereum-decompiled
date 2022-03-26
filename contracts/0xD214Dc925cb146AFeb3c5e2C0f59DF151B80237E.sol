contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 12
    stor1.length.field_8 = 'Bouncer v1.0' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    return code.data[309 len 964]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 getName;

function GetName() {
    return getName[0 len getName.length]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function SetName(string arg1) {
    require msg.sender == stor0
    getName[] = Array(len=arg1.length, data=arg1[all])
}



}
