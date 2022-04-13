contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor3;
address stor4;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0x1a3c91b9dfa069f5da7f24001777b161f5e0fe60
    stor3 = 1666 * 10^12
    stor4 = 0x190fb342aa6a15eb82903323ae78066ff8616746
    return code.data[142 len 1315]
}



// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 amountRaised;
uint256 price;
address tokenRewardAddress;

function beneficiary() {
    return beneficiaryAddress
}

function tokenReward() {
    return tokenRewardAddress
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function price() {
    return price
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function sendCoinsToBeneficiary() {
    require owner == msg.sender
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, ext_call.return_data[0]
    require ext_call.success
}

function _fallback() payable {
    require msg.value >= 10^17
    require msg.value <= 3000 * 10^18
    amountRaised += msg.value
    require price > 0
    require price
    require msg.value == (price * msg.value / price) + (msg.value % price)
    if not msg.value / price:
        if amountRaised >= 5000 * 10^18:
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                if ext_code.size(tokenRewardAddress):
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 10^6 * msg.value / price
                    if ext_call.success:
        else:
            if not 10^6 * msg.value / price:
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    if ext_code.size(tokenRewardAddress):
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 2 * 10^6 * msg.value / price
                        if ext_call.success:
            else:
                if 10^6 * msg.value / price:
                    if 2 * 10^6 * msg.value / price / 10^6 * msg.value / price == 2:
                        call beneficiaryAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            if ext_code.size(tokenRewardAddress):
                                call tokenRewardAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 2 * 10^6 * msg.value / price
                                if ext_call.success:
    else:
        if msg.value / price:
            if 10^6 * msg.value / price / msg.value / price == 10^6:
                if amountRaised >= 5000 * 10^18:
                    call beneficiaryAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        if ext_code.size(tokenRewardAddress):
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 10^6 * msg.value / price
                            if ext_call.success:
                else:
                    if not 10^6 * msg.value / price:
                        call beneficiaryAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            if ext_code.size(tokenRewardAddress):
                                call tokenRewardAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 2 * 10^6 * msg.value / price
                                if ext_call.success:
                    else:
                        if 10^6 * msg.value / price:
                            if 2 * 10^6 * msg.value / price / 10^6 * msg.value / price == 2:
                                call beneficiaryAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
                                    if ext_code.size(tokenRewardAddress):
                                        call tokenRewardAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 2 * 10^6 * msg.value / price
                                        if ext_call.success:
    revert
}



}
