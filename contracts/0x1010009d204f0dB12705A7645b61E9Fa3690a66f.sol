contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
address stor3;

function _fallback() payable {
  stop
}

function exit() {
    require ext_code.size(stor0)
    call stor0.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_6c40b19a(?) {
    require ext_code.size(stor1)
    call stor1.sellAllCookies() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function purchase() payable {
    require block.timestamp >= 424245 * 3600
    require eth.balance(stor0) <= stor2
    if msg.value <= stor2 - eth.balance(stor0):
        require ext_code.size(stor0)
        call stor0.buy(address arg1) with:
           value msg.value wei
             gas 240000 wei
            args 0x15fda64fcdbca27a60aa8c6ca882aa3e1de4ea41
    else:
        call msg.sender with:
           value msg.value - stor2 + eth.balance(stor0) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        call stor0.buy(address arg1) with:
           value stor2 - eth.balance(stor0) wei
             gas 240000 wei
            args 0x15fda64fcdbca27a60aa8c6ca882aa3e1de4ea41
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
