contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[714 len 20]
    return code.data[83 len 619]
}



// =====================  Runtime code  =====================


const beneficiary = 0xbefaaa674bb5621e1a4d5f69851ef55963a5516d

const Price = 10^15


address tokenRewardAddress;
mapping of uint256 balanceOf;

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function _fallback() payable {
    call 0xbefaaa674bb5621e1a4d5f69851ef55963a5516d with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    balanceOf[address(msg.sender)] = msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / 10^15
    require ext_call.success
}



}
