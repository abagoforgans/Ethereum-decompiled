contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor8;
address stor10;
array of uint256 stor11;

function _fallback() {
    mem[96 len -5556] = code.data[6133 len -5556]
    mem[64] = -5460
    stor0 = msg.sender
    if mem[mem[96] + 96]:
        stor1[].field_0 = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    else:
        mem[64] = -5396
        bool(stor1.length) = 0
        stor1.length.field_1 = 4
        stor1.length.field_8 = 'Test' / 256
        idx = 0
        while stor1.length + 31 / 32 > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not mem[128]:
        stor2 = 5 * 10^16
    else:
        stor2 = mem[128]
    if not mem[160]:
        stor3 = 20
    else:
        stor3 = mem[160]
    if not mem[192]:
        stor8 = 168 * 24 * 3600
    else:
        stor8 = mem[192]
    if mem[mem[256] + 96]:
        stor11[] = Array(len=mem[mem[256] + 96], data=mem[mem[256] + 128 len mem[mem[256] + 96]])
    if mem[236 len 20]:
        stor10 = mem[236 len 20]
    return code.data[577 len 5556]
}



// =====================  Runtime code  =====================


const totalBalance = eth.balance(this.address)


address owner;
array of uint256 name;
uint256 deposit;
uint256 sub_6d006ae8;
uint256 registered;
uint256 sub_b5e10e9a;
uint8 stor6;
uint8 stor6; offset 8
uint256 stor6; offset 8
uint256 endedAt;
uint256 sub_9328beee;
uint256 payoutAmount;
address sub_a5bc1e84Address;
array of uint256 sub_a531d362;
mapping of struct participants;
mapping of address sub_9b25cacb;

function name() {
    return name[0 len name.length]
}

function participants(address arg1) {
    mem[256] = participants[arg1].field_0
    idx = 256
    s = 0
    while participants[arg1].length + 256 > idx + 32:
        mem[idx + 32] = participants[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=participants[arg1].length, data=mem[256 len participants[arg1].length + (floor32(participants[arg1].length - 1) + -participants[arg1].length + 32 % 32)]), 
           participants[arg1].field_256,
           bool(participants[arg1].field_416),
           bool(participants[arg1].field_424)
}

function ended() {
    return bool(uint8(stor6.field_0))
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

function sub_7eef6177(?) {
    return bool(sub_a5bc1e84Address)
}

function owner() {
    return owner
}

function sub_9328beee(?) {
    return sub_9328beee
}

function cancelled() {
    return bool(uint8(stor6.field_8))
}

function sub_9b25cacb(?) {
    return sub_9b25cacb[arg1]
}

function sub_a531d362(?) {
    return sub_a531d362[0 len sub_a531d362.length]
}

function sub_a5bc1e84(?) {
    return sub_a5bc1e84Address
}

function sub_b5e10e9a(?) {
    return sub_b5e10e9a
}

function isRegistered(address arg1) {
    return bool(participants[address(arg1)].field_256)
}

function deposit() {
    return deposit
}

function destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function setLimitOfParticipants(uint256 arg1) {
    require owner == msg.sender
    require not uint8(stor6.field_0)
    sub_6d006ae8 = arg1
}

function payout() {
    if 0 == sub_b5e10e9a:
        return 0
    require sub_b5e10e9a
    return (eth.balance(this.address) / sub_b5e10e9a)
}

function isPaid(address arg1) {
    if not participants[address(arg1)].field_256:
        return bool(participants[address(arg1)].field_256)
    return bool(participants[address(arg1)].field_424)
}

function isAttended(address arg1) {
    if not participants[address(arg1)].field_256:
        return bool(participants[address(arg1)].field_256)
    return bool(participants[address(arg1)].field_416)
}

function cancel() {
    require owner == msg.sender
    require not uint8(stor6.field_0)
    payoutAmount = deposit
    uint8(stor6.field_0) = 1
    uint8(stor6.field_8) = 1
    Mask(248, 0, stor6.field_8) = 0
    endedAt = block.timestamp
    emit CancelEvent()
}

function clear() {
    require owner == msg.sender
    require uint8(stor6.field_0)
    require block.timestamp > endedAt + sub_9328beee
    require uint8(stor6.field_0)
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit ClearEvent(owner, eth.balance(this.address));
}

function payback() {
    require owner == msg.sender
    require not uint8(stor6.field_0)
    if 0 == sub_b5e10e9a:
        payoutAmount = 0
        uint8(stor6.field_0) = 1
        endedAt = block.timestamp
        emit PaybackEvent(0);
    else:
        require sub_b5e10e9a
        payoutAmount = eth.balance(this.address) / sub_b5e10e9a
        uint8(stor6.field_0) = 1
        endedAt = block.timestamp
        emit PaybackEvent((eth.balance(this.address) / sub_b5e10e9a));
}

function withdraw() {
    require uint8(stor6.field_0)
    require payoutAmount > 0
    require participants[address(msg.sender)].field_256 == msg.sender
    if not uint8(stor6.field_8):
        require participants[address(msg.sender)].field_416
    require not participants[address(msg.sender)].field_424
    participants[address(msg.sender)].field_424 = 1
    call 0 or participants[address(msg.sender)].field_256 with:
       value payoutAmount wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit WithdrawEvent(msg.sender, payoutAmount);
}

function sub_0bfcbc5d(?) {
    require not uint8(stor6.field_0)
    require participants[address(msg.sender)].field_256
    if participants[address(msg.sender)].field_256:
        require not participants[address(msg.sender)].field_416
    require ext_code.size(sub_a5bc1e84Address)
    call sub_a5bc1e84Address.claim(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args arg1, msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    participants[address(msg.sender)].field_416 = 1
    sub_b5e10e9a++
    emit AttendEvent(msg.sender);
}

function attend(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    require not uint8(stor6.field_0)
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _16 = mem[(32 * idx) + 128]
        require participants[mem[(32 * idx) + 140 len 20]].field_256
        if participants[address(mem[(32 * idx) + 128])].field_256:
            require not participants[address(mem[(32 * idx) + 128])].field_416
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit AttendEvent(mem[(32 * arg1.length) + 128]);
        mem[0] = address(_16)
        mem[32] = 12
        participants[address(_16)].field_416 = 1
        sub_b5e10e9a++
        s = _16
        idx = idx + 1
        continue 
}

function register(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    require not uint8(stor6.field_0)
    require msg.value == deposit
    require registered < sub_6d006ae8
    require not participants[address(msg.sender)].field_256
    registered++
    sub_9b25cacb[stor4 + 1] = msg.sender
    mem[ceil32(arg1.length) + 128] = 96
    participants[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    participants[address(msg.sender)].field_256 = msg.sender
    participants[address(msg.sender)].field_416 = 0
    participants[address(msg.sender)].field_424 = 0
    mem[ceil32(arg1.length) + 384 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + 384] = 0
    emit RegisterEvent(msg.sender, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 384 len arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 128);
}

function registerWithEncryption(string arg1, string arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require not uint8(stor6.field_0)
    require msg.value == deposit
    require registered < sub_6d006ae8
    require not participants[address(msg.sender)].field_256
    registered++
    sub_9b25cacb[stor4 + 1] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    participants[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    participants[address(msg.sender)].field_256 = msg.sender
    participants[address(msg.sender)].field_416 = 0
    participants[address(msg.sender)].field_424 = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 416 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 416] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit RegisterEvent(msg.sender, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 416 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 128);
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 480 len arg2.length % 32]
        emit RegisterEvent(msg.sender, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 416 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 128);
}



}
