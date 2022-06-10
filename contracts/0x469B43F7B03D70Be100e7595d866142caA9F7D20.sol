contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;

function owner() {
    return owner
}

function destroyLogicContract() {
    require msg.sender == owner
    selfdestruct(0xd135377eb20666725d518c967f23e168045ee11f)
}

function _fallback() payable {
    revert
}

function getBalanceOfLogicContract() {
    require msg.sender == owner
    return eth.balance(this.address)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getShipPriceById(uint256 arg1) {
    require ext_code.size(stor1)
    call stor1.0x6974c632 with:
         gas gas_remaining wei
        args 0, 64, arg1, 5, 'ships'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNumberOfShipsByOwner() {
    require ext_code.size(stor1)
    call stor1.0x1a67456e with:
         gas gas_remaining wei
        args 0, 64, msg.sender, 4, 'ship'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getOwnerByShipId(uint256 arg1) {
    require ext_code.size(stor1)
    call stor1.0x71752d06 with:
         gas gas_remaining wei
        args 0, 64, arg1, 4, 'ship'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function checkRefundExistanceByOwner() {
    require msg.sender
    require ext_code.size(stor1)
    call stor1.0x294a6511 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setNewPriceToItem(string arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0x49f307a6 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all]), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPayOut() {
    require msg.sender == owner
    if msg.sender:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    else:
        return 0
}

function getShipsIds() {
    mem[96] = 0x223ff4cc00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2)
    call stor2.0x223ff4cc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function getUsersShipsIds() {
    mem[96] = 0xf726504200000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2)
    call stor2.0xf7265042 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function withdrawRefund() {
    require msg.sender
    require ext_code.size(stor1)
    call stor1.0x294a6511 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if eth.balance(this.address) > ext_call.return_data[0]:
            require ext_call.return_data[0] <= eth.balance(this.address)
            if eth.balance(this.address) - ext_call.return_data[0] > 0:
                require ext_code.size(stor1)
                call stor1.0xe185a890 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call msg.sender with:
                   value ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function getShipIdsByOwner() {
    mem[96] = 0x5b633cf200000000000000000000000000000000000000000000000000000000
    mem[132] = msg.sender
    mem[100] = 64
    mem[164] = 8
    mem[196] = 'ship_ids'
    require ext_code.size(stor1)
    call stor1.0x5b633cf2 with:
         gas gas_remaining wei
        args 0, 64, msg.sender, 8, 'ship_ids'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function getShipsByOwner() {
    mem[96] = 0xc91e4cc800000000000000000000000000000000000000000000000000000000
    mem[132] = msg.sender
    mem[100] = 64
    mem[164] = 10
    mem[196] = 'ship_types'
    require ext_code.size(stor1)
    call stor1.0xc91e4cc8 with:
         gas gas_remaining wei
        args 0, 64, msg.sender, 10, 'ship_types'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function buyShip(uint256 arg1, address arg2) payable {
    require msg.sender
    require ext_code.size(stor1)
    call stor1.0x6974c632 with:
         gas gas_remaining wei
        args 0, 64, arg1, 5, 'ships'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value == ext_call.return_data[0]
    if arg2:
        if arg2 != msg.sender:
            if ext_call.return_data[0] > 0:
                if ext_call.return_data[0] / 10 < ext_call.return_data[0]:
                    require ext_code.size(stor1)
                    call stor1.0x76775c10 with:
                         gas gas_remaining wei
                        args address(arg2), ext_call.return_data[0] / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x160dc0ac with:
         gas gas_remaining wei
        args 0, uint32(arg1), msg.sender, 160, 224, 288, 4, 'ship', 10, 'ship_types', 8, 'ship_ids'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit ShipWasBought(ext_call.return_data[0]);
}

function getShipById(uint256 arg1) {
    mem[96] = 0xe955980300000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor1)
    call stor1.0xe9559803 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 160
    _5 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + mem[uint32(arg1), mem[132 len 28] + 96] + 32 <= return_data.size
    _7 = mem[160]
    _8 = mem[192]
    _9 = mem[224]
    mem[ceil32(return_data.size) + 96] = mem[96 len 4], Mask(224, 32, arg1) >> 32
    mem[ceil32(return_data.size) + 160] = _7
    mem[ceil32(return_data.size) + 192] = _8
    mem[ceil32(return_data.size) + 224] = _9
    mem[ceil32(return_data.size) + 128] = 160
    mem[ceil32(return_data.size) + 256] = mem[_5 + 96]
    _12 = mem[_5 + 96]
    mem[ceil32(return_data.size) + 288 len ceil32(mem[_5 + 96])] = mem[_5 + 128 len ceil32(mem[_5 + 96])]
    if not _12 % 32:
        return mem[ceil32(return_data.size) + 96], 160, _7, _8, _9, mem[ceil32(return_data.size) + 256 len _12 + 32]
    mem[floor32(_12) + ceil32(return_data.size) + 288] = mem[floor32(_12) + ceil32(return_data.size) + -(_12 % 32) + 320 len _12 % 32]
    return mem[ceil32(return_data.size) + 96], 160, _7, _8, _9, mem[ceil32(return_data.size) + 256 len floor32(_12) + 64]
}



}
