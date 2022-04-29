contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor5;
uint8 stor7;

function _fallback() payable {
    stor0 = 0xd5f788ca0de8f17cbde1d1e35aa8f005a87fa00b
    stor2 = 0
    stor7 = 0
    require not msg.value
    stor1 = code.data[2707 len 20]
    stor3 = code.data[2727 len 32]
    stor5 = code.data[2771 len 20]
    return code.data[332 len 2363]
}



// =====================  Runtime code  =====================


address stor0;
address beneficiaryAddress;
uint256 amountRaised;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor7;

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function getAmountRaised() {
    return amountRaised
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function amountRaised() {
    return amountRaised
}

function price() {
    return price
}

function crowdsaleClosed() {
    return bool(stor7)
}

function sub_48ff1c65(?) {
    if block.timestamp >= deadline:
        require ext_code.size(stor0)
        call stor0.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args beneficiaryAddress, ext_call.return_data[0]
        require ext_call.success
}

function sub_400eb997(?) {
    if block.timestamp >= deadline:
        stor7 = 1
        require ext_code.size(stor0)
        call stor0.0x70a08231 with:
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
    if block.timestamp >= deadline:
        stor7 = 1
        require ext_code.size(stor0)
        call stor0.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args beneficiaryAddress, ext_call.return_data[0]
        require ext_call.success
    require not stor7
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    require ext_code.size(tokenRewardAddress)
    if block.timestamp < 422040 * 24 * 3600:
        if block.timestamp >= 421872 * 24 * 3600:
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 4 * 10^11 * msg.value / 10^18
        else:
            if block.timestamp >= 421680 * 24 * 3600:
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 125 * 10^6 * 3600 * msg.value / 10^18
            else:
                if block.timestamp >= 421512 * 24 * 3600:
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 5 * 10^11 * msg.value / 10^18
                else:
                    if block.timestamp < 420768 * 24 * 3600:
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 2 * 10^11 * msg.value / 10^18
                    else:
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10^12 * msg.value / 10^18
    else:
        if block.timestamp < 422184 * 24 * 3600:
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 35 * 10^10 * msg.value / 10^18
        else:
            if block.timestamp >= 421872 * 24 * 3600:
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 4 * 10^11 * msg.value / 10^18
            else:
                if block.timestamp >= 421680 * 24 * 3600:
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 125 * 10^6 * 3600 * msg.value / 10^18
                else:
                    if block.timestamp >= 421512 * 24 * 3600:
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 5 * 10^11 * msg.value / 10^18
                    else:
                        if block.timestamp < 420768 * 24 * 3600:
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 2 * 10^11 * msg.value / 10^18
                        else:
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 10^12 * msg.value / 10^18
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit FundTransfer(beneficiaryAddress, msg.value, 0);
    amountRaised = 0
}



}
