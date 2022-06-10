contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 714]




// =====================  Runtime code  =====================


mapping of uint256 hodlers;

function hodlers(address arg1) {
    return hodlers[arg1]
}

function _fallback() payable {
    hodlers[address(msg.sender)] += msg.value
    emit Hodl(msg.sender, msg.value);
    if not msg.value:
        require block.timestamp > 1546509999
        require hodlers[address(msg.sender)] > 0
        hodlers[address(msg.sender)] = 0
        call msg.sender with:
           value hodlers[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Party(msg.sender, hodlers[address(msg.sender)]);
    if 10^15 == msg.value:
        require block.timestamp > 1546509999
        require ext_code.size(0xa15c7ebe1f07caf6bff097d8a589fb8ac49ae5b3)
        call 0xa15c7ebe1f07caf6bff097d8a589fb8ac49ae5b3.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(0xa15c7ebe1f07caf6bff097d8a589fb8ac49ae5b3)
        call 0xa15c7ebe1f07caf6bff097d8a589fb8ac49ae5b3.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
}



}
