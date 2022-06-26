contract main {




// =====================  Runtime code  =====================


const sub_3315ad59(?) = (17520 * 24 * 3600)

const ERC721_Received = 0x150b7a0200000000000000000000000000000000000000000000000000000000


address owner;
mapping of uint256 sub_4669697a;
address estateRegistryAddress;
address operatorAddress;
address targetAddress;

function sub_4669697a(?) {
    return sub_4669697a[Mask(32, 224, arg1)]
}

function operator() {
    return operatorAddress
}

function owner() {
    return owner
}

function target() {
    return targetAddress
}

function estateRegistry() {
    return estateRegistryAddress
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    if estateRegistryAddress != msg.sender:
        revert with 0, 'Token not accepted'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function unvest(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    if operatorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Permission denied'
    emit TargetChanged(msg.sender, targetAddress, address(arg1));
    targetAddress = address(arg1)
}

function _fallback() {
    if operatorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Permission denied'
    else:
        if sub_4669697a[call.func_hash] >= block.timestamp:
            if owner != msg.sender:
                revert with 0, 'Permission denied'
    call targetAddress with:
       funct call.data[0 len 4]
         gas gas_remaining - 10000 wei
        args call.data[4 len calldata.size - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function sub_e24e0dfd(?) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    if arg2 <= 0:
        revert with 0, 'Time should be greater than 0'
    if arg2 > 17520 * 24 * 3600:
        revert with 0, 'Time should be lower than 2 years'
    mem[ceil32(arg1.length) + 128] = 4
    mem[ceil32(arg1.length) + 164 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 196 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _35 = Mask(32, 224, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 164 len arg1.length % 32])) >> 224, mem[ceil32(arg1.length) + 164 len 28]
    sub_4669697a[Mask(32, 224, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 164, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = block.timestamp + arg2
    emit MethodDisabled(Array(len=arg1.length, data=arg1[all]), msg.sender, Mask(32, 224, _35));
}

function sub_53c8d4df(?) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128] = 4
    mem[ceil32(arg1.length) + 164 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 196 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _34 = Mask(32, 224, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 164 len arg1.length % 32])) >> 224, mem[ceil32(arg1.length) + 164 len 28]
    if sub_4669697a[Mask(32, 224, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 164, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] < block.timestamp:
        revert with 0, 'Method is already allowed'
    sub_4669697a[Mask(32, 224, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 164, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = 0
    emit MethodAllowed(Array(len=arg1.length, data=arg1[all]), msg.sender, Mask(32, 224, _34));
}



}
