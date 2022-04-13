contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1189]




// =====================  Runtime code  =====================


array of struct stor0;
address stor1;

function _fallback() payable {
    revert
}

function FindID(address arg1) {
    require 0 < stor0.length
    require address(stor0.field_0) == arg1
    require not uint8(stor0.field_768)
    return 0
}

function hodls(uint256 arg1) {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512, bool(stor0[arg1].field_768)
}

function Realize(uint256 arg1) payable {
    require arg1 < stor0.length
    require block.timestamp > stor0[arg1].field_512
    require not stor0[arg1].field_768
    require stor0[arg1].field_0 == msg.sender
    call msg.sender with:
       value stor0[arg1].field_256 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor0[arg1].field_768 = 1
    return stor0[arg1].field_256
}

function HodlEth(address arg1, uint256 arg2) payable {
    stor1 = 0x9979ccff79de92fbc1fb43bcd2a3a97bb86b6920
    call stor1 with:
       value msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = 4 * stor0.length + 1
        while 4 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            stor0[idx].field_512 = 0
            stor0[idx].field_768 = 0
            idx = idx + 4
            continue 
    require stor0.length < stor0.length
    stor0[stor0.length].field_512 = block.timestamp + (24 * 3600 * arg2)
    stor0[stor0.length].field_0 = arg1
    stor0[stor0.length].field_256 = 99 * msg.value / 100
    stor0[stor0.length].field_768 = 0
    emit hodlAdded(stor0.length, address(arg1), msg.value, stor0[stor0.length].field_512);
    return stor0.length
}



}
