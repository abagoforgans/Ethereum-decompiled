contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender
    stor3 = 10^18
    require not msg.value
    return code.data[67 len 6959]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct owner;
array of struct reverse;
uint256 fee;

function canReverse(address arg1) {
    return bool(reverse[address(arg1)].length)
}

function owner() {
    return owner
}

function reserved(bytes32 arg1) {
    return bool(address(owner[arg1].field_0))
}

function hasReverse(bytes32 arg1) {
    return bool(address(owner[arg1].field_256))
}

function fee() {
    return fee
}

function getOwner(bytes32 arg1) {
    return address(owner[arg1].field_0)
}

function getReverse(bytes32 arg1) {
    return address(owner[arg1].field_256)
}

function reverse(address arg1) {
    return uint256(reverse[address(arg1)][0 len reverse[address(arg1)].length].field_0)
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if owner == msg.sender:
        emit NewOwner(owner, arg1);
        owner = arg1
}

function setFee(uint256 arg1) {
    if owner != msg.sender:
        return 0
    fee = arg1
    emit FeeChanged(arg1);
    return 1
}

function transfer(bytes32 arg1, address arg2) {
    if address(owner[arg1].field_0) != msg.sender:
        return 0
    address(owner[arg1].field_0) = arg2
    emit Transferred(arg1, msg.sender, arg2);
    return 1
}

function reserve(bytes32 arg1) payable {
    if address(owner[arg1].field_0):
        return 0
    if msg.value < fee:
        return 0
    address(owner[arg1].field_0) = msg.sender
    emit Reserved(arg1, msg.sender);
    return 1
}

function drain() {
    if owner != msg.sender:
        return 0
    emit Drained(eth.balance(this.address));
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function drop(bytes32 arg1) {
    if address(owner[arg1].field_0) != msg.sender:
        return 0
    uint256(reverse[address(stor1[arg1].field_256)].field_0) = 0
    if 31 < reverse[address(stor1[arg1].field_256)].length:
        idx = 0
        while reverse[address(stor1[arg1].field_256)].length + 31 / 32 > idx:
            uint256(reverse[address(stor1[arg1].field_256)][idx].field_0) = 0
            idx = idx + 1
            continue 
    address(owner[arg1].field_0) = 0
    address(owner[arg1].field_256) = 0
    emit Dropped(arg1, msg.sender);
    return 1
}

function sub_ef5454d6(?) {
    mem[128 len arg1.length] = arg1[all]
    if owner != msg.sender:
        return 0
    uint256(reverse[address(arg2)][].field_0) = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    emit ReverseConfirmed(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), arg2);
    return 1
}

function sub_90b97fc1(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(arg1, 1) + 2
    mem[ceil32(arg2.length) + 128] = uint256(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]].field_0)
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function getUint(bytes32 arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(arg1, 1) + 2
    mem[ceil32(arg2.length) + 128] = uint256(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]].field_0)
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function getAddress(bytes32 arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(arg1, 1) + 2
    mem[ceil32(arg2.length) + 128] = address(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]].field_0)
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function removeReverse() {
    mem[96] = uint256(reverse[address(msg.sender)].field_0)
    idx = 96
    s = 0
    while reverse[address(msg.sender)].length + 96 > idx + 32:
        mem[idx + 32] = uint256(reverse[address(msg.sender)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    emit ReverseRemoved(sha3(mem[96 len reverse[address(msg.sender)].length]), msg.sender);
    mem[96] = uint256(reverse[address(msg.sender)].field_0)
    idx = 96
    s = 0
    while reverse[address(msg.sender)].length + 96 > idx + 32:
        mem[idx + 32] = uint256(reverse[address(msg.sender)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    address(owner[mem[96 len stor2[address(msg.sender)].length]].field_256) = 0
    uint256(reverse[address(msg.sender)].field_0) = 0
    if 31 < reverse[address(msg.sender)].length:
        idx = 0
        while reverse[address(msg.sender)].length + 31 / 32 > idx:
            uint256(reverse[address(msg.sender)][idx].field_0) = 0
            idx = idx + 1
            continue 
}

function confirmReverse(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    if address(owner[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_256) != msg.sender:
        return 0
    uint256(reverse[address(msg.sender)][].field_0) = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    emit ReverseConfirmed(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), msg.sender);
    return 1
}

function sub_19362a28(?) {
    mem[128 len arg2.length] = arg2[all]
    if address(owner[arg1].field_0) != msg.sender:
        return 0
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(arg1, 1) + 2
    uint256(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]].field_0) = arg3
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    _51 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32])
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 160] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 192] = mem[128]
        mem[ceil32(arg2.length) + 224 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    if not arg2.length % 32:
        emit 0xb829c3e4: Array(len=mem[ceil32(arg2.length) + 160 len floor32(arg2.length)], data=Mask(8 * arg2.length % 32, 0, sha3(arg1, 1) + 2), mem[ceil32(arg2.length) + arg2.length + 160]), arg1, _51
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
        emit 0xb829c3e4: Array(len=mem[ceil32(arg2.length) + 160 len floor32(arg2.length)], data=Mask(8 * arg2.length % 32, 0, sha3(arg1, 1) + 2), mem[ceil32(arg2.length) + arg2.length + 160 len -(arg2.length % 32) + 64]), arg1, _51
    return 1
}

