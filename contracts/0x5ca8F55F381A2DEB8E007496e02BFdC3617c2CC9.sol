contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[128] = 'TST'
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'TST' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -940] = code.data[1306 len -940]
    require mem[172 len 20]
    stor0 = mem[172 len 20]
    stor1[].field_0 = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    return code.data[366 len 940]
}



// =====================  Runtime code  =====================


address tokenAddress;
array of uint256 symbol;

function symbol() {
    return symbol[0 len symbol.length]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function decimals() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function totalSupplyAt(uint256 arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOfAt(address arg1, uint256 arg2) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}



}
