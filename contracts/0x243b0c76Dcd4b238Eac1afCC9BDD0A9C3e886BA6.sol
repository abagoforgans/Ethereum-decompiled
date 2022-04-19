contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint8 stor1; offset 160
uint64 stor1; offset 168
address stor1;
address stor2;
uint256 stor3;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    uint8(stor1.field_160) = 0
    require not msg.value
    require code.data[1710 len 20]
    address(stor0.field_0) = code.data[1710 len 20]
    address(stor1.field_0) = msg.sender
    stor2 = code.data[1742 len 20]
    uint64(stor1.field_168) = code.data[1818 len 8]
    stor3 = code.data[1762 len 32]
    return code.data[273 len 1425]
}



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

function isServiceAccount() {
    return (address(stor1.field_0) == msg.sender)
}

function changeServiceAccount(address arg1) {
    require address(stor1.field_0) == msg.sender
    require arg1
    address(stor1.field_0) = arg1
}

function kill() {
    require targetUserAddress == msg.sender
    require not stor0
    stor0 = 1
    if eth.balance(this.address):
        call targetUserAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function check() payable {
    require address(stor1.field_0) == msg.sender
    require not stor0
    require not uint8(stor1.field_160)
    if sub_f5e3fc30 <= block.timestamp:
        emit Triggered(eth.balance(this.address));
        uint8(stor1.field_160) = 1
        if eth.balance(this.address) <= sub_73b6eacf:
            if eth.balance(this.address):
                emit FundsSent(beneficiaryAddress, eth.balance(this.address));
                call beneficiaryAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if sub_73b6eacf:
                emit FundsSent(beneficiaryAddress, sub_73b6eacf);
                call beneficiaryAddress with:
                   value sub_73b6eacf wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            if eth.balance(this.address) - sub_73b6eacf:
                emit FundsSent(targetUserAddress, eth.balance(this.address) - sub_73b6eacf);
                call targetUserAddress with:
                   value eth.balance(this.address) - sub_73b6eacf wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
}



}
