contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 publications;
mapping of uint8 stor2;

function publications(bytes32 arg1) {
    return publications[arg1][0 len publications[arg1].length]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function publish(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    _54 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    require not stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]
    publications[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]][] = Array(len=arg1.length, data=arg1[all])
    stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] = 1
    emit Publication(Array(len=arg1.length, data=arg1[all]), _54);
    return _54
}



}
