contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[58 len 2067]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of address stor99;

function owner() {
    return owner
}

function certified(address arg1) {
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
    emit NewOwner(arg1, arg1);
}

function revoke(address arg1) {
    if stor1[address(arg1)]:
        stor1[address(arg1)] = 0
        emit Revoked(arg1);
}

function certify(address arg1) {
    require owner == msg.sender
    if not stor1[address(arg1)]:
        stor1[address(arg1)] = 1
        emit Confirmed(arg1);
}

function get(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = sha3(address(arg1), 1) + 1
    mem[ceil32(arg2.length) + 128] = uint256(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_5241a89c(?) {
    mem[128 len arg2.length] = arg2[all]
    require owner == msg.sender
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = sha3(address(arg1), 1) + 1
    uint256(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]) = arg3
    emit 0x9c99d3a4: address(arg1), Array(len=arg2.length, data=arg2[all]), arg3
}

function getUint(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = sha3(address(arg1), 1) + 1
    mem[ceil32(arg2.length) + 128] = uint256(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function getAddress(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = sha3(address(arg1), 1) + 1
    mem[ceil32(arg2.length) + 128] = address(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}



}
