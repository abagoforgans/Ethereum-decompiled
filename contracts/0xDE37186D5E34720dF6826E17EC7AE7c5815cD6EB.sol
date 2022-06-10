contract main {




// =====================  Runtime code  =====================


address sub_d1ad17bfAddress;
big2048 stor3;
uint256 paymentInterval;
uint256 sub_f89db323;
uint256 lockedUntil;
uint256 sub_746f5acd;
address owner;
address recipientAddress;
address sub_ddde3cb2Address;

function paymentInterval() {
    return paymentInterval
}

function recipient() {
    return recipientAddress
}

function sub_746f5acd(?) {
    return sub_746f5acd
}

function owner() {
    return owner
}

function lockedUntil() {
    return lockedUntil
}

function sub_d1ad17bf(?) {
    return sub_d1ad17bfAddress
}

function sub_ddde3cb2(?) {
    return sub_ddde3cb2Address
}

function sub_f89db323(?) {
    return sub_f89db323
}

function _destroyContract() {
    require msg.sender == owner
    selfdestruct(msg.sender)
}

function _fallback() payable {
    if msg.value <= 0:
        call recipientAddress with:
           value sub_f89db323 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function startSchedule() payable {
    require msg.sender == owner
    lockedUntil = block.number + paymentInterval
    require ext_code.size(sub_d1ad17bfAddress)
    call sub_d1ad17bfAddress.schedule(address arg1, bytes arg2, uint256[8] arg3) with:
       value sub_746f5acd wei
         gas gas_remaining wei
        args address(this.address), 320, stor3, 0, mem[708]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_ddde3cb2Address = address(ext_call.return_data[0])
}



}
