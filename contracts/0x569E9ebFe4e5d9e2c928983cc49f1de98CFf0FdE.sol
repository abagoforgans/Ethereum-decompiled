contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    bool(stor1.length) = 0
    stor1.length.field_1 = 0
    stor1.length.field_8 = mem[128 len 31]
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[303 len 976]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 head;

function head() {
    return head[0 len head.length]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function update(string arg1) {
    if msg.sender == stor0:
        head[] = Array(len=arg1.length, data=arg1[all])
}



}
