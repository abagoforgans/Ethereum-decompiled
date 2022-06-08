contract main {




// =====================  Runtime code  =====================


address owner;
address targetAddress;
mapping of uint8 stor2;

function owner() {
    return owner
}

function initialized(address arg1) {
    return bool(stor2[arg1])
}

function target() {
    return targetAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function upgradeTo(address arg1) {
    require msg.sender == owner
    require targetAddress != arg1
    targetAddress = arg1
    emit EventUpgrade(arg1, targetAddress, msg.sender);
}

function _fallback() payable {
    delegate targetAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeTo(address arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == owner
    require targetAddress != arg1
    targetAddress = arg1
    emit EventUpgrade(arg1, targetAddress, msg.sender);
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        delegate targetAddress.mem[ceil32(arg2.length) + 128 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        delegate targetAddress.mem[ceil32(arg2.length) + 128 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
    require delegate.return_code
}



}