function setUint(bytes32 arg1, string arg2, uint256 arg3) {
    mem[128 len arg2.length] = arg2[all]
    if address(owner[arg1].field_0) != msg.sender:
        return 0
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(arg1, 1) + 2
    uint256(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]].field_0) = arg3
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    _51 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32])
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 160] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 192] = mem[128]
        mem[ceil32(arg2.length) + 224 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    if not arg2.length % 32:
        emit 0xb829c3e4: Array(len=mem[ceil32(arg2.length) + 160 len floor32(arg2.length)], data=Mask(8 * arg2.length % 32, 0, sha3(arg1, 1) + 2), mem[ceil32(arg2.length) + arg2.length + 160]), arg1, _51
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
        emit 0xb829c3e4: Array(len=mem[ceil32(arg2.length) + 160 len floor32(arg2.length)], data=Mask(8 * arg2.length % 32, 0, sha3(arg1, 1) + 2), mem[ceil32(arg2.length) + arg2.length + 160 len -(arg2.length % 32) + 64]), arg1, _51
    return 1
}

function proposeReverse(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    if address(owner[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0) != msg.sender:
        return 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    _271 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    if not address(owner[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_256):
        address(owner[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_256) = arg2
    else:
        _275 = sha3(address(owner[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_256), 2)
        mem[0] = sha3(address(owner[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_256), 2)
        mem[ceil32(arg1.length) + 128] = uint256(reverse[address(stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_256)].field_0)
        idx = ceil32(arg1.length) + 128
        s = 0
        while ceil32(arg1.length) + stor[_275].length + 128 > idx + 32:
            mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
        if sha3(mem[ceil32(arg1.length) + 128 len stor[_275].length]) == _271:
            uint256(reverse[address(stor1[_271].field_256)].field_0) = 0
            if 31 < reverse[address(stor1[_271].field_256)].length:
                idx = 0
                while reverse[address(stor1[_271].field_256)].length + 31 / 32 > idx:
                    uint256(reverse[address(stor1[_271].field_256)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            emit ReverseRemoved(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), address(owner[_271].field_256));
        address(owner[_271].field_256) = arg2
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    emit ReverseProposed(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), arg2);
    return 1
}

function setAddress(bytes32 arg1, string arg2, address arg3) {
    mem[128 len arg2.length] = arg2[all]
    if address(owner[arg1].field_0) != msg.sender:
        return 0
    if arg2.length < 32:
        mem[ceil32(arg2.length) + 128] = 256^(-arg2.length + 32) - 1 and mem[ceil32(arg2.length) + 128] or mem[128] and !(256^(-arg2.length + 32) - 1)
        mem[ceil32(arg2.length) + arg2.length + 128] = sha3(arg1, 1) + 2
        address(stor[sha3(mem[ceil32(arg2.length) + 128 len arg2.length + 32])].field_0) = arg3
        Mask(96, 0, stor[sha3(mem[ceil32(arg2.length) + 128 len arg2.length + 32])].field_160) = 0
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
        _51 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32])
        mem[ceil32(arg2.length) + 128] = 32
        mem[ceil32(arg2.length) + 160] = arg2.length
        if arg2.length:
            mem[ceil32(arg2.length) + 192] = mem[128]
            mem[ceil32(arg2.length) + 224 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        if not arg2.length % 32:
            emit 0xb829c3e4: Array(len=mem[ceil32(arg2.length) + 160 len floor32(arg2.length)], data=Mask(8 * arg2.length % 32, 0, sha3(arg1, 1) + 2), mem[ceil32(arg2.length) + arg2.length + 160]), arg1, _51
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
            emit 0xb829c3e4: Array(len=mem[ceil32(arg2.length) + 160 len floor32(arg2.length)], data=Mask(8 * arg2.length % 32, 0, sha3(arg1, 1) + 2), mem[ceil32(arg2.length) + arg2.length + 160 len -(arg2.length % 32) + 64]), arg1, _51
    else:
        mem[ceil32(arg2.length) + 128] = mem[128]
        mem[ceil32(arg2.length) + 160 len floor32(arg2.length - 32)] = mem[160 len floor32(arg2.length - 32)]
        mem[ceil32(arg2.length) + floor32(arg2.length - 32) + 160] = 256^(-arg2.length + floor32(arg2.length - 32) + 64) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length - 32) + 160] or mem[floor32(arg2.length - 32) + 160] and !(256^(-arg2.length + floor32(arg2.length - 32) + 64) - 1)
        mem[ceil32(arg2.length) + arg2.length + 128] = sha3(arg1, 1) + 2
        address(stor[sha3(mem[ceil32(arg2.length) + 128 len arg2.length + 32])].field_0) = arg3
        Mask(96, 0, stor[sha3(mem[ceil32(arg2.length) + 128 len arg2.length + 32])].field_160) = 0
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
        _86 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32])
        mem[ceil32(arg2.length) + 128] = 32
        mem[ceil32(arg2.length) + 160] = arg2.length
        if arg2.length:
            mem[ceil32(arg2.length) + 192] = mem[128]
            mem[ceil32(arg2.length) + 224 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        if not arg2.length % 32:
            emit 0xb829c3e4: Array(len=mem[ceil32(arg2.length) + 160 len floor32(arg2.length)], data=Mask(8 * arg2.length % 32, 0, sha3(arg1, 1) + 2), mem[ceil32(arg2.length) + arg2.length + 160]), arg1, _86
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
            emit 0xb829c3e4: Array(len=mem[ceil32(arg2.length) + 160 len floor32(arg2.length)], data=Mask(8 * arg2.length % 32, 0, sha3(arg1, 1) + 2), mem[ceil32(arg2.length) + arg2.length + 160 len -(arg2.length % 32) + 64]), arg1, _86
    return 1
}



}
