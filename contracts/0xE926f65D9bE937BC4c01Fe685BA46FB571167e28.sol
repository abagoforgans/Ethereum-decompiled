contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
uint256 sub_f87af023;
address lastCallerAddress;
array of uint256 sub_72a853b1;
uint256 sub_2b589b28;

function lastCaller() {
    return lastCallerAddress
}

function sub_2b589b28(?) {
    return sub_2b589b28
}

function sub_72a853b1(?) {
    return sub_72a853b1[0 len sub_72a853b1.length].field_0
}

function wasCalled() {
    return bool(uint8(stor0.field_160))
}

function sub_f87af023(?) {
    return sub_f87af023
}

function kill() {
    require msg.sender == address(stor0.field_0)
    selfdestruct(address(stor0.field_0))
}

function __reset__() {
    sub_2b589b28 = 0
    bool(sub_72a853b1.length) = 0
    sub_72a853b1.length.field_1 = 0
    sub_72a853b1.length.field_8 = mem[128 len 31]
    idx = 0
    while sub_72a853b1.length + 31 / 32 > idx:
        sub_72a853b1[idx].field_0 = 0
        idx = idx + 1
        continue 
    lastCallerAddress = 0
    sub_f87af023 = 0
    Mask(96, 0, stor0.field_160) = 0
}

function _fallback() payable {
    sub_2b589b28 = gas_remaining
    sub_72a853b1.length = (2 * calldata.size) + 1
    s = 0
    idx = 0
    while calldata.size > idx:
        sub_72a853b1[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, calldata.size + 31) >> 5
    while sub_72a853b1.length + 31 / 32 > idx:
        sub_72a853b1[idx].field_0 = 0
        idx = idx + 1
        continue 
    lastCallerAddress = msg.sender
    sub_f87af023 = msg.value
    Mask(96, 0, stor0.field_160) = 1
}



}
