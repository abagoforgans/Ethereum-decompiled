contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 418]




// =====================  Runtime code  =====================


uint8 forked;
uint8 sub_0f9668b8; offset 8
uint256 stor0; offset 16

function sub_0f9668b8(?) payable {
    return bool(sub_0f9668b8)
}

function forked() payable {
    return bool(forked)
}

function _fallback() payable {
  stop
}

function sub_c46470c6(?) payable {
    require sub_0f9668b8
    if forked:
        call arg1 with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
}

function sub_0cf96406(?) payable {
    require sub_0f9668b8
    if not forked:
        call arg1 with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
}

function sub_bd7d0d51(?) payable {
    require block.number >= 1920000
    require not sub_0f9668b8
    forked = uint8(eth.balance(0xbf4ed7b27f1d666546e30d74d50d173d20bca754) > 1000000 * 10^18)
    sub_0f9668b8 = 1
    stor0 = Mask(240, 16, eth.balance(0xbf4ed7b27f1d666546e30d74d50d173d20bca754) > 1000000 * 10^18) >> 16
}



}
