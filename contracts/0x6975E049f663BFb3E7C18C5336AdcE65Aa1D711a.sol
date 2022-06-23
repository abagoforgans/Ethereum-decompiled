contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
uint8 stor3;
array of uint256 sub_4f865e9b;
address sub_b777171eAddress;

function isPauser(address arg1) {
    require arg1
    return bool(stor2[address(arg1)])
}

function sub_4f865e9b(?) {
    require arg2 < sub_4f865e9b[arg1]
    return sub_4f865e9b[arg1][arg2]
}

function paused() {
    return bool(stor3)
}

function isSigner(address arg1) {
    require arg1
    return bool(stor1[address(arg1)])
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

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() {
    require msg.sender
    require stor2[address(msg.sender)]
    require stor3
    stor3 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor2[address(msg.sender)]
    require not stor3
    stor3 = 1
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
    require stor2[address(msg.sender)]
    stor2[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceSigner() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit SignerRemoved(msg.sender);
}

function addPauser(address arg1) {
    require msg.sender
    require stor2[address(msg.sender)]
    require arg1
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addSigner(address arg1) {
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit SignerAdded(arg1);
}

function sub_95d304b2(?) {
    require ext_code.size(sub_b777171eAddress)
    call sub_b777171eAddress.getSupplyLimit(uint16 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_4f865e9b[arg1 << 240] >= uint16(ext_call.return_data[0]):
        revert with 0, 'supply limit reached'
    if not arg1:
        require sub_4f865e9b[arg1 << 240] >= 0
        require sub_4f865e9b[arg1 << 240] + 1 >= sub_4f865e9b[arg1 << 240]
        return (sub_4f865e9b[arg1 << 240] + 1)
    require arg1
    require 10000 * arg1 / arg1 == 10000
    require (10000 * arg1) + sub_4f865e9b[arg1 << 240] >= 10000 * arg1
    return ((10000 * arg1) + sub_4f865e9b[arg1 << 240] + 1)
}

function sub_f8b47ea4(?) {
    require msg.sender
    require stor1[address(msg.sender)]
    require ext_code.size(sub_b777171eAddress)
    call sub_b777171eAddress.getSupplyLimit(uint16 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_4f865e9b[arg1 << 240] >= uint16(ext_call.return_data[0]):
        revert with 0, 'supply limit reached'
    if not arg1:
        require sub_4f865e9b[arg1 << 240] >= 0
        require sub_4f865e9b[arg1 << 240] + 1 >= sub_4f865e9b[arg1 << 240]
        sub_4f865e9b[arg1 << 240]++
        sub_4f865e9b[arg1 << 240][sub_4f865e9b[arg1 << 240]] = sub_4f865e9b[arg1 << 240] + 1
    else:
        require arg1
        require 10000 * arg1 / arg1 == 10000
        require (10000 * arg1) + sub_4f865e9b[arg1 << 240] >= 10000 * arg1
        sub_4f865e9b[arg1 << 240]++
        sub_4f865e9b[arg1 << 240][sub_4f865e9b[arg1 << 240]] = (10000 * arg1) + sub_4f865e9b[arg1 << 240] + 1
}

function sub_583f4f36(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    mem[96] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_b777171eAddress)
    call sub_b777171eAddress.mem[var37004 len 4] with:
         gas gas_remaining wei
        args mem[var37004 + 4 len var37005 - 4]
    mem[var37006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint32(var41004) >= mem[var41002]:
    mem[96] = 0x4f6ccce700000000000000000000000000000000000000000000000000000000
    mem[100] = uint32(var43002)
    require ext_code.size(sub_b777171eAddress)
    call sub_b777171eAddress.mem[var45004 len 4] with:
         gas gas_remaining wei
        args mem[var45004 + 4 len var45005 - 4]
    mem[var45006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = uint16(var57001)
    mem[32] = 5
    mem[96] = 0x8450b12e00000000000000000000000000000000000000000000000000000000
    mem[100] = uint16(var59001)
    require ext_code.size(sub_b777171eAddress)
    call sub_b777171eAddress.mem[var61004 len 4] with:
         gas gas_remaining wei
        args mem[var61004 + 4 len var61005 - 4]
    mem[var61006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_4f865e9b[var65004 << 240] >= mem[var65002 + 30 len 2]:
        revert with 0, 'supply limit reached'
    if not var69002:
        # nil
    else:
        require var73004
        # nil
}



}
