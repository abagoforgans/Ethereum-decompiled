contract main {




// =====================  Runtime code  =====================


address stor0;
uint8 stor1; offset 160
uint128 stor1; offset 160
address stor1;

function _fallback() payable {
    require uint8(stor1.field_160)
}

function sub_a767a2db(?) {
    require address(stor1.field_0) == msg.sender
    Mask(96, 0, stor1.field_160) = 1
}

function finish() {
    call address(stor1.field_0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function play() payable {
    require ext_code.size(stor0)
    call stor0.playerRollDice(uint256 arg1) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 45
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) {
    idx = 0
    while idx < arg1:
        mem[96] = 0xa5f4af3300000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0)
        call stor0.playerWithdrawPendingTransactions() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
