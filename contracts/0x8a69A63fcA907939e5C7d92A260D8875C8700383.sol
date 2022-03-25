contract main {


// =======================  Init code  ======================


uint128 stor3;

function _fallback() payable {
    stor3 = Mask(96, 160, sha3(this.address, block.hash(block.number - 1))) >> 160
    require ext_code.size(code.data[6664 len 20])
    call code.data[6664 len 20].0xc5f310c0 with:
         gas gas_remaining - 50 wei
        args Mask(96, 160, sha3(this.address, block.hash(block.number - 1)))
    require ext_call.success
    return code.data[217 len 6435]
}



// =====================  Runtime code  =====================


mapping of struct flags;
mapping of uint256 stor1;
mapping of uint8 stor2;
uint128 contractId;

function getFlags(bytes20 arg1) {
    require flags[Mask(160, 96, arg1)].field_64
    require flags[Mask(160, 96, arg1)].field_64 != test266151307()
    return Mask(32, 224, flags[Mask(160, 96, arg1)].field_0)
}

function getRevisionCount(bytes20 arg1) {
    require flags[Mask(160, 96, arg1)].field_64
    require flags[Mask(160, 96, arg1)].field_64 != test266151307()
    return flags[Mask(160, 96, arg1)].field_32
}

function getContractId() {
    return Mask(96, 160, contractId)
}

function getOwner(bytes20 arg1) {
    require flags[Mask(160, 96, arg1)].field_64
    require flags[Mask(160, 96, arg1)].field_64 != test266151307()
    return flags[Mask(160, 96, arg1)].field_96
}

function _fallback() payable {
    revert 
}

function transferEnable(bytes20 arg1) {
    require Mask(1, 227, flags[Mask(160, 96, arg1)].field_0)
    stor2[Mask(160, 96, arg1)][address(msg.sender)] = 1
}

function transferDisable(bytes20 arg1) {
    require stor2[Mask(160, 96, arg1)][address(msg.sender)]
    stor2[Mask(160, 96, arg1)][address(msg.sender)] = 0
}

function getExists(bytes20 arg1) {
    if not flags[Mask(160, 96, arg1)].field_64:
        return bool(flags[Mask(160, 96, arg1)].field_64)
    return flags[Mask(160, 96, arg1)].field_64 != test266151307()
}

function getUpdatable(bytes20 arg1) {
    require flags[Mask(160, 96, arg1)].field_64
    require flags[Mask(160, 96, arg1)].field_64 != test266151307()
    return bool(Mask(1, 224, flags[Mask(160, 96, arg1)].field_0))
}

function getRetractable(bytes20 arg1) {
    require flags[Mask(160, 96, arg1)].field_64
    require flags[Mask(160, 96, arg1)].field_64 != test266151307()
    return bool(Mask(1, 226, flags[Mask(160, 96, arg1)].field_0))
}

function getTransferable(bytes20 arg1) {
    require flags[Mask(160, 96, arg1)].field_64
    require flags[Mask(160, 96, arg1)].field_64 != test266151307()
    return bool(Mask(1, 227, flags[Mask(160, 96, arg1)].field_0))
}

function getEnforceRevisions(bytes20 arg1) {
    require flags[Mask(160, 96, arg1)].field_64
    require flags[Mask(160, 96, arg1)].field_64 != test266151307()
    return bool(Mask(1, 225, flags[Mask(160, 96, arg1)].field_0))
}

function disown(bytes20 arg1) {
    require msg.sender == flags[Mask(160, 96, arg1)].field_96
    require Mask(1, 227, flags[Mask(160, 96, arg1)].field_0)
    flags[Mask(160, 96, arg1)].field_0 = flags[Mask(160, 96, arg1)].field_0
    emit Disown(Mask(160, 96, arg1));
}

function setNotUpdatable(bytes20 arg1) {
    require msg.sender == flags[Mask(160, 96, arg1)].field_96
    flags[Mask(160, 96, arg1)].field_0 = 0
    flags[Mask(160, 96, arg1)].field_256 = 0
    flags[Mask(160, 96, arg1)].field_256 = 0
    emit SetNotUpdatable(Mask(160, 96, arg1));
}

function setNotRetractable(bytes20 arg1) {
    require msg.sender == flags[Mask(160, 96, arg1)].field_96
    flags[Mask(160, 96, arg1)].field_0 = 0
    flags[Mask(160, 96, arg1)].field_256 = 0
    flags[Mask(160, 96, arg1)].field_256 = 0
    emit SetNotRetractable(Mask(160, 96, arg1));
}

function setEnforceRevisions(bytes20 arg1) {
    require msg.sender == flags[Mask(160, 96, arg1)].field_96
    flags[Mask(160, 96, arg1)].field_0 = 2
    flags[Mask(160, 96, arg1)].field_8 = 0
    flags[Mask(160, 96, arg1)].field_256 = 0
    emit SetEnforceRevisions(Mask(160, 96, arg1));
}

function setNotTransferable(bytes20 arg1) {
    require msg.sender == flags[Mask(160, 96, arg1)].field_96
    flags[Mask(160, 96, arg1)].field_0 = 0
    flags[Mask(160, 96, arg1)].field_256 = 0
    flags[Mask(160, 96, arg1)].field_256 = 0
    emit SetNotTransferable(Mask(160, 96, arg1));
}

function getRevisionBlockNumber(bytes20 arg1, uint256 arg2) {
    require arg2 < flags[Mask(160, 96, arg1)].field_32
    if not arg2:
        return flags[Mask(160, 96, arg1)].field_64
    require 2^(32 * arg2 - 1 % 8)
    return uint32(stor1[Mask(160, 96, arg1)][Mask(253, 3, arg2 - 1)] / 2^(32 * arg2 - 1 % 8))
}

function transfer(bytes20 arg1, address arg2) {
    require msg.sender == flags[Mask(160, 96, arg1)].field_96
    require Mask(1, 227, flags[Mask(160, 96, arg1)].field_0)
    require stor2[Mask(160, 96, arg1)][address(arg2)]
    flags[Mask(160, 96, arg1)].field_96 = arg2
    stor2[Mask(160, 96, arg1)][address(arg2)] = 0
    emit Transfer(arg2, Mask(160, 96, arg1));
}

function retractLatestRevision(bytes20 arg1) {
    require msg.sender == flags[Mask(160, 96, arg1)].field_96
    require Mask(1, 224, flags[Mask(160, 96, arg1)].field_0)
    require not Mask(1, 225, flags[Mask(160, 96, arg1)].field_0)
    require flags[Mask(160, 96, arg1)].field_32 != 1
    flags[Mask(160, 96, arg1)].field_32 = Mask(224, 0, flags[Mask(160, 96, arg1)].field_32 - 1)
    if 1 == flags[Mask(160, 96, arg1)].field_32 - 1 % 8:
        stor1[Mask(160, 96, arg1)][Mask(29, 3, stor0[Mask(160, 96, arg1)].field_32 - 1) << 224] = 0
    emit RetractRevision(uint32(flags[Mask(160, 96, arg1)].field_32 - 1), Mask(160, 96, arg1));
}

function retract(bytes20 arg1) {
    require msg.sender == flags[Mask(160, 96, arg1)].field_96
    require Mask(1, 226, flags[Mask(160, 96, arg1)].field_0)
    idx = 0
    while idx < uint32(flags[Mask(160, 96, arg1)].field_32 + 6) / 8:
        mem[0] = idx
        mem[32] = sha3(Mask(160, 96, arg1), 1)
        stor1[Mask(160, 96, arg1)][idx] = 0
        idx = idx + 1
        continue 
    flags[Mask(160, 96, arg1)].field_0 = 0
    flags[Mask(160, 96, arg1)].field_64 = test266151307()
    flags[Mask(160, 96, arg1)].field_96 = 0
    flags[Mask(160, 96, arg1)].field_256 = 0
    flags[Mask(160, 96, arg1)].field_256 = 0
    flags[Mask(160, 96, arg1)].field_256 = 0
    emit Retract(Mask(160, 96, arg1));
}

function createNewRevision(bytes20 arg1, bytes arg2) {
    require msg.sender == flags[Mask(160, 96, arg1)].field_96
    require Mask(1, 224, flags[Mask(160, 96, arg1)].field_0)
    flags[Mask(160, 96, arg1)].field_32 = Mask(224, 0, flags[Mask(160, 96, arg1)].field_32 + 1)
    stor1[Mask(160, 96, arg1)][Mask(253, 3, stor0[Mask(160, 96, arg1)].field_32 - 1)] = uint32(block.number) * 2^(32 * flags[Mask(160, 96, arg1)].field_32 - 1 % 8) or stor1[Mask(160, 96, arg1)][Mask(253, 3, stor0[Mask(160, 96, arg1)].field_32 - 1)] and !(test266151307() * 2^(32 * flags[Mask(160, 96, arg1)].field_32 - 1 % 8))
    emit 0x56fd5eee: Array(len=arg2.length, data=arg2[all]), Mask(160, 96, arg1), flags[Mask(160, 96, arg1)].field_32
    return flags[Mask(160, 96, arg1)].field_32
}

function restart(bytes20 arg1, bytes arg2) {
    require msg.sender == flags[Mask(160, 96, arg1)].field_96
    require Mask(1, 224, flags[Mask(160, 96, arg1)].field_0)
    require not Mask(1, 225, flags[Mask(160, 96, arg1)].field_0)
    idx = 0
    while idx < uint32(flags[Mask(160, 96, arg1)].field_32 + 6) / 8:
        mem[0] = idx
        mem[32] = sha3(Mask(160, 96, arg1), 1)
        stor1[Mask(160, 96, arg1)][idx] = 0
        idx = idx + 1
        continue 
    flags[Mask(160, 96, arg1)].field_32 = 1
    flags[Mask(160, 96, arg1)].field_40 = 0
    flags[Mask(160, 96, arg1)].field_64 = Mask(192, 0, block.number)
    flags[Mask(160, 96, arg1)].field_96 = 0
    flags[Mask(160, 96, arg1)].field_256 = 0
    emit 0x56fd5eee: Array(len=arg2.length, data=arg2[all]), Mask(160, 96, arg1), 0
}

function updateLatestRevision(bytes20 arg1, bytes arg2) {
    require msg.sender == flags[Mask(160, 96, arg1)].field_96
    require Mask(1, 224, flags[Mask(160, 96, arg1)].field_0)
    require not Mask(1, 225, flags[Mask(160, 96, arg1)].field_0)
    if uint32(flags[Mask(160, 96, arg1)].field_32 - 1):
        stor1[Mask(160, 96, arg1)][Mask(253, 3, uint32(stor0[Mask(160, 96, arg1)].field_32 - 1) - 1)] = uint32(block.number) * 2^(32 * uint32(flags[Mask(160, 96, arg1)].field_32 - 1) - 1 % 8) or stor1[Mask(160, 96, arg1)][Mask(253, 3, uint32(stor0[Mask(160, 96, arg1)].field_32 - 1) - 1)] and !(test266151307() * 2^(32 * uint32(flags[Mask(160, 96, arg1)].field_32 - 1) - 1 % 8))
    else:
        flags[Mask(160, 96, arg1)].field_64 = Mask(192, 0, block.number)
    emit 0x56fd5eee: Array(len=arg2.length, data=arg2[all]), Mask(160, 96, arg1), uint32(flags[Mask(160, 96, arg1)].field_32 - 1)
}

function create(bytes4 arg1, bytes arg2) {
    mem[96] = address(msg.sender)
    mem[116] = block.hash(block.number - 1)
    s = sha3(mem[96 len 52])
    while flags[Mask(160, 96, ('map', 'msg.sender', ('blockhash', ('add', -1, 'number'))))].field_64:
        mem[96] = Mask(160, 96, s)
        mem[0] = Mask(160, 96, sha3(Mask(160, 96, s) >> 96))
        mem[32] = 0
        s = sha3(Mask(160, 96, s) >> 96)
        continue 
    flags[Mask(160, 96, s)].field_0 = arg1
    flags[Mask(160, 96, s)].field_32 = 1
    flags[Mask(160, 96, s)].field_40 = 0
    flags[Mask(160, 96, s)].field_64 = uint32(block.number)
    if not Mask(1, 228, arg1):
        flags[Mask(160, 96, s)].field_96 = msg.sender
    else:
        flags[Mask(160, 96, s)].field_96 = 0
        flags[Mask(160, 96, s)].field_256 = 0
    emit 0x56fd5eee: Array(len=arg2.length, data=arg2[all]), Mask(160, 96, s), 0
    return Mask(160, 96, s)
}

function getAllRevisionBlockNumbers(bytes20 arg1) {
    require flags[Mask(160, 96, arg1)].field_64
    require flags[Mask(160, 96, arg1)].field_64 != test266151307()
    idx = 0
    while idx < flags[Mask(160, 96, arg1)].field_32:
        if not idx:
            mem[0] = Mask(160, 96, arg1)
            mem[32] = 0
            require idx < flags[Mask(160, 96, arg1)].field_32
            mem[(32 * idx) + 192] = flags[Mask(160, 96, arg1)].field_64
        else:
            mem[0] = idx - 1 / 8
            mem[32] = sha3(Mask(160, 96, arg1), 1)
            require 2^(32 * idx - 1 % 8)
            require idx < flags[Mask(160, 96, arg1)].field_32
            mem[(32 * idx) + 192] = uint32(stor1[Mask(160, 96, arg1)][Mask(253, 3, idx - 1)] / 2^(32 * idx - 1 % 8))
        idx = idx + 1
        continue 
    return Array(len=flags[Mask(160, 96, arg1)].field_0, data=mem[192 len 32 * flags[Mask(160, 96, arg1)].field_32])
}

function createWithNonce(bytes32 arg1, bytes arg2) {
    require not flags[Mask(160, 96, ('map', 'msg.sender', ('param', 'arg1')))].field_64
    flags[Mask(160, 96, ('map', 'msg.sender', ('param', 'arg1')))].field_0 = uint32(arg1)
    flags[Mask(160, 96, ('map', 'msg.sender', ('param', 'arg1')))].field_32 = 1
    flags[Mask(160, 96, ('map', 'msg.sender', ('param', 'arg1')))].field_40 = 0
    flags[Mask(160, 96, ('map', 'msg.sender', ('param', 'arg1')))].field_64 = uint32(block.number)
    if not Mask(1, 228, arg1):
        flags[Mask(160, 96, ('map', 'msg.sender', ('param', 'arg1')))].field_96 = msg.sender
    else:
        flags[Mask(160, 96, ('map', 'msg.sender', ('param', 'arg1')))].field_96 = 0
        flags[Mask(160, 96, ('map', 'msg.sender', ('param', 'arg1')))].field_256 = 0
    emit 0x56fd5eee: Array(len=arg2.length, data=arg2[all]), Mask(160, 96, sha3(msg.sender, arg1)), 0
    return Mask(160, 96, sha3(msg.sender, arg1))
}

function getInfo(bytes20 arg1) {
    require flags[Mask(160, 96, arg1)].field_64
    require flags[Mask(160, 96, arg1)].field_64 != test266151307()
    idx = 0
    while idx < flags[Mask(160, 96, arg1)].field_32:
        if not idx:
            mem[0] = Mask(160, 96, arg1)
            mem[32] = 0
            require idx < flags[Mask(160, 96, arg1)].field_32
            mem[(32 * idx) + 192] = flags[Mask(160, 96, arg1)].field_64
        else:
            mem[0] = idx - 1 / 8
            mem[32] = sha3(Mask(160, 96, arg1), 1)
            require 2^(32 * idx - 1 % 8)
            require idx < flags[Mask(160, 96, arg1)].field_32
            mem[(32 * idx) + 192] = uint32(stor1[Mask(160, 96, arg1)][Mask(253, 3, idx - 1)] / 2^(32 * idx - 1 % 8))
        idx = idx + 1
        continue 
    return Mask(32, 224, flags[Mask(160, 96, arg1)].field_0), 
           flags[Mask(160, 96, arg1)].field_0,
           flags[Mask(160, 96, arg1)].field_0,
           Array(len=flags[Mask(160, 96, arg1)].field_0, data=mem[192 len 32 * flags[Mask(160, 96, arg1)].field_32])
}



}
