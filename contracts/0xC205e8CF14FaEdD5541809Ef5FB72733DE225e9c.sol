contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor2;
mapping of address stor99;

function frozen() {
    return bool(stor2)
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
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function freeze() {
    require msg.sender == owner
    if stor2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot perform action for a frozen implementation directory'
    stor2 = 1
    emit Frozen()
}

function getImplementation(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function unsetImplementation(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    if stor2:
        revert with 0, 'Cannot perform action for a frozen implementation directory'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = 0
    emit ImplementationChanged(string arg1, address arg2):
                               Array(len=arg1.length, data=arg1[all]),
    emit 0x0: Array(len=arg1.length, data=arg1[all])
}

function setImplementation(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    if stor2:
        revert with 0, 'Cannot perform action for a frozen implementation directory'
    if ext_code.size(arg2) <= 0:
        revert with 0, 'Cannot set implementation in directory with a non-contract address'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = arg2
    emit ImplementationChanged(Array(len=arg1.length, data=arg1[all]), arg2);
}



}
