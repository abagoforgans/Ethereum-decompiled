contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1368]




// =====================  Runtime code  =====================


mapping of uint256 hodlers;

function hodlers(address arg1) {
    return hodlers[arg1]
}

function _fallback() payable {
    hodlers[address(msg.sender)] += msg.value
    emit Hodl(msg.sender, msg.value);
}

function party() {
    require block.timestamp > 429576 * 24 * 3600
    require hodlers[address(msg.sender)] > 0
    hodlers[address(msg.sender)] = 0
    call msg.sender with:
       value hodlers[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Party(msg.sender, hodlers[address(msg.sender)]);
}

function withdrawForeignTokens(address arg1) {
    if 0x6c3e1e834f780eca69d01c5f3e9c6f5afb93eb55 != msg.sender:
        require block.timestamp > 429576 * 24 * 3600
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0x6c3e1e834f780eca69d01c5f3e9c6f5afb93eb55, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
