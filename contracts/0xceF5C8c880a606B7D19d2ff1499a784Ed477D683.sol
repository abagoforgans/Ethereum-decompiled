contract main {




// =====================  Runtime code  =====================


const totalBalance = eth.balance(this.address)


address owner;
array of struct admins;
array of uint256 name;
uint256 deposit;
uint256 sub_6d006ae8;
uint256 registered;
uint256 sub_b5e10e9a;
uint8 stor7;
uint8 stor7; offset 8
uint256 stor7; offset 8
uint256 endedAt;
uint256 sub_9328beee;
uint256 payoutAmount;
array of uint256 sub_a531d362;
mapping of struct participants;
mapping of address sub_9b25cacb;

function numOfAdmins() {
    return admins.length
}

function name() {
    return name[0 len name.length]
}

function participants(address arg1) {
    mem[128] = participants[arg1].field_0
    idx = 128
    s = 0
    while participants[arg1].length + 96 > idx:
        mem[idx + 32] = participants[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=participants[arg1].length, data=mem[128 len participants[arg1].length]), 
           address(participants[arg1].field_256),
           bool(uint8(participants[arg1].field_416)),
           bool(uint8(participants[arg1].field_424))
}

function ended() {
    return bool(uint8(stor7.field_0))
}

function admins(uint256 arg1) {
    require arg1 < admins.length
    return address(admins[arg1].field_0)
}

function registered() {
    return registered
}

function endedAt() {
    return endedAt
}

function payoutAmount() {
    return payoutAmount
}

function sub_6d006ae8(?) {
    return sub_6d006ae8
}

function owner() {
    return owner
}

function sub_9328beee(?) {
    return sub_9328beee
}

function cancelled() {
    return bool(uint8(stor7.field_8))
}

function sub_9b25cacb(?) {
    return sub_9b25cacb[arg1]
}

function sub_a531d362(?) {
    return sub_a531d362[0 len sub_a531d362.length]
}

function sub_b5e10e9a(?) {
    return sub_b5e10e9a
}

function deposit() {
    return deposit
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function isRegistered(address arg1) {
    return not not address(participants[address(arg1)].field_256)
}

function payout() {
    if not sub_b5e10e9a:
        return 0
    require sub_b5e10e9a
    return (eth.balance(this.address) / sub_b5e10e9a)
}

function setLimitOfParticipants(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor7.field_0)
    sub_6d006ae8 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isPaid(address arg1) {
    if not address(participants[address(arg1)].field_256):
        return not not address(participants[address(arg1)].field_256)
    return bool(uint8(participants[address(arg1)].field_424))
}

function isAttended(address arg1) {
    if not address(participants[address(arg1)].field_256):
        return not not address(participants[address(arg1)].field_256)
    return bool(uint8(participants[address(arg1)].field_416))
}

function cancel() {
    require msg.sender == owner
    require not uint8(stor7.field_0)
    payoutAmount = deposit
    Mask(248, 0, stor7.field_8) = 1
    uint8(stor7.field_0) = 1
    endedAt = block.timestamp
    emit CancelEvent()
}

function isAdmin(address arg1) {
    if arg1 == owner:
        return 1
    idx = 0
    while idx < admins.length:
        mem[0] = 1
        if address(admins[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function payback() {
    require msg.sender == owner
    require not uint8(stor7.field_0)
    if not sub_b5e10e9a:
        payoutAmount = 0
    else:
        require sub_b5e10e9a
        payoutAmount = eth.balance(this.address) / sub_b5e10e9a
    uint8(stor7.field_0) = 1
    endedAt = block.timestamp
    emit PaybackEvent(payoutAmount);
}

function clear() {
    require msg.sender == owner
    require uint8(stor7.field_0)
    require block.timestamp > endedAt + sub_9328beee
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ClearEvent(owner, eth.balance(this.address));
}

function grant(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        admins.length++
        mem[0] = 1
        address(admins[admins.length].field_0) = mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        emit AdminGranted(mem[(32 * idx) + 140 len 20]);
        idx = idx + 1
        continue 
}

function withdraw() {
    require uint8(stor7.field_0)
    require payoutAmount > 0
    require address(participants[address(msg.sender)].field_256) == msg.sender
    if not uint8(stor7.field_8):
        require uint8(participants[address(msg.sender)].field_416)
    require not uint8(participants[address(msg.sender)].field_424)
    Mask(88, 0, participants[address(msg.sender)].field_424) = 1
    call address(participants[address(msg.sender)].field_256) with:
       value payoutAmount wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit WithdrawEvent(msg.sender, payoutAmount);
}

function registerWithEncryption(string arg1, string arg2) payable {
    require not uint8(stor7.field_0)
    require msg.value == deposit
    require registered < sub_6d006ae8
    require not address(participants[address(msg.sender)].field_256)
    registered++
    sub_9b25cacb[stor5] = msg.sender
    participants[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    address(participants[address(msg.sender)].field_256) = msg.sender
    Mask(96, 0, participants[address(msg.sender)].field_416) = 0
    Mask(88, 0, participants[address(msg.sender)].field_424) = 0
    emit RegisterEvent(msg.sender, Array(len=arg1.length, data=arg1[all]), arg1.length + 128);
}

function getAdmins() {
    if not admins.length:
        mem[(32 * admins.length) + 128] = 32
        mem[(32 * admins.length) + 160] = admins.length
        mem[(32 * admins.length) + 192 len floor32(admins.length)] = mem[128 len floor32(admins.length)]
        return memory
          from (32 * admins.length) + 128
           len (96 * admins.length) + 64
    mem[128] = address(admins.field_0)
    idx = 128
    s = 0
    while (32 * admins.length) + 96 > idx:
        mem[idx + 32] = address(admins[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * admins.length) + 192 len floor32(admins.length)] = mem[128 len floor32(admins.length)]
    return Array(len=admins.length, data=mem[128 len floor32(admins.length)], mem[(32 * admins.length) + floor32(admins.length) + 192 len (32 * admins.length) - floor32(admins.length)]), 
}

function register(string arg1) payable {
    require not uint8(stor7.field_0)
    require msg.value == deposit
    require registered < sub_6d006ae8
    require not address(participants[address(msg.sender)].field_256)
    registered++
    sub_9b25cacb[stor5] = msg.sender
    participants[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    address(participants[address(msg.sender)].field_256) = msg.sender
    Mask(96, 0, participants[address(msg.sender)].field_416) = 0
    Mask(88, 0, participants[address(msg.sender)].field_424) = 0
    emit RegisterEvent(address arg1, string arg2, string arg3):
                       msg.sender,
                       96,
                       arg1.length + 128,
                       arg1.length,
                       arg1[all],
                       0,
                       mem[ceil32(arg1.length) + arg1.length + 416],
}

function attend(address[] arg1) {
    if owner != msg.sender:
        require 0 < admins.length
        idx = 0
        while address(admins[idx].field_0) != msg.sender:
            require idx + 1 < admins.length
            mem[0] = 1
            idx = idx + 1
            continue 
    require not uint8(stor7.field_0)
    s = 0
    idx = 0
    while idx < arg1.length:
        require address(participants[address(cd[((32 * idx) + arg1 + 36)])].field_256)
        if address(participants[address(cd[((32 * idx) + arg1 + 36)])].field_256):
            require not uint8(participants[address(cd[((32 * idx) + arg1 + 36)])].field_416)
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        emit AttendEvent(address(cd[((32 * idx) + arg1 + 36)]));
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 12
        Mask(96, 0, participants[address(cd[((32 * idx) + arg1 + 36)])].field_416) = 1
        sub_b5e10e9a++
        s = address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
}

function revoke(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        s = idx
        while 0 < admins.length:
            require s < arg1.length
            require 0 < admins.length
            mem[0] = 1
            if address(admins.field_0) != mem[(32 * s) + 140 len 20]:
                s = s + 1
                continue 
            require admins.length - 1 < admins.length
            require 0 < admins.length
            mem[0] = 1
            address(admins.field_0) = address(admins[admins.length].field_0)
            admins.length--
            if admins.length > admins.length - 1:
                mem[0] = 1
                idx = sha3(1) + admins.length - 1
                while sha3(1) + admins.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            require s < arg1.length
            emit AdminRevoked(mem[(32 * s) + 140 len 20]);
            idx = s + 1
            continue 
        idx = s + 1
        continue 
}



}
