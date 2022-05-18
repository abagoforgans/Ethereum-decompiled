contract main {




// =====================  Runtime code  =====================


#
#  - sub_587b0fd1(?)
#
address owner;
array of uint256 name;
uint256 fee;
array of struct sub_6a5bb5d8;
array of struct sub_a57186c7;
array of struct ownerToContracts;

function name() {
    return name[0 len name.length]
}

function ownerToContracts(address arg1, uint256 arg2) {
    require arg2 < ownerToContracts[arg1].field_0
    return ownerToContracts[arg1][arg2].field_0
}

function sub_6a5bb5d8(?) {
    require arg1 < sub_6a5bb5d8.length
    return sub_6a5bb5d8[arg1].field_0
}

function owner() {
    return owner
}

function sub_a57186c7(?) {
    return sub_a57186c7[address(arg1)].field_8
}

function fee() {
    return fee
}

function _fallback() payable {
    revert
}

function SetFee(uint256 arg1) {
    require msg.sender == owner
    fee = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_48bc347f(?) {
    if not sub_6a5bb5d8.length:
        mem[(32 * sub_6a5bb5d8.length) + 128] = 32
        mem[(32 * sub_6a5bb5d8.length) + 160] = sub_6a5bb5d8.length
        mem[(32 * sub_6a5bb5d8.length) + 192 len floor32(sub_6a5bb5d8.length)] = mem[128 len floor32(sub_6a5bb5d8.length)]
        return memory
          from (32 * sub_6a5bb5d8.length) + 128
           len (96 * sub_6a5bb5d8.length) + 64
    mem[128] = address(sub_6a5bb5d8.field_0)
    idx = 128
    s = 0
    while (32 * sub_6a5bb5d8.length) + 96 > idx:
        mem[idx + 32] = sub_6a5bb5d8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_6a5bb5d8.length) + 192 len floor32(sub_6a5bb5d8.length)] = mem[128 len floor32(sub_6a5bb5d8.length)]
    return Array(len=sub_6a5bb5d8.length, data=mem[128 len floor32(sub_6a5bb5d8.length)], mem[(32 * sub_6a5bb5d8.length) + floor32(sub_6a5bb5d8.length) + 192 len (32 * sub_6a5bb5d8.length) - floor32(sub_6a5bb5d8.length)]), 
}

function sub_50f87c33(?) {
    if not ownerToContracts[address(arg1)].field_0:
        mem[(32 * ownerToContracts[address(arg1)].field_0) + 128] = 32
        mem[(32 * ownerToContracts[address(arg1)].field_0) + 160] = ownerToContracts[address(arg1)].field_0
        mem[(32 * ownerToContracts[address(arg1)].field_0) + 192 len floor32(ownerToContracts[address(arg1)].field_0)] = mem[128 len floor32(ownerToContracts[address(arg1)].field_0)]
        return memory
          from (32 * ownerToContracts[address(arg1)].field_0) + 128
           len (96 * ownerToContracts[address(arg1)].field_0) + 64
    mem[128] = ownerToContracts[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * ownerToContracts[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = ownerToContracts[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * ownerToContracts[address(arg1)].field_0) + 192 len floor32(ownerToContracts[address(arg1)].field_0)] = mem[128 len floor32(ownerToContracts[address(arg1)].field_0)]
    return Array(len=ownerToContracts[address(arg1)].field_0, data=mem[128 len floor32(ownerToContracts[address(arg1)].field_0)], mem[(32 * ownerToContracts[address(arg1)].field_0) + floor32(ownerToContracts[address(arg1)].field_0) + 192 len (32 * ownerToContracts[address(arg1)].field_0) - floor32(ownerToContracts[address(arg1)].field_0)]), 
}

function sub_f85706c1(?) {
    if not ownerToContracts[address(msg.sender)].field_0:
        mem[(32 * ownerToContracts[address(msg.sender)].field_0) + 128] = 32
        mem[(32 * ownerToContracts[address(msg.sender)].field_0) + 160] = ownerToContracts[address(msg.sender)].field_0
        mem[(32 * ownerToContracts[address(msg.sender)].field_0) + 192 len floor32(ownerToContracts[address(msg.sender)].field_0)] = mem[128 len floor32(ownerToContracts[address(msg.sender)].field_0)]
        return memory
          from (32 * ownerToContracts[address(msg.sender)].field_0) + 128
           len (96 * ownerToContracts[address(msg.sender)].field_0) + 64
    mem[128] = ownerToContracts[address(msg.sender)].field_0
    idx = 128
    s = 0
    while (32 * ownerToContracts[address(msg.sender)].field_0) + 96 > idx:
        mem[idx + 32] = ownerToContracts[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * ownerToContracts[address(msg.sender)].field_0) + 192 len floor32(ownerToContracts[address(msg.sender)].field_0)] = mem[128 len floor32(ownerToContracts[address(msg.sender)].field_0)]
    return Array(len=ownerToContracts[address(msg.sender)].field_0, data=mem[128 len floor32(ownerToContracts[address(msg.sender)].field_0)], mem[(32 * ownerToContracts[address(msg.sender)].field_0) + floor32(ownerToContracts[address(msg.sender)].field_0) + 192 len (32 * ownerToContracts[address(msg.sender)].field_0) - floor32(ownerToContracts[address(msg.sender)].field_0)]), 
}

