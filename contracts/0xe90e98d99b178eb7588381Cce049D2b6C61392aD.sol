contract main {




// =====================  Runtime code  =====================


address owner;
address affiliateAddress;
uint256 sub_d700e1c2;

function affiliate() {
    return affiliateAddress
}

function sub_80ea4f1d(?) {
    return sub_d700e1c2
}

function owner() {
    return owner
}

function sub_d700e1c2(?) {
    return sub_d700e1c2
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_aaa81743(?) {
    require msg.sender == owner
    emit 0x6447894e: sub_d700e1c2, arg1
    sub_d700e1c2 = arg1
}

function setAffiliate(address arg1) {
    require msg.sender == owner
    emit 0x3282010c: affiliateAddress, arg1
    affiliateAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    require msg.sender == owner
    emit Withdrawal(msg.sender, eth.balance(this.address));
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d78c29fb(?) payable {
    require 0 < msg.value
    require arg1
    if not affiliateAddress:
        emit 0xe723f005: msg.sender, msg.value, 0, arg1
    else:
        require ext_code.size(affiliateAddress)
        call affiliateAddress.0x5ff5d8bb with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            emit 0xe723f005: msg.sender, msg.value, 0, arg1
        else:
            if ext_call.return_data[0] <= 0:
                emit 0xe723f005: msg.sender, msg.value, 0, arg1
            else:
                require ext_call.return_data[0] <= 10^18
                if ext_call.return_data[0] * msg.value / 10^18 > 0:
                    require ext_code.size(affiliateAddress)
                    call affiliateAddress.0x540a65c with:
                       value ext_call.return_data[0] * msg.value / 10^18 wei
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                emit 0xe723f005: msg.sender, msg.value, ext_call.return_data[0] * msg.value / 10^18, arg1
}



}
