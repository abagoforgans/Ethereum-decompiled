contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
mapping of struct sub_3491c567;
array of struct stor3;

function sub_3491c567(?) {
    return sub_3491c567[arg1].field_0, bool(sub_3491c567[arg1].field_160)
}

function _fallback() payable {
    revert
}

function sub_14287416(?) payable {
    require msg.value >= stor1
    sub_3491c567[address(msg.sender)].field_160 = 1
}

function sub_039b925a(?) {
    if stor0 != msg.sender:
        revert with 0, 'Only owner can call this function.'
    stor3[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function changePrice(uint256 arg1) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    stor1 = arg1
}

function read() {
    sub_3491c567[address(msg.sender)].field_160 = 1
    mem[128] = uint256(stor3.field_0)
    idx = 128
    s = 0
    while stor3.length + 96 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor3.length, data=mem[128 len stor3.length])
}



}