function sub_af88f3ea(?) {
    mem[32] = 4
    mem[96] = sub_a57186c7[arg1][2].length
    mem[128] = sub_a57186c7[arg1][2].field_0
    idx = 128
    s = 0
    while sub_a57186c7[arg1][2].length + 96 > idx:
        mem[idx + 32] = sub_a57186c7[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_a57186c7[arg1][2].length) + ceil32(sub_a57186c7[arg1][3].length) + 160
    mem[ceil32(sub_a57186c7[arg1][2].length) + 128] = sub_a57186c7[arg1][3].length
    mem[0] = sha3(arg1, 4) + 3
    mem[ceil32(sub_a57186c7[arg1][2].length) + 160] = sub_a57186c7[arg1][3].field_0
    idx = ceil32(sub_a57186c7[arg1][2].length) + 160
    s = 0
    while ceil32(sub_a57186c7[arg1][2].length) + sub_a57186c7[arg1][3].length + 128 > idx:
        mem[idx + 32] = sub_a57186c7[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_a57186c7[arg1][2].length) + ceil32(sub_a57186c7[arg1][3].length) + 160] = bool(sub_a57186c7[arg1].field_0)
    mem[ceil32(sub_a57186c7[arg1][2].length) + ceil32(sub_a57186c7[arg1][3].length) + 192] = sub_a57186c7[arg1].field_8
    mem[ceil32(sub_a57186c7[arg1][2].length) + ceil32(sub_a57186c7[arg1][3].length) + 224] = sub_a57186c7[arg1].field_256
    mem[ceil32(sub_a57186c7[arg1][2].length) + ceil32(sub_a57186c7[arg1][3].length) + 256] = 160
    mem[ceil32(sub_a57186c7[arg1][2].length) + ceil32(sub_a57186c7[arg1][3].length) + 320] = sub_a57186c7[arg1][2].length
    mem[ceil32(sub_a57186c7[arg1][2].length) + ceil32(sub_a57186c7[arg1][3].length) + 352 len ceil32(sub_a57186c7[arg1][2].length)] = mem[128 len ceil32(sub_a57186c7[arg1][2].length)]
    mem[ceil32(sub_a57186c7[arg1][2].length) + ceil32(sub_a57186c7[arg1][3].length) + 288] = sub_a57186c7[arg1][2].length + 192
    mem[sub_a57186c7[arg1][2].length + ceil32(sub_a57186c7[arg1][2].length) + ceil32(sub_a57186c7[arg1][3].length) + 352] = sub_a57186c7[arg1][3].length
    mem[sub_a57186c7[arg1][2].length + ceil32(sub_a57186c7[arg1][2].length) + ceil32(sub_a57186c7[arg1][3].length) + 384 len ceil32(sub_a57186c7[arg1][3].length)] = mem[ceil32(sub_a57186c7[arg1][2].length) + 160 len ceil32(sub_a57186c7[arg1][3].length)]
    if not sub_a57186c7[arg1][3].length % 32:
        return bool(sub_a57186c7[arg1].field_0), 
               sub_a57186c7[arg1].field_0,
               sub_a57186c7[arg1].field_256,
               Array(len=sub_a57186c7[arg1][2].length, data=mem[128 len ceil32(sub_a57186c7[arg1][2].length)], mem[(2 * ceil32(sub_a57186c7[arg1][2].length)) + ceil32(sub_a57186c7[arg1][3].length) + 352 len sub_a57186c7[arg1][3].length + sub_a57186c7[arg1][2].length + -ceil32(sub_a57186c7[arg1][2].length) + 32]),
               sub_a57186c7[arg1][2].length + 192
    mem[floor32(sub_a57186c7[arg1][3].length) + sub_a57186c7[arg1][2].length + ceil32(sub_a57186c7[arg1][2].length) + ceil32(sub_a57186c7[arg1][3].length) + 384] = mem[floor32(sub_a57186c7[arg1][3].length) + sub_a57186c7[arg1][2].length + ceil32(sub_a57186c7[arg1][2].length) + ceil32(sub_a57186c7[arg1][3].length) + -sub_a57186c7[arg1][3].length % 32 + 416 len sub_a57186c7[arg1][3].length % 32]
    return bool(sub_a57186c7[arg1].field_0), 
           sub_a57186c7[arg1].field_0,
           sub_a57186c7[arg1].field_256,
           Array(len=sub_a57186c7[arg1][2].length, data=mem[128 len ceil32(sub_a57186c7[arg1][2].length)], mem[(2 * ceil32(sub_a57186c7[arg1][2].length)) + ceil32(sub_a57186c7[arg1][3].length) + 352 len floor32(sub_a57186c7[arg1][3].length) + sub_a57186c7[arg1][2].length + -ceil32(sub_a57186c7[arg1][2].length) + 64]),
           sub_a57186c7[arg1][2].length + 192
}



}
