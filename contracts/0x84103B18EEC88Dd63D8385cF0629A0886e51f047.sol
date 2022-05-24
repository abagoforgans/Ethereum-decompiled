contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor2; offset 160
uint128 stor2; offset 160
address controllerAddress;

function owner() {
    return owner
}

function controller() {
    return controllerAddress
}

function sub_f87dc2c6(?) {
    return bool(uint8(stor2.field_160))
}

function _fallback() payable {
  stop
}

function setController(address arg1) {
    require msg.sender == owner
    controllerAddress = arg1
}

function setTradeEnable(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_5c170508(?) {
    require msg.sender == owner
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_de32527a(?) {
    if controllerAddress != msg.sender:
        require msg.sender == owner
    require uint8(stor2.field_160)
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return 1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg3
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
