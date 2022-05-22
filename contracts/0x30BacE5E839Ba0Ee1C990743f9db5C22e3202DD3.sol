contract main {




// =====================  Runtime code  =====================


address owner;
uint256 cost;
uint256 pot;
uint256 ownersBalance;
uint256 timeOfWin;
bool stor5; offset 256
uint8 stor5; offset 160
uint128 stor5; offset 160
address winnerAddress;
array of uint256 locations;
mapping of struct hunters;

function cost() {
    return cost
}

function grace() {
    return bool(uint8(stor5.field_160))
}

function pot() {
    return pot
}

function ownersBalance() {
    return ownersBalance
}

function locationsLength() {
    return locations.length
}

function owner() {
    return owner
}

function hunters(address arg1, uint256 arg2) {
    return hunters[arg1][arg2].field_0, hunters[arg1][arg2].field_256
}

function timeOfWin() {
    return timeOfWin
}

function locations(uint256 arg1) {
    require arg1 < locations.length
    return locations[arg1]
}

function winner() {
    return winnerAddress
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    pot += msg.value
}

function increasePot() payable {
    pot += msg.value
}

function setCost(uint256 arg1) {
    require msg.sender == owner
    cost = arg1
}

function addLocation(uint256 arg1) {
    require msg.sender == owner
    locations.length++
    locations[locations.length] = arg1
}

function setLocation(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 < locations.length
    locations[arg1] = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function resetWinner() {
    require uint8(stor5.field_160)
    require block.timestamp > timeOfWin + (720 * 24 * 3600)
    winnerAddress = 0
    Mask(96, 0, stor5.field_160) = 0
    Mask(96, 0, stor5.field_160) = 0
    ownersBalance = 0
    pot = eth.balance(this.address)
}

function submitLocation(uint256 arg1, uint8 arg2) payable {
    require arg1 != 0
    require arg2 < locations.length
    if not uint8(stor5.field_160):
        require msg.value >= cost
        ownersBalance += cost / 10
        pot = cost - (cost / 10) + pot
    hunters[address(msg.sender)][arg2 << 248].field_0 = arg1
    hunters[address(msg.sender)][arg2 << 248].field_256 = block.number
}

function withdraw() {
    if msg.sender == owner:
        ownersBalance = 0
        call msg.sender with:
           value ownersBalance wei
             gas 2300 * is_zero(value) wei
    else:
        if winnerAddress != msg.sender:
            call msg.sender with:
                 gas 2300 wei
        else:
            pot = 0
            call msg.sender with:
               value pot wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function setAllLocations(uint256[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    locations.length = arg1.length
    if not arg1.length:
        idx = 0
        while locations.length > idx:
            locations[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            locations[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while locations.length > idx:
            locations[idx] = 0
            idx = idx + 1
            continue 
}

function checkWin(uint256[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require not uint8(stor5.field_160)
    require arg1.length == locations.length
    s = 0
    idx = 0
    t = 1
    u = 0
    while idx < locations.length:
        require hunters[address(msg.sender)][idx].field_256 > u
        mem[32] = sha3(address(msg.sender), 7)
        require idx < locations.length
        mem[0] = 6
        if 0 == locations[idx]:
            s = s
            idx = idx + 1
            t = t
            u = hunters[address(msg.sender)][idx].field_256
            continue 
        require idx < mem[96]
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 7)
        _35 = mem[64]
        mem[mem[64] + 32] = hunters[address(msg.sender)][idx].field_0 xor mem[(32 * idx) + 128]
        _36 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _38 = mem[_36]
        u = _36 + 32
        v = _35 + 64
        s = mem[_36]
        while s >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            s = s - 32
            continue 
        mem[_35 + floor32(mem[_36]) + 64] = mem[_36 + -(mem[_36] % 32) + floor32(mem[_36]) + 64 len mem[_36] % 32] or Mask(8 * -(mem[_36] % 32) + 32, -(8 * -(mem[_36] % 32) + 32) + 256, mem[_35 + floor32(mem[_36]) + 64])
        _48 = sha3(mem[_35 + 64 len _38])
        if not t:
            s = sha3(mem[_35 + 64 len _38])
            idx = idx + 1
            t = t
            u = hunters[address(msg.sender)][idx].field_256
            continue 
        require idx < locations.length
        mem[0] = 6
        s = _48
        idx = idx + 1
        t = locations[idx] == _48
        u = hunters[address(msg.sender)][idx].field_256
        continue 
    require t
    timeOfWin = block.timestamp
    winnerAddress = msg.sender
    Mask(96, 0, stor5.field_160) = 1
    stor5.field_256 % 1 = 0
    emit WonEvent(msg.sender);
}



}
