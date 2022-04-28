contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x9862d074e33003726fa05c74f0142995f33a3250
    require not msg.value
    return code.data[115 len 761]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function sub_ff03ad56(?) payable {
    if msg.sender == stor0:
        if eth.balance(msg.sender) >= arg2:
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}

function collect(address arg1, address arg2, uint256 arg3) {
    if msg.sender == stor0:
        require ext_code.size(arg2)
        call arg2.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), arg3
        require ext_call.success
}



}
