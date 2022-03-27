contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() payable {
    stor0 = msg.sender
    stor2 = msg.sender
    require not msg.value
    return code.data[68 len 1716]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address delegateAddress;
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

function _fallback() payable {
    revert 
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
    if delegateAddress == msg.sender:
        stor1[address(arg1)] = 1
        emit Confirmed(arg1);
}

function revoke(address arg1) {
    if delegateAddress == msg.sender:
        if stor1[address(arg1)]:
            stor1[address(arg1)] = 0
            emit Revoked(arg1);
}

function get(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(address(arg1), 1) + 1
    mem[ceil32(arg2.length) + 128] = uint256(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function getUint(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(address(arg1), 1) + 1
    mem[ceil32(arg2.length) + 128] = uint256(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function getAddress(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(address(arg1), 1) + 1
    mem[ceil32(arg2.length) + 128] = address(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}



}
