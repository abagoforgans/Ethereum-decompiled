contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
uint256 stor4;

function _fallback() payable {
    stor0 = msg.sender
    stor2 = msg.sender
    stor4 = 3 * 10^16
    require not msg.value
    return code.data[85 len 2676]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address delegateAddress;
mapping of uint256 stor3;
uint256 fee;
mapping of address stor99;

function owner() {
    return owner
}

function delegate() {
    return delegateAddress
}

function certified(address arg1) {
    return bool(stor1[address(arg1)])
}

function fee() {
    return fee
}

function _fallback() payable {
    revert
}

function setFee(uint256 arg1) {
    if owner == msg.sender:
        fee = arg1
}

function setDelegate(address arg1) {
    if owner == msg.sender:
        delegateAddress = arg1
}

function setOwner(address arg1) {
    if owner == msg.sender:
        emit NewOwner(owner, arg1);
        owner = arg1
}

function certify(address arg1) {
    require delegateAddress == msg.sender
    stor1[address(arg1)] = 1
    emit Confirmed(arg1);
}

function puzzle(address arg1, bytes32 arg2) {
    require delegateAddress == msg.sender
    stor3[address(arg1)] = arg2
    emit Puzzled(address(arg1), arg2);
}

function revoke(address arg1) {
    require delegateAddress == msg.sender
    if stor1[address(arg1)]:
        stor1[address(arg1)] = 0
        emit Revoked(arg1);
}

function request() payable {
    if msg.value < fee:
        emit RequiredFeeNotMet(fee, msg.value);
    else:
        if not stor1[address(msg.sender)]:
            emit Requested(msg.sender);
}

function drain() {
    if owner == msg.sender:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function confirm(bytes32 arg1) {
    emit LogAddress(msg.sender);
    if stor3[address(msg.sender)] != sha3(arg1):
        return 0
    stor3[address(msg.sender)] = 0
    stor1[address(msg.sender)] = 1
    emit Confirmed(msg.sender);
    return 1
}

function get(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = sha3(address(arg1), 1) + 1
    mem[ceil32(arg2.length) + 128] = uint256(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function getUint(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = sha3(address(arg1), 1) + 1
    mem[ceil32(arg2.length) + 128] = uint256(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function getAddress(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = sha3(address(arg1), 1) + 1
    mem[ceil32(arg2.length) + 128] = address(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}



}
