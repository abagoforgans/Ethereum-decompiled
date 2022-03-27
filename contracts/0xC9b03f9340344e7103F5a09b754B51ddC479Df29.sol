contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() {
    stor0 = block.number + code.data[1119 len 32]
    stor1 = code.data[1099 len 20]
    return code.data[140 len 947]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint256 stor0;
big512 stor0;
address stor1;

function delay() payable {
    require ext_code.size(0x6c8f2a135f6ed072de4503bd7c4999a1a17f824b)
    call 0x6c8f2a135f6ed072de4503bd7c4999a1a17f824b.0xa2eb203a with:
       value msg.value wei
         gas gas_remaining - 9050 wei
        args address(this.address), 192, 255, 200000, Mask(512, 0, stor0), 0
    require ext_call.success
}

function _fallback() payable {
    if block.timestamp < uint256(stor0):
        emit Locked((uint256(stor0) - block.timestamp));
    else:
        if eth.balance(this.address) > 0:
            emit Payout(eth.balance(this.address));
            call stor1 with:
               value eth.balance(this.address) wei
                 gas gas_remaining - 34050 wei
}

function payout() {
    if block.timestamp < uint256(stor0):
        emit Locked((uint256(stor0) - block.timestamp));
        return 0
    if eth.balance(this.address) <= 0:
        return 0
    emit Payout(eth.balance(this.address));
    call stor1 with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34050 wei
    return bool(ext_call.success)
}



}
