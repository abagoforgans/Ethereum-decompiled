contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address targetUserAddress;
uint8 stor1; offset 160
uint64 sub_f5e3fc30; offset 168
address stor1;
address beneficiaryAddress;
uint256 sub_73b6eacf;

function beneficiary() {
    return beneficiaryAddress
}

function sub_73b6eacf(?) {
    return sub_73b6eacf
}

function targetUser() {
    return targetUserAddress
}

function sub_f5e3fc30(?) {
    return sub_f5e3fc30
}

function _fallback() payable {
    require not stor0
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function isServiceAccount() {
    return (msg.sender == address(stor1.field_0))
}

function changeServiceAccount(address arg1) {
    require msg.sender == address(stor1.field_0)
    require arg1
    address(stor1.field_0) = arg1
}

function kill() {
    require msg.sender == targetUserAddress
    require not stor0
    stor0 = 1
    if eth.balance(this.address):
        call targetUserAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Killed(1);
}

function check() payable {
    require msg.sender == address(stor1.field_0)
    require not uint8(stor1.field_160)
    emit Checked(sub_f5e3fc30 <= block.timestamp);
    if sub_f5e3fc30 <= block.timestamp:
        emit Triggered(eth.balance(this.address));
        uint8(stor1.field_160) = 1
        if eth.balance(this.address) <= sub_73b6eacf:
            if eth.balance(this.address):
                emit FundsSent(beneficiaryAddress, eth.balance(this.address));
                call beneficiaryAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if sub_73b6eacf:
                emit FundsSent(beneficiaryAddress, sub_73b6eacf);
                call beneficiaryAddress with:
                   value sub_73b6eacf wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) - sub_73b6eacf:
                emit FundsSent(targetUserAddress, eth.balance(this.address) - sub_73b6eacf);
                call targetUserAddress with:
                   value eth.balance(this.address) - sub_73b6eacf wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
