contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;
uint256 stor9;
bool stor10; offset 256
uint8 stor10;
uint8 stor10; offset 8
uint16 stor10;
address stor10; offset 16
address stor11;

function _fallback() {
    stor0 = msg.sender
    uint8(stor1.length) = 20
    stor1.length.field_8 = 'CodeUp #21' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 5 * 10^16
    stor2 = 0
    stor5 = 0
    stor6 = 0
    stor4 = 20
    stor7 = 0
    uint16(stor10.field_0) = 0
    if not code.data[5794 len 32]:
        stor9 = 168 * 24 * 3600
    else:
        stor9 = code.data[5794 len 32]
    if address(code.data[5826 len 32]):
        uint8(stor10.field_0) = 1
        address(stor10.field_16) = address(code.data[5826 len 32])
        stor10.field_256 % 1 = 0
    if address(code.data[5858 len 32]):
        uint8(stor10.field_8) = 1
        stor11 = address(code.data[5858 len 32])
    return code.data[540 len 5254]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
uint256 totalBalance;
uint256 deposit;
uint256 sub_6d006ae8;
uint256 registered;
uint256 sub_b5e10e9a;
uint8 stor7;
uint256 endedAt;
uint256 sub_9328beee;
uint8 invitation;
uint8 sub_7eef6177; offset 8
address sub_b989306bAddress; offset 16
address sub_a5bc1e84Address;
mapping of struct participants;
mapping of address sub_9b25cacb;

function name() {
    return name[0 len name.length]
}

function participants(address arg1) {
    mem[288] = participants[arg1].field_0
    idx = 288
    s = 0
    while participants[arg1].length + 288 > idx + 32:
        mem[idx + 32] = participants[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=participants[arg1].length, data=mem[288 len participants[arg1].length + (floor32(participants[arg1].length - 1) + -participants[arg1].length + 32 % 32)]), 
           participants[arg1].field_256,
           bool(participants[arg1].field_416),
           participants[arg1].field_512,
           bool(participants[arg1].field_768)
}

function ended() {
    return bool(stor7)
}

function registered() {
    return registered
}

function endedAt() {
    return endedAt
}

function invitation() {
    return bool(invitation)
}

function sub_6d006ae8(?) {
    return sub_6d006ae8
}

function sub_7eef6177(?) {
    return bool(sub_7eef6177)
}

function owner() {
    return owner
}

function sub_9328beee(?) {
    return sub_9328beee
}

function sub_9b25cacb(?) {
    return sub_9b25cacb[arg1]
}

function sub_a5bc1e84(?) {
    return sub_a5bc1e84Address
}

function totalBalance() {
    return totalBalance
}

function sub_b5e10e9a(?) {
    return sub_b5e10e9a
}

function sub_b989306b(?) {
    return sub_b989306bAddress
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

function setLimitOfParticipants(uint256 arg1) {
    require owner == msg.sender
    sub_6d006ae8 = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function payout() {
    if 0 == sub_b5e10e9a:
        return 0
    require sub_b5e10e9a
    return (totalBalance / sub_b5e10e9a)
}

function isPaid(address arg1) {
    if not participants[address(arg1)].field_256:
        return bool(participants[address(arg1)].field_256)
    return bool(participants[address(arg1)].field_768)
}

function isAttended(address arg1) {
    if not participants[address(arg1)].field_256:
        return bool(participants[address(arg1)].field_256)
    return bool(participants[address(arg1)].field_416)
}

function clear() {
    require owner == msg.sender
    if stor7:
        if block.timestamp > endedAt + sub_9328beee:
            totalBalance = 0
            emit ClearEvent(owner, totalBalance);
            call owner with:
               value totalBalance wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}

function cancel() {
    require owner == msg.sender
    if not stor7:
        idx = 1
        while idx <= registered:
            participants[stor13[idx]].field_512 = deposit
            mem[0] = idx
            mem[32] = 13
            mem[96] = sub_9b25cacb[idx]
            mem[128] = deposit
            emit 0xb37fa158: sub_9b25cacb[idx], deposit
            idx = idx + 1
            continue 
        stor7 = 1
        endedAt = block.timestamp
}

function withdraw() {
    if participants[address(msg.sender)].field_512 > 0:
        if not participants[address(msg.sender)].field_768:
            emit WithdrawEvent(msg.sender, totalBalance);
            participants[address(msg.sender)].field_768 = 1
            totalBalance -= participants[address(msg.sender)].field_512
            call msg.sender with:
               value participants[address(msg.sender)].field_512 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}

function sub_0bfcbc5d(?) {
    if sub_7eef6177:
        require ext_code.size(sub_a5bc1e84Address)
        call sub_a5bc1e84Address.claim(bytes32 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args arg1, msg.sender
        require ext_call.success
        require ext_call.return_data[0]
    require 1 == bool(participants[address(msg.sender)].field_256)
    if participants[address(msg.sender)].field_256:
        require not participants[address(msg.sender)].field_416
    emit AttendEvent(msg.sender);
    participants[address(msg.sender)].field_416 = 1
    sub_b5e10e9a++
}

function attend(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _20 = mem[(32 * idx) + 128]
        require 1 == bool(participants[mem[(32 * idx) + 140 len 20]].field_256)
        if participants[address(mem[(32 * idx) + 128])].field_256:
            require not participants[address(mem[(32 * idx) + 128])].field_416
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit AttendEvent(mem[(32 * arg1.length) + 128]);
        mem[0] = address(_20)
        mem[32] = 12
        participants[address(_20)].field_416 = 1
        sub_b5e10e9a++
        s = _20
        idx = idx + 1
        continue 
}

function payback() {
    require owner == msg.sender
    idx = 1
    while idx <= registered:
        mem[0] = sub_9b25cacb[idx]
        mem[32] = 12
        if participants[stor13[idx]].field_416:
            if 0 == sub_b5e10e9a:
                participants[stor13[idx]].field_512 = 0
                mem[0] = idx
                mem[32] = 13
                mem[96] = sub_9b25cacb[idx]
                mem[128] = 0
                emit 0x74f6c9ed: sub_9b25cacb[idx], 0
            else:
                require sub_b5e10e9a
                participants[stor13[idx]].field_512 = totalBalance / sub_b5e10e9a
                mem[0] = idx
                mem[32] = 13
                if 0 == sub_b5e10e9a:
                    mem[96] = sub_9b25cacb[idx]
                    mem[128] = 0
                    emit 0x74f6c9ed: sub_9b25cacb[idx], 0
                else:
                    require sub_b5e10e9a
                    mem[96] = sub_9b25cacb[idx]
                    mem[128] = totalBalance / sub_b5e10e9a
                    emit 0x74f6c9ed: sub_9b25cacb[idx], totalBalance / sub_b5e10e9a
        idx = idx + 1
        continue 
    stor7 = 1
    endedAt = block.timestamp
}

function register(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    if deposit != msg.value:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        if registered >= sub_6d006ae8:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            if stor7:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                mem[ceil32(arg1.length) + 128] = msg.sender
                mem[ceil32(arg1.length) + 160] = 64
                mem[ceil32(arg1.length) + 192] = arg1.length
                if arg1.length:
                    mem[ceil32(arg1.length) + 224] = mem[128]
                    mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                emit 0x2769f602: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length])
                require not participants[address(msg.sender)].field_256
                registered++
                sub_9b25cacb[stor5 + 1] = msg.sender
                participants[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
                participants[address(msg.sender)].field_256 = msg.sender
                participants[address(msg.sender)].field_416 = 0
                participants[address(msg.sender)].field_512 = 0
                participants[address(msg.sender)].field_768 = 0
                totalBalance += deposit
}

function sub_98b9c6b3(?) payable {
    mem[128 len arg1.length] = arg1[all]
    if deposit != msg.value:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        if registered >= sub_6d006ae8:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            if stor7:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                if invitation:
                    require ext_code.size(sub_b989306bAddress)
                    call sub_b989306bAddress.claim(bytes32 rg1, address rg2) with:
                         gas gas_remaining - 710 wei
                        args arg2, msg.sender
                    require ext_call.success
                    require ext_call.return_data[0]
                if deposit != msg.value:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    if registered >= sub_6d006ae8:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        if stor7:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            mem[ceil32(arg1.length) + 128] = msg.sender
                            mem[ceil32(arg1.length) + 160] = 64
                            mem[ceil32(arg1.length) + 192] = arg1.length
                            if arg1.length:
                                mem[ceil32(arg1.length) + 224] = mem[128]
                                mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                            emit 0x2769f602: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length])
                            require not participants[address(msg.sender)].field_256
                            registered++
                            sub_9b25cacb[stor5 + 1] = msg.sender
                            participants[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
                            participants[address(msg.sender)].field_256 = msg.sender
                            participants[address(msg.sender)].field_416 = 0
                            participants[address(msg.sender)].field_512 = 0
                            participants[address(msg.sender)].field_768 = 0
                            totalBalance += deposit
}



}
