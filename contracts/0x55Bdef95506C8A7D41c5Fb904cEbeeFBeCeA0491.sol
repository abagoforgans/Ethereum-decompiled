contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address stor1;
mapping of uint8 stor2;

function sub_4bb77d68(?) {
    return bool(uint8(stor1.field_160))
}

function owner() {
    return owner
}

function serverAddressList(address arg1) {
    return bool(stor2[arg1])
}

function _fallback() payable {
  stop
}

function setCFO(address arg1) {
    require msg.sender == owner
    address(stor1.field_0) = arg1
}

function setEnable(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function addServerAddress(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 1
    emit AddServerAddress(arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeServerAddress(address arg1) {
    require msg.sender == owner
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
    emit RemoveServerAddress(arg1);
}

function withDrawBalance(uint256 arg1) {
    require msg.sender == address(stor1.field_0)
    require eth.balance(this.address) >= arg1
    call address(stor1.field_0) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sendEther(address arg1, uint256 arg2) {
    require stor2[address(msg.sender)]
    if bool(uint8(stor1.field_160)) != 1:
        revert with 0, 'service has been paused'
    require eth.balance(this.address) >= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x42694392: arg2, arg1, uint64(block.timestamp)
}

function sendToken(address arg1, address arg2, uint256 arg3) {
    require stor2[address(msg.sender)]
    if bool(uint8(stor1.field_160)) != 1:
        revert with 0, 'service has been paused'
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
    emit 0x3dcf31b6: arg3, arg2, uint64(block.timestamp)
}



}
