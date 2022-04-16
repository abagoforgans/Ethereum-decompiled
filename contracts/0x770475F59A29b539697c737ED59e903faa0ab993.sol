contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[97 len 1002]
}



// =====================  Runtime code  =====================


address stor0;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender, 88);
}

function collect() {
    if msg.sender == stor0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function collectToken(address arg1, address arg2, uint256 arg3) {
    if msg.sender == stor0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg2), arg3
        require ext_call.success
}



}
