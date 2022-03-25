contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3 = 10^18
    return code.data[49 len 5060]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of struct address;
array of struct reverse;
uint256 fee;

function getAddress(bytes32 arg1, string arg2) payable {
    return address[arg1][2][arg2[all]].field_0
}

function owner() payable {
    return address(owner)
}

function getUint(bytes32 arg1, string arg2) payable {
    return address[arg1][2][arg2[all]].field_0
}

function get(bytes32 arg1, string arg2) payable {
    return address[arg1][2][arg2[all]].field_0
}

function fee() payable {
    return fee
}

function reverse(address arg1) payable {
    return reverse[arg1][0 len reverse[arg1].length].field_0
}

function _fallback() payable {
  stop
}

function reserved(bytes32 arg1) payable {
    return not not address[arg1].field_0
}

function setFee(uint256 arg1) payable {
    if msg.sender == address(owner):
        fee = arg1
        emit FeeChanged(arg1);
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        emit NewOwner(address(owner), arg1);
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function drop(bytes32 arg1) payable {
    if address[arg1].field_0 != msg.sender:
        return 0
    address[arg1].field_0 = 0
    address[arg1].field_256 = 0
    emit Dropped(arg1, msg.sender);
    return 1
}

function drain() payable {
    if address(owner) != msg.sender:
    emit Drained(eth.balance(this.address));
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 0 wei
    require ext_call.success
}

function transfer(bytes32 arg1, address arg2) payable {
    if address[arg1].field_0 != msg.sender:
        return 0
    address[arg1].field_0 = arg2 or Mask(96, 160, address[arg1].field_0)
    emit Transferred(arg1, msg.sender, arg2);
    return 1
}

function reserve(bytes32 arg1) payable {
    if address[arg1].field_0 != 0:
        return 0
    if msg.value < fee:
        return 0
    address[arg1].field_0 = msg.sender or Mask(96, 160, address[arg1].field_0)
    emit Reserved(arg1, msg.sender);
    return 1
}

function confirmReverse(string arg1) payable {
    if address[arg1[all]].field_256 != msg.sender:
        return 0
    reverse[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    emit ReverseConfirmed(sha3(arg1[all]), msg.sender);
    return 1
}

function set(bytes32 arg1, string arg2, bytes32 arg3) payable {
    if address[arg1].field_0 != msg.sender:
        return 0
    address[arg1][2][arg2[all]].field_0 = arg3
    emit DataChanged(Array(len=arg2.length, data=arg2[all]), arg1, msg.sender, sha3(arg2[all]));
    return 1
}

function setUint(bytes32 arg1, string arg2, uint256 arg3) payable {
    if address[arg1].field_0 != msg.sender:
        return 0
    address[arg1][2][arg2[all]].field_0 = arg3
    emit DataChanged(Array(len=arg2.length, data=arg2[all]), arg1, msg.sender, sha3(arg2[all]));
    return 1
}

function setAddress(bytes32 arg1, string arg2, address arg3) payable {
    if address[arg1].field_0 != msg.sender:
        return 0
    address[arg1][2][arg2[all]].field_0 = arg3
    address[arg1][2][arg2[all]].field_160 = 0
    emit DataChanged(Array(len=arg2.length, data=arg2[all]), arg1, msg.sender, sha3(arg2[all]));
    return 1
}

function removeReverse() payable {
    mem[96] = reverse[address(msg.sender)].field_0
    idx = 96
    s = 0
    while reverse[address(msg.sender)].length + 96 > idx + 32:
        mem[idx + 32] = reverse[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit ReverseRemoved(sha3(mem[96 len reverse[address(msg.sender)].length]), msg.sender);
    mem[96] = reverse[address(msg.sender)].field_0
    idx = 96
    s = 0
    while reverse[address(msg.sender)].length + 96 > idx + 32:
        mem[idx + 32] = reverse[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    address[mem[96 len stor2[address(msg.sender)].length]].field_256 = 0
    reverse[address(msg.sender)].field_0 = 0
    if 31 < reverse[address(msg.sender)].length:
        idx = 0
        while reverse[address(msg.sender)].length + 31 / 32 > idx:
            reverse[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function proposeReverse(string arg1, address arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    if address[arg1[all]].field_0 != msg.sender:
        return 0
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    if address[arg1[all]].field_256 != 0:
        mem[ceil32(arg1.length) + 128] = reverse[stor1[arg1[all]].field_256].field_0
        idx = ceil32(arg1.length) + 128
        s = 0
        while ceil32(arg1.length) + reverse[stor1[arg1[all]].field_256].length + 128 > idx + 32:
            mem[idx + 32] = reverse[stor1[arg1[all]].field_256][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if sha3(mem[ceil32(arg1.length) + 128 len reverse[stor1[arg1[all]].field_256].length]) == sha3(arg1[all]):
            reverse[stor1[arg1[all]].field_256].field_0 = 0
            if 31 < reverse[stor1[arg1[all]].field_256].length:
                idx = 0
                while reverse[stor1[arg1[all]].field_256].length + 31 / 32 > idx:
                    reverse[stor1[arg1[all]].field_256][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            emit ReverseRemoved(sha3(arg1[all]), address[arg1[all]].field_256);
    address[arg1[all]].field_256 = arg2 or Mask(96, 160, address[arg1[all]].field_256)
    emit ReverseProposed(sha3(arg1[all]), arg2);
    return 1
}



}
