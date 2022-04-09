contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 651]




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function tokenSellData(address arg1) {
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function setTokenForSale(uint256 arg1, address arg2) {
    stor0[address(msg.sender)].field_0 = arg1
    stor0[address(msg.sender)].field_256 = arg2
}

function buyToken(address arg1) payable {
    require msg.value > 0
    require stor0[address(arg1)].field_0
    require msg.value / stor0[address(arg1)].field_0 > 0
    require ext_code.size(stor0[address(arg1)].field_256)
    call stor0[address(arg1)].field_256.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.sender, msg.value / stor0[address(arg1)].field_0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}



}
