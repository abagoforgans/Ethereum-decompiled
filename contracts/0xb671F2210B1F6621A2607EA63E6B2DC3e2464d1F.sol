contract main {




// =====================  Runtime code  =====================


const MAX_VESTING_ENTRIES = 260


address owner;
array of uint256 stor1;
address synthetixAddress;
address feePoolAddress;
mapping of uint256 totalEscrowedAccountBalance;
mapping of uint256 totalVestedAccountBalance;
uint256 totalEscrowedBalance;

function numVestingEntries(address arg1) {
    return uint256(numVestingEntries[address(arg1)].field_0)
}

function totalVestedAccountBalance(address arg1) {
    return totalVestedAccountBalance[arg1]
}

function totalEscrowedAccountBalance(address arg1) {
    return totalEscrowedAccountBalance[arg1]
}

function vestingSchedules(address arg1, uint256 arg2, uint256 arg3) {
    require arg2 < uint256(numVestingEntries[arg1].field_0)
    require arg3 < 2
    return uint256(stor[arg3 + (2 * arg2) + ('map', ('param', 'arg1'), ('name', 'numVestingEntries', 4))].field_0)
}

function nominatedOwner() {
    return address(stor1.length)
}

function balanceOf(address arg1) {
    return totalEscrowedAccountBalance[address(arg1)]
}

function totalEscrowedBalance() {
    return totalEscrowedBalance
}

function synthetix() {
    return synthetixAddress
}

function owner() {
    return owner
}

function getVestingTime(address arg1, uint256 arg2) {
    require arg2 < uint256(numVestingEntries[address(arg1)].field_0)
    idx = 160
    s = 2 * arg2
    while 224 > idx + 32:
        mem[idx + 32] = uint256(numVestingEntries[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return uint256(numVestingEntries[address(arg1)][arg2].field_0)
}

function feePool() {
    return feePoolAddress
}

function _fallback() payable {
    revert
}

function setFeePool(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    feePoolAddress = arg1
    emit FeePoolUpdated(arg1);
}

function setSynthetix(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    synthetixAddress = arg1
    emit SynthetixUpdated(arg1);
}

function nominateNewOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    address(stor1.length) = arg1
    emit OwnerNominated(arg1);
}

function acceptOwnership() {
    if address(stor1.length) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be nominated before you can accept ownership'
    emit OwnerChanged(owner, address(stor1.length));
    owner = address(stor1.length)
    address(stor1.length) = 0
}

function getVestingQuantity(address arg1, uint256 arg2) {
    require arg2 < uint256(numVestingEntries[address(arg1)].field_0)
    idx = 160
    s = 2 * arg2
    while 224 > idx + 32:
        mem[idx + 32] = uint256(numVestingEntries[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return memory
      from 192
       len 32
}

function getVestingScheduleEntry(address arg1, uint256 arg2) {
    require arg2 < uint256(numVestingEntries[address(arg1)].field_0)
    idx = 160
    s = 2 * arg2
    while 224 > idx + 32:
        mem[idx + 32] = uint256(numVestingEntries[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return uint256(numVestingEntries[address(arg1)][arg2].field_0), mem[192]
}

function getNextVestingIndex(address arg1) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < uint256(numVestingEntries[address(arg1)].field_0):
        _13 = mem[64]
        mem[64] = mem[64] + 64
        mem[_13 len 64] = code.data[4901 len 64]
        mem[32] = 4
        require idx < uint256(numVestingEntries[address(arg1)].field_0)
        mem[0] = sha3(address(arg1), 4)
        _16 = mem[64]
        mem[64] = mem[64] + 64
        mem[_16] = uint256(numVestingEntries[address(arg1)][idx].field_0)
        s = _16
        t = sha3(sha3(address(arg1), 4)) + (2 * idx)
        while _16 + 64 > s + 32:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        if not uint256(numVestingEntries[address(arg1)][idx].field_0):
            idx = idx + 1
            continue 
        return idx
    return uint256(numVestingEntries[address(arg1)].field_0)
}

function checkAccountSchedule(address arg1) {
    mem[96 len 16640] = code.data[4901 len 16640]
    mem[16736 len 16640] = code.data[4901 len 16640]
    mem[64] = 33440
    mem[33376 len 64] = code.data[4901 len 64]
    mem[0] = arg1
    mem[32] = 4
    s = 33376
    idx = 0
    while idx < uint256(numVestingEntries[address(arg1)].field_0):
        _16 = mem[64]
        mem[64] = mem[64] + 64
        mem[_16 len 64] = code.data[4901 len 64]
        mem[32] = 4
        require idx < uint256(numVestingEntries[address(arg1)].field_0)
        mem[0] = sha3(address(arg1), 4)
        _20 = mem[64]
        mem[64] = mem[64] + 64
        mem[_20] = uint256(numVestingEntries[address(arg1)][idx].field_0)
        s = _20
        t = sha3(sha3(address(arg1), 4)) + (2 * idx)
        while _20 + 64 > s + 32:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        require 2 * idx < 520
        mem[(64 * idx) + 16736] = uint256(numVestingEntries[address(arg1)][idx].field_0)
        require (2 * idx) + 1 < 520
        mem[(32 * (2 * idx) + 1) + 16736] = mem[_20 + 32]
        s = _20
        idx = idx + 1
        continue 
    mem[mem[64]] = mem[16736]
    mem[mem[64] + 32 len 16608] = mem[16768 len 16608]
    return memory
      from mem[64]
       len 16640
}

function getNextVestingTime(address arg1) {
    mem[64] = 160
    idx = 0
    while idx < uint256(numVestingEntries[address(arg1)].field_0):
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33 len 64] = code.data[4901 len 64]
        mem[32] = 4
        require idx < uint256(numVestingEntries[address(arg1)].field_0)
        mem[0] = sha3(address(arg1), 4)
        _37 = mem[64]
        mem[64] = mem[64] + 64
        mem[_37] = uint256(numVestingEntries[address(arg1)][idx].field_0)
        s = _37
        t = sha3(sha3(address(arg1), 4)) + (2 * idx)
        while _37 + 64 > s + 32:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        if not uint256(numVestingEntries[address(arg1)][idx].field_0):
            idx = idx + 1
            continue 
        mem[0] = arg1
        if idx == uint256(numVestingEntries[address(arg1)].field_0):
            return 0
        _67 = mem[64]
        mem[64] = mem[64] + 64
        mem[_67 len 64] = code.data[4901 len 64]
        require idx < uint256(numVestingEntries[address(arg1)].field_0)
        s = mem[64]
        t = sha3(sha3(address(arg1), 4)) + (2 * idx)
        while mem[64] + 64 > s + 32:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        return uint256(numVestingEntries[address(arg1)][idx].field_0)
    mem[0] = arg1
    if uint256(numVestingEntries[address(arg1)].field_0) == uint256(numVestingEntries[address(arg1)].field_0):
        return 0
    _38 = mem[64]
    mem[64] = mem[64] + 64
    mem[_38 len 64] = code.data[4901 len 64]
    require uint256(numVestingEntries[address(arg1)].field_0) < uint256(numVestingEntries[address(arg1)].field_0)
    s = mem[64]
    t = 2 * uint256(numVestingEntries[address(arg1)].field_0)
    while mem[64] + 64 > s + 32:
        mem[s + 32] = uint256(numVestingEntries[address(arg1)][t].field_256)
        s = s + 32
        t = t + 1
        continue 
    return uint256(numVestingEntries[address(arg1)][uint256(numVestingEntries[address(arg1)].field_0)].field_0)
}

function vest() payable {
    mem[64] = 96
    require not msg.value
    mem[0] = msg.sender
    mem[32] = 4
    s = 0
    s = 0
    idx = 0
    while idx < uint256(numVestingEntries[address(msg.sender)].field_0):
        _16 = mem[64]
        mem[64] = mem[64] + 64
        mem[_16 len 64] = code.data[4901 len 64]
        require idx < uint256(numVestingEntries[address(msg.sender)].field_0)
        mem[0] = sha3(address(msg.sender), 4)
        _19 = mem[64]
        mem[64] = mem[64] + 64
        mem[_19] = uint256(numVestingEntries[address(msg.sender)][idx].field_0)
        s = _19
        t = sha3(sha3(address(msg.sender), 4)) + (2 * idx)
        while _19 + 64 > s + 32:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        if uint256(numVestingEntries[address(msg.sender)][idx].field_0) > block.timestamp:
        _31 = mem[64]
        mem[64] = mem[64] + 64
        mem[_31 len 64] = code.data[4901 len 64]
        mem[32] = 4
        require idx < uint256(numVestingEntries[address(msg.sender)].field_0)
        mem[0] = sha3(address(msg.sender), 4)
        _34 = mem[64]
        mem[64] = mem[64] + 64
        mem[_34] = uint256(numVestingEntries[address(msg.sender)][idx].field_0)
        s = _34
        t = sha3(sha3(address(msg.sender), 4)) + (2 * idx)
        while _34 + 64 > s + 32:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        _40 = mem[_34 + 32]
        if not mem[_34 + 32]:
            s = mem[_34 + 32]
            s = uint256(numVestingEntries[address(msg.sender)][idx].field_0)
            idx = idx + 1
            continue 
        _41 = mem[64]
        mem[64] = mem[64] + 64
        mem[_41] = 0
        mem[_41 + 32] = 0
        mem[32] = 4
        require idx < uint256(numVestingEntries[msg.sender].field_0)
        mem[0] = sha3(msg.sender, 4)
        t = (2 * idx) + sha3(sha3(msg.sender, 4))
        s = _41
        while _41 + 64 > s:
            uint8(stor[t].field_0) = mem[s + 31 len 1]
            Mask(248, 0, stor[t].field_8) = 0
            t = t + 1
            s = s + 32
            continue 
        s = (2 * idx) + sha3(sha3(msg.sender, 4)) + 2
        while (2 * idx) + sha3(sha3(msg.sender, 4)) + 2 > s:
            uint256(stor[s].field_0) = 0
            s = s + 1
            continue 
        require _40 >= 0
        s = _40
        s = uint256(numVestingEntries[address(msg.sender)][idx].field_0)
        idx = idx + 1
        continue 
}

function getNextVestingQuantity(address arg1) {
    mem[64] = 160
    mem[96 len 64] = code.data[4901 len 64]
    mem[0] = arg1
    mem[32] = 4
    idx = 0
    while idx < uint256(numVestingEntries[address(arg1)].field_0):
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33 len 64] = code.data[4901 len 64]
        mem[32] = 4
        require idx < uint256(numVestingEntries[address(arg1)].field_0)
        mem[0] = sha3(address(arg1), 4)
        _37 = mem[64]
        mem[64] = mem[64] + 64
        mem[_37] = uint256(numVestingEntries[address(arg1)][idx].field_0)
        s = _37
        t = sha3(sha3(address(arg1), 4)) + (2 * idx)
        while _37 + 64 > s + 32:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        if not uint256(numVestingEntries[address(arg1)][idx].field_0):
            idx = idx + 1
            continue 
        mem[0] = arg1
        if idx == uint256(numVestingEntries[address(arg1)].field_0):
            return 0
        _67 = mem[64]
        mem[64] = mem[64] + 64
        mem[_67 len 64] = code.data[4901 len 64]
        mem[32] = 4
        require idx < uint256(numVestingEntries[address(arg1)].field_0)
        mem[0] = sha3(address(arg1), 4)
        _71 = mem[64]
        mem[64] = mem[64] + 64
        mem[_71] = uint256(numVestingEntries[address(arg1)][idx].field_0)
        s = _71
        t = sha3(sha3(address(arg1), 4)) + (2 * idx)
        while _71 + 64 > s + 32:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        mem[mem[64]] = mem[_71 + 32]
        return memory
          from mem[64]
           len 32
    mem[0] = arg1
    if uint256(numVestingEntries[address(arg1)].field_0) == uint256(numVestingEntries[address(arg1)].field_0):
        return 0
    _38 = mem[64]
    mem[64] = mem[64] + 64
    mem[_38 len 64] = code.data[4901 len 64]
    mem[32] = 4
    require uint256(numVestingEntries[address(arg1)].field_0) < uint256(numVestingEntries[address(arg1)].field_0)
    mem[0] = sha3(address(arg1), 4)
    _42 = mem[64]
    mem[64] = mem[64] + 64
    mem[_42] = uint256(numVestingEntries[address(arg1)][uint256(numVestingEntries[address(arg1)].field_0)].field_0)
    s = _42
    t = 2 * uint256(numVestingEntries[address(arg1)].field_0)
    while _42 + 64 > s + 32:
        mem[s + 32] = uint256(numVestingEntries[address(arg1)][t].field_256)
        s = s + 32
        t = t + 1
        continue 
    mem[mem[64]] = mem[_42 + 32]
    return memory
      from mem[64]
       len 32
}

function appendVestingEntry(address arg1, uint256 arg2) {
    if feePoolAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the FeePool contracts can perform this action'
    if not arg2:
        revert with 0, 'Quantity cannot be zero'
    require arg2 + totalEscrowedBalance >= totalEscrowedBalance
    totalEscrowedBalance += arg2
    require ext_code.size(synthetixAddress)
    call synthetixAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalEscrowedBalance > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Must be enough balance in the contract to provide for the vesting entry'
    if uint256(numVestingEntries[address(arg1)].field_0) > 260:
        revert with 0, 'Vesting schedule is too long'
    if not uint256(numVestingEntries[address(arg1)].field_0):
        totalEscrowedAccountBalance[address(arg1)] = arg2
        mem[96] = block.timestamp + (8736 * 24 * 3600)
        mem[128] = arg2
        uint256(numVestingEntries[address(arg1)].field_0)++
        s = 2 * uint256(numVestingEntries[address(arg1)].field_0)
        idx = 96
        while 160 > idx:
            uint256(numVestingEntries[address(arg1)][s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
    else:
        require uint256(numVestingEntries[address(arg1)].field_0) - 1 < uint256(numVestingEntries[address(arg1)].field_0)
        idx = 160
        s = 2 * uint256(numVestingEntries[address(arg1)].field_0) - 1
        while 224 > idx + 32:
            mem[idx + 32] = uint256(numVestingEntries[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        if uint256(numVestingEntries[address(arg1)][uint256(numVestingEntries[address(arg1)].field_0) - 1].field_0) >= block.timestamp + (8736 * 24 * 3600):
            revert with 0, 'Cannot add new vested entries earlier than the last one'
        require arg2 + totalEscrowedAccountBalance[address(arg1)] >= totalEscrowedAccountBalance[address(arg1)]
        totalEscrowedAccountBalance[address(arg1)] += arg2
        mem[224] = block.timestamp + (8736 * 24 * 3600)
        mem[256] = arg2
        uint256(numVestingEntries[address(arg1)].field_0)++
        s = 2 * uint256(numVestingEntries[address(arg1)].field_0)
        idx = 224
        while 288 > idx:
            uint256(numVestingEntries[address(arg1)][s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
    idx = (2 * uint256(numVestingEntries[address(arg1)].field_0)) + 2
    while (2 * uint256(numVestingEntries[address(arg1)].field_0)) + 2 > idx:
        uint256(numVestingEntries[address(arg1)][idx].field_0) = 0
        idx = idx + 1
        continue 
    emit VestingEntryCreated(block.timestamp, arg2, arg1);
}

function getNextVestingEntry(address arg1) {
    mem[64] = 160
    mem[96 len 64] = code.data[4901 len 64]
    mem[0] = arg1
    mem[32] = 4
    idx = 0
    while idx < uint256(numVestingEntries[address(arg1)].field_0):
        _29 = mem[64]
        mem[64] = mem[64] + 64
        mem[_29 len 64] = code.data[4901 len 64]
        mem[32] = 4
        require idx < uint256(numVestingEntries[address(arg1)].field_0)
        mem[0] = sha3(address(arg1), 4)
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = uint256(numVestingEntries[address(arg1)][idx].field_0)
        s = _33
        t = sha3(sha3(address(arg1), 4)) + (2 * idx)
        while _33 + 64 > s + 32:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        if not uint256(numVestingEntries[address(arg1)][idx].field_0):
            idx = idx + 1
            continue 
        mem[0] = arg1
        mem[32] = 4
        if idx == uint256(numVestingEntries[address(arg1)].field_0):
            _59 = mem[64]
            mem[64] = mem[64] + 64
            mem[_59] = 0
            mem[_59 + 32] = 0
            _61 = mem[64]
            idx = 0
            while idx < 64:
                mem[idx + _61] = mem[idx + _59]
                idx = idx + 32
                continue 
            return memory
              from mem[64]
               len _61 + -mem[64] + 64
        _60 = mem[64]
        mem[64] = mem[64] + 64
        mem[_60 len 64] = code.data[4901 len 64]
        mem[32] = 4
        require idx < uint256(numVestingEntries[address(arg1)].field_0)
        mem[0] = sha3(address(arg1), 4)
        _64 = mem[64]
        mem[64] = mem[64] + 64
        mem[_64] = uint256(numVestingEntries[address(arg1)][idx].field_0)
        s = _64
        t = sha3(sha3(address(arg1), 4)) + (2 * idx)
        while _64 + 64 > s + 32:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        _72 = mem[64]
        idx = 0
        while idx < 64:
            mem[idx + _72] = mem[idx + _64]
            idx = idx + 32
            continue 
        return memory
          from mem[64]
           len _72 + -mem[64] + 64
    mem[0] = arg1
    if uint256(numVestingEntries[address(arg1)].field_0) == uint256(numVestingEntries[address(arg1)].field_0):
        return 0
    _34 = mem[64]
    mem[64] = mem[64] + 64
    mem[_34 len 64] = code.data[4901 len 64]
    mem[32] = 4
    require uint256(numVestingEntries[address(arg1)].field_0) < uint256(numVestingEntries[address(arg1)].field_0)
    mem[0] = sha3(address(arg1), 4)
    _38 = mem[64]
    mem[64] = mem[64] + 64
    mem[_38] = uint256(numVestingEntries[address(arg1)][uint256(numVestingEntries[address(arg1)].field_0)].field_0)
    s = _38
    t = 2 * uint256(numVestingEntries[address(arg1)].field_0)
    while _38 + 64 > s + 32:
        mem[s + 32] = uint256(numVestingEntries[address(arg1)][t].field_256)
        s = s + 32
        t = t + 1
        continue 
    mem[mem[64] len 64] = uint256(numVestingEntries[address(arg1)][uint256(numVestingEntries[address(arg1)].field_0)].field_0), mem[_38 + 32]
    return memory
      from mem[64]
       len 64
}



}
