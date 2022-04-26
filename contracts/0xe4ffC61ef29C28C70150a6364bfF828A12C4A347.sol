contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;
address stor11;

function _fallback() payable {
    stor0 = 65747
    stor1 = 83492
    stor2 = 18734
    stor3 = 73642
    stor4 = 92834
    stor5 = 19374
    stor6 = 14268
    stor7 = 37388
    stor8 = 67230
    stor9 = 63848
    stor10 = 0x5fc8582bb390e1232dc50908cd35b38f540c72fd
    stor11 = 0x67bb01bcbeb273507ce2f8ac9f79a78d3a7f63dc
    require not msg.value
    return code.data[265 len 955]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;
address stor11;
mapping of uint8 stor12;

function _fallback() payable {
    revert
}

function claim(uint256 arg1) {
    require not stor12[address(msg.sender)]
    hash = sha256hash(address(msg.sender), 0, stor4, stor2 * stor9, stor7 + stor1, stor6, stor3, stor0 * stor5, stor8) 
    require sha256hash.result
    if Mask(128, 128, hash) >> 128 != uint128(arg1):
        return 0
    require ext_code.size(stor10)
    call stor10.0x23b872dd with:
         gas gas_remaining - 710 wei
        args stor11, msg.sender, uint128(arg1)
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor12[address(msg.sender)] = 1
    return 1
}



}
