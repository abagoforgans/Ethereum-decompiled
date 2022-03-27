contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[55 len 405]
}



// =====================  Runtime code  =====================


address stor0;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender, 88);
}

function collect() {
    if stor0 == msg.sender:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}

function collectToken(address arg1, address arg2, uint256 arg3) {
    if stor0 == msg.sender:
        require ext_code.size(arg1)
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args address(arg2), arg3
        require ext_call.success
}



}
