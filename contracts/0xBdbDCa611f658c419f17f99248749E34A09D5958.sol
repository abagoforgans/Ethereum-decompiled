contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[3359 len 20]
    return code.data[112 len 3235]
}



// =====================  Runtime code  =====================


address owner;
address etherDeltaAddress;

function owner() {
    return owner
}

function etherDelta() {
    return etherDeltaAddress
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function sub_6fa7c178(?) payable {
    hash = sha256hash(0, 0, arg2, arg3, arg4, arg5, msg.value) 
    require sha256hash.result
    require ext_code.size(etherDeltaAddress)
    call etherDeltaAddress.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), 0, 0, 0
    require ext_call.success
    if ext_call.return_data[0] < msg.value:
        emit 0xe1bf2a28: hash
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        return 0
    require ext_code.size(etherDeltaAddress)
    call etherDeltaAddress.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    require ext_code.size(etherDeltaAddress)
    call etherDeltaAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), 0, 0, 0, msg.value
    require ext_call.success
    require ext_code.size(etherDeltaAddress)
    call etherDeltaAddress.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), this.address
    require ext_call.success
    require ext_code.size(etherDeltaAddress)
    call etherDeltaAddress.0x9e281a98 with:
         gas gas_remaining - 710 wei
        args address(arg2), ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(address(arg2))
    call address(arg2).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg7), ext_call.return_data[0]
    require ext_call.success
    emit 0xe68fd209: 0, msg.value, address(arg2), ext_call.return_data[0], hash, arg7
    return 1
}

function sub_532af076(?) {
    hash = sha256hash(address(arg2), 0, 0, arg1, arg4, arg5, arg7) 
    require sha256hash.result
    require ext_code.size(etherDeltaAddress)
    call etherDeltaAddress.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg3, 0, arg1, arg4, arg5, address(arg6), 0, 0, 0
    require ext_call.success
    require ext_code.size(arg2)
    if ext_call.return_data[0] < arg7:
        call arg2.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
        emit 0xe1bf2a28: hash
        return 0
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args etherDeltaAddress, arg7
    require ext_call.success
    require ext_code.size(etherDeltaAddress)
    call etherDeltaAddress.0x338b5dea with:
         gas gas_remaining - 710 wei
        args address(arg2), arg7
    require ext_call.success
    require ext_code.size(etherDeltaAddress)
    call etherDeltaAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg3, 0, arg1, arg4, arg5, address(arg6), 0, 0, 0, arg7
    require ext_call.success
    require ext_code.size(etherDeltaAddress)
    call etherDeltaAddress.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0, this.address
    require ext_call.success
    require ext_code.size(etherDeltaAddress)
    call etherDeltaAddress.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    emit 0xe68fd209: address(arg2), arg7, 0, ext_call.return_data[0], hash, msg.sender
    return 1
}



}
