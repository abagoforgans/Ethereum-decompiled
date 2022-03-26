contract main {


// =======================  Init code  ======================


uint32 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    uint32(stor0.field_160) = 0
    stor1 = 0
    stor2 = 49 * 10^16
    return code.data[174 len 1317]
}



// =====================  Runtime code  =====================


uint32 sub_81d3e73c; offset 160
address stor0;
uint256 sub_857314f0;
uint256 stor2;
mapping of address stor3;

function sub_81d3e73c(?) {
    return sub_81d3e73c
}

function sub_857314f0(?) {
    return sub_857314f0
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function sub_c3418120(?) {
    if stor3[address(arg1)] != arg1:
        return 0
    return 1
}

function sub_c58158cf(?) {
    stor3[address(msg.sender)] = arg1
    sub_81d3e73c = uint32(sub_81d3e73c + 1)
    emit 0x2e95375b: arg1
    return 1
}

function sub_c36fb3d4(?) {
    require msg.sender == stor0
    sub_857314f0 = 0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function _fallback() payable {
    require msg.value > stor2
    require stor3[address(msg.sender)] != msg.sender
    stor3[address(msg.sender)] = msg.sender
    sub_81d3e73c = uint32(sub_81d3e73c + 1)
    emit 0x2e95375b: msg.sender
    sub_857314f0 += msg.value
}



}
