contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
address stor4;
uint256 stor5;
array of uint256 stor6;

function _fallback() payable {
    stor4 = 0
    stor5 = 0
    mem[128] = 'Welcome to the future of transpo'
    mem[160] = 'rtation chain.'
    stor6.length = 93
    s = 0
    idx = 128
    while 174 > idx:
        stor6[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor6.length + 31 / 32 > idx:
        stor6[idx] = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor3 = msg.sender
    stor0 = 38 * 10^14
    stor1[address(msg.sender)] = 38 * 10^14
    return code.data[567 len 6873]
}



// =====================  Runtime code  =====================


const name = 'VIONC'

const decimals = 8

const symbol = 'VNC'

const SUPPLY_CAP = 38 * 10^14


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address stor4;
uint256 nonce;
array of struct note;

function totalSupply() {
    return totalSupply
}

function note() {
    return note[0 len note.length].field_0
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function nonce() {
    return nonce
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function incNonce() {
    nonce++
    if nonce > 100:
        nonce = 0
    emit NonceTick(nonce);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function setNote(string arg1) {
    require msg.sender == owner
    note[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 192] = uint256(note.field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + note.length + 192 > idx + 32:
        mem[idx + 32] = note[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit NoteChanged(Array(len=note.length, data=mem[ceil32(arg1.length) + 192 len note.length + (floor32(note.length - 1) + -note.length + 32 % 32)]));
}

function drop(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require 100 * 10^6 * arg2 > 0
    require 100 * 10^6 * arg2 <= 38 * 10^14
    mem[(32 * arg1.length) + 128] = arg1.length
    emit PerformingDrop(arg1.length);
    require arg1.length <= 5000
    require balanceOf[stor3] >= 100 * 10^6 * arg2 * arg1.length
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 140 len 20] == stor4:
            s = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        balanceOf[stor3] += -100 * 10^6 * arg2
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        balanceOf[address(mem[(32 * idx) + 128])] += 100 * 10^6 * arg2
        mem[(32 * arg1.length) + 128] = 100 * 10^6 * arg2
        emit Transfer((100 * 10^6 * arg2), owner, address(_17));
        s = _17
        idx = idx + 1
        continue 
}



}
