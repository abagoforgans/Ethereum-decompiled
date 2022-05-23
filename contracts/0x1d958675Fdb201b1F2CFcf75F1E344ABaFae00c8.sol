contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
array of address stor2;

function _fallback() payable {
    revert
}

function get() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function LetsGo() payable {
    require msg.sender == stor0
    require 10^17 == msg.value
    require ext_code.size(stor1)
    call stor1.airDropPot_() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.airDropTracker_() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 3 * 10^17
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        mem[96] = 0x2f955a100000000000000000000000000000000000000000000000000000000
        mem[100] = ext_call.return_data[0]
        require ext_code.size(stor2[idx])
        call stor2[idx].LetsGo(uint256 arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value + eth.balance(stor0) >= eth.balance(stor0):
            idx = idx + 1
            continue 
    require msg.value + eth.balance(stor0) < eth.balance(stor0)
}



}
