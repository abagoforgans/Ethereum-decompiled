contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    mem[96 len -1844] = code.data[2197 len -1844]
    mem[64] = -1748
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2 = mem[128]
    stor3 = mem[160]
    return code.data[353 len 1844]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 message;
bool stor2;
uint256 stor2;
uint256 stor2; offset 1
uint256 priceInWei;
uint256 maxLength;

function priceInWei() {
    return priceInWei
}

function owner() {
    return owner
}

function maxLength() {
    return maxLength
}

function message() {
    return message[0 len message.length]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == owner
    require eth.balance(this.address) >= arg2
    require arg1
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function set(string arg1) payable {
    require msg.value >= priceInWei
    require arg1.length <= maxLength
    emit MessageSet(Array(len=arg1.length, data=arg1[all]), priceInWei, 2 * priceInWei, msg.sender);
    bool(stor2.field_0) = 0
    uint255(stor2.field_1) = uint255(stor2.field_0)
    message.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        message[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while message.length + 31 / 32 > idx:
        message[idx] = 0
        idx = idx + 1
        continue 
}



}
