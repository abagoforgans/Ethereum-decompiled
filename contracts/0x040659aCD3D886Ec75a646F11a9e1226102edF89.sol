contract main {




// =====================  Runtime code  =====================


address stor0;
address sub_4fe6f55fAddress;
array of address sub_817c4691;

function sub_4fe6f55f(?) {
    return sub_4fe6f55fAddress
}

function sub_817c4691(?) {
    require arg1 < sub_817c4691.length
    return sub_817c4691[arg1]
}

function _fallback() payable {
  stop
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
    require ext_code.size(sub_4fe6f55fAddress)
    call sub_4fe6f55fAddress.airDropPot_() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_4fe6f55fAddress)
    call sub_4fe6f55fAddress.airDropTracker_() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 3 * 10^17
    idx = 0
    while idx < sub_817c4691.length:
        mem[0] = 2
        mem[96] = 0x2f955a100000000000000000000000000000000000000000000000000000000
        mem[100] = ext_call.return_data[0]
        require ext_code.size(sub_817c4691[idx])
        call sub_817c4691[idx].LetsGo(uint256 arg1) with:
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
