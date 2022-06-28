contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
uint256 stor3;
address sub_b777171eAddress;
address sub_2de9b2d5Address;

function sub_2de9b2d5(?) {
    return sub_2de9b2d5Address
}

function isPauser(address arg1) {
    require arg1
    return bool(stor1[address(arg1)])
}

function paused() {
    return bool(stor2)
}

function owner() {
    return owner
}

function sub_b777171e(?) {
    return sub_b777171eAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_82bd2cbf(?) {
    require msg.sender == owner
    sub_b777171eAddress = arg1
}

function sub_f17af0e7(?) {
    require msg.sender == owner
    sub_2de9b2d5Address = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require stor2
    stor2 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require not stor2
    stor2 = 1
    emit Paused(msg.sender);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renouncePauser() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function addPauser(address arg1) {
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function withdrawEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function purchase(uint16 arg1) payable {
    require not stor2
    stor3++
    if msg.value < 2 * 10^17:
        revert with 0, 'value is less than the price'
    require ext_code.size(sub_2de9b2d5Address)
    call sub_2de9b2d5Address.0x95d304b2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'no more available talismanId for this talismanType'
    require ext_code.size(sub_2de9b2d5Address)
    call sub_2de9b2d5Address.0x95d304b2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_b777171eAddress)
    call sub_b777171eAddress.0xdb098ead with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_2de9b2d5Address)
    call sub_2de9b2d5Address.0xf8b47ea4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value > 2 * 10^17:
        require 2 * 10^17 <= msg.value
        call msg.sender with:
           value msg.value - 2 * 10^17 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xc5d07e3d: block.timestamp << 192, msg.sender, arg1
    require stor3 == stor3
}



}
