contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = msg.sender
    require stor0 == msg.sender
    stor2 = code.data[4215 len 20]
    return code.data[169 len 4034]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address etherdeltaAddress;

function etherdelta() {
    return etherdeltaAddress
}

function owner() {
    return owner
}

function allowed(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function setEtherDelta(address arg1) {
    require owner == msg.sender
    etherdeltaAddress = arg1
}

function sub_0f71900b(?) {
    require owner == msg.sender
    require arg1
    stor1[address(arg1)] = uint8(arg2)
}

function sub_89513aee(?) {
    require owner == msg.sender
    if arg2:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_cb14f58b(?) {
    require owner == msg.sender
    idx = 0
    while idx < ('cd', 4).length:
        require address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
}

function sub_df058a30(?) {
    require owner == msg.sender
    require ext_code.size(arg1)
    if arg3:
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg2), arg3
    else:
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg2), ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function withdraw(address arg1, uint256 arg2) {
    require owner == msg.sender
    if arg2:
        require arg2 > 0
        require ext_code.size(etherdeltaAddress)
        if arg1:
            call etherdeltaAddress.0x9e281a98 with:
                 gas gas_remaining - 710 wei
                args address(arg1), arg2
        else:
            call etherdeltaAddress.withdraw(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args arg2
    else:
        require ext_code.size(etherdeltaAddress)
        call etherdeltaAddress.tokens(address rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), this.address
        require ext_call.success
        require ext_call.return_data[0] > 0
        require ext_code.size(etherdeltaAddress)
        if arg1:
            call etherdeltaAddress.0x9e281a98 with:
                 gas gas_remaining - 710 wei
                args address(arg1), ext_call.return_data[0]
        else:
            call etherdeltaAddress.withdraw(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0]
    require ext_call.success
}

function deposit(address arg1) payable {
    if msg.value > 0:
        require ext_code.size(etherdeltaAddress)
        call etherdeltaAddress.deposit() with:
           value msg.value wei
             gas gas_remaining - 9710 wei
        require ext_call.success
    if arg1:
        require ext_code.size(arg1)
        call arg1.0xdd62ed3e with:
             gas gas_remaining - 710 wei
            args msg.sender, this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args etherdeltaAddress, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(etherdeltaAddress)
        call etherdeltaAddress.depositToken(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), ext_call.return_data[0]
        require ext_call.success
}

function sub_c60d1a34(?) {
    require stor1[address(msg.sender)]
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9
    require ext_call.success
    require ext_call.return_data[0] > 0
    if not arg10:
        require ext_code.size(etherdeltaAddress)
        call etherdeltaAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, ext_call.return_data[0]
    else:
        require arg10 <= ext_call.return_data[0]
        require ext_code.size(etherdeltaAddress)
        call etherdeltaAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10
    require ext_call.success
}

function sub_bcdee0c9(?) {
    require stor1[address(msg.sender)]
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.orderFills(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg6), arg10
    require ext_call.success
    require ext_code.size(etherdeltaAddress)
    call etherdeltaAddress.tokens(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg6
    require ext_call.success
    require arg3
    if ext_call.return_data[0] * arg1 / arg3 >= arg1 - ext_call.return_data[0]:
        require arg1 - ext_call.return_data[0] >= arg11
        require ext_code.size(etherdeltaAddress)
        call etherdeltaAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args 0, 0, uint32(arg1), address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg1 - ext_call.return_data[0]
    else:
        require ext_call.return_data[0] * arg1 / arg3 >= arg11
        require ext_code.size(etherdeltaAddress)
        call etherdeltaAddress.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args 0, 0, uint32(arg1), address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, ext_call.return_data[0] * arg1 / arg3
    require ext_call.success
}



}
