contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;

function sub_4bb77d68(?) {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function serverAddressList(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
  stop
}

function setEnable(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function addServerAddress(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
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
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit RemoveServerAddress(arg1);
}

function sendEther(address arg1, uint256 arg2) {
    require stor1[address(msg.sender)]
    if bool(uint8(stor0.field_160)) != 1:
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
    require stor1[address(msg.sender)]
    if bool(uint8(stor0.field_160)) != 1:
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
