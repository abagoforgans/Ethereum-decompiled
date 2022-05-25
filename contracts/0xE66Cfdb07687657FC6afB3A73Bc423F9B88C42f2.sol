contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
uint256 endDate;
address developerAddress;
address marketingAddress;
address kellyAddress;
address companyAddress;
uint256 phaseOneEnd;
uint256 phaseTwoEnd;
uint256 phaseThreeEnd;
address CCCAddress;

function marketing() {
    return marketingAddress
}

function kelly() {
    return kellyAddress
}

function phaseOneEnd() {
    return phaseOneEnd
}

function company() {
    return companyAddress
}

function phaseThreeEnd() {
    return phaseThreeEnd
}

function CCC() {
    return CCCAddress
}

function owner() {
    return owner
}

function endDate() {
    return endDate
}

function developer() {
    return developerAddress
}

function newOwner() {
    return newOwner
}

function phaseTwoEnd() {
    return phaseTwoEnd
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawTokens() {
    require msg.sender == owner
    require block.timestamp >= phaseThreeEnd
    require ext_code.size(CCCAddress)
    call CCCAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(CCCAddress)
    call CCCAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit tokensCalledBack(ext_call.return_data[0]);
}

function safeWithdrawal() {
    require msg.sender == owner
    require block.timestamp >= phaseThreeEnd
    call developerAddress with:
       value 5 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call marketingAddress with:
       value 5 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    call companyAddress with:
       value 85 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    call kellyAddress with:
       value 5 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.value >= 4 * 10^17
    require block.timestamp < phaseThreeEnd
    require ext_code.size(CCCAddress)
    if block.timestamp <= phaseOneEnd:
        call CCCAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 12546 * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit tokensBought(msg.sender, 12546 * msg.value);
    else:
        if block.timestamp <= phaseTwoEnd:
            call CCCAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 12063 * msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit tokensBought(msg.sender, 12063 * msg.value);
        else:
            if block.timestamp > phaseThreeEnd:
                call CCCAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit tokensBought(msg.sender, 0);
            else:
                call CCCAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 11581 * msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit tokensBought(msg.sender, 11581 * msg.value);
}



}
