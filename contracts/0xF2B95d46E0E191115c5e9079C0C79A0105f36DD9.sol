contract main {




// =====================  Runtime code  =====================


#
#  - subdomainTarget(string arg1, string arg2, string arg3)
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 stor1;
mapping of address stor99;

function owner() {
    return owner
}

function locked() {
    return bool(uint8(stor0.field_160))
}

function _fallback() payable {
    revert
}

function sub_e928b325(?) {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit 0xc61d4748 
}

function lockDomainOwnershipTransfers() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit DomainTransfersLocked()
}

function transferContractOwnership(address arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'cannot transfer to address(0)'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_19e5b7c2(?) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 3
    if stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] == arg2:
        revert with 0, 'new resolver should be different from old'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 3
    emit ResolverUpdated(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]], arg2);
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 3
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = arg2
}

function sub_4568f665(?) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    if stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] == arg2:
        revert with 0, 'new registry should be different from old'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    emit RegistryUpdated(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]], arg2);
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = arg2
}

function sub_a20f160c(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    require stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 3
    require stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
    require msg.sender == owner
    require not uint8(stor0.field_160)
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    require ext_code.size(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    call stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].setOwner(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function domainOwner(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg2.length
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(2 * floor32(arg2.length)) + ceil32(arg1.length) + ceil32(arg2.length) + 224 len arg2.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
    _118 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 192 len arg2.length % 32])
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 192] = 64
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 288 len 64] = stor1, _118
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len 0] = None
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 352 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 352 len arg1.length % 32] = mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + floor32(arg1.length) + 352 len arg1.length % 32]
    _240 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 320 len arg1.length % 32])
    mem[arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 416 len 64] = sha3(stor1, _118), sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 320 len arg1.length % 32])
    mem[arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 512 len 0] = None
    mem[arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 416 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[arg1.length + (2 * floor32(arg2.length)) + ceil32(arg1.length) + ceil32(arg2.length) + 448 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    mem[(2 * arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 416] = 2
    require ext_code.size(stor[mem[arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 416 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
    call stor[mem[arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 416 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]].owner(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(stor1, _118), _240)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function subdomainOwner(string arg1, string arg2, string arg3) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = arg3.length
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(2 * floor32(arg3.length)) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
    _163 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 224 len arg3.length % 32])
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = 64
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320 len 64] = stor1, _163
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416 len 0] = None
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(2 * floor32(arg2.length)) + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384 len arg2.length % 32] = mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + floor32(arg2.length) + 384 len arg2.length % 32]
    _351 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 352 len arg2.length % 32])
    mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448 len 64] = sha3(stor1, _163), sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 352 len arg2.length % 32])
    mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = None or mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512]
    mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 512 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg1.length % 32] = mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + floor32(arg1.length) + 512 len arg1.length % 32]
    _473 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 480 len arg1.length % 32])
    mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len 64] = sha3(sha3(stor1, _163), _351), sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 480 len arg1.length % 32])
    mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 672 len 0] = None
    mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[arg1.length + arg2.length + (2 * floor32(arg3.length)) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
    mem[(2 * arg3.length) + arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 2
    require ext_code.size(stor[mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 576 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]])
    call stor[mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 576 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]].owner(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(stor1, _163), _351), _473)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function newSubdomain(string arg1, string arg2, string arg3, address arg4, address arg5) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 2
    require stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 192 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 3
    require stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 192 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = arg3.length
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(2 * floor32(arg3.length)) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + floor32(arg3.length) + 256 len arg3.length % 32]
    _1088 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 224 len arg3.length % 32])
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = 64
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320 len 64] = stor1, _1088
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 416 len 0] = None
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 384 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(2 * floor32(arg2.length)) + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    _1828 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 352 len arg2.length % 32])
    mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448 len 64] = sha3(stor1, _1088), sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 352 len arg2.length % 32])
    mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len 0] = None
    mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[arg2.length + (2 * floor32(arg3.length)) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
    mem[(2 * arg3.length) + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = 2
    _2285 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 448 len (arg3.length % 32) + 32])
    mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 452] = sha3(sha3(stor1, _1088), _1828)
    require ext_code.size(stor[_2285])
    call stor[_2285].owner(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(stor1, _1088), _1828)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != this.address:
        revert with 0, 'this contract should own the domain'
    mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 512 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len arg1.length % 32] = mem[arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + floor32(arg1.length) + 512 len arg1.length % 32]
    _2706 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 480 len arg1.length % 32])
    mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len 64] = sha3(sha3(stor1, _1088), _1828), sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 480 len arg1.length % 32])
    mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 672 len 0] = None
    mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[arg1.length + arg2.length + (2 * floor32(arg3.length)) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
    mem[(2 * arg3.length) + arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 2
    _3093 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 576 len (arg3.length % 32) + 32])
    mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 580] = sha3(sha3(sha3(stor1, _1088), _1828), _2706)
    require ext_code.size(stor[_3093])
    call stor[_3093].owner(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(stor1, _1088), _1828), _2706)
    mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[arg1.length + arg2.length + (2 * floor32(arg3.length)) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
    mem[(2 * arg3.length) + arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 2
    if not address(ext_call.return_data[0]):
        _3275 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 576 len (arg3.length % 32) + 32])
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 0x6ab592300000000000000000000000000000000000000000000000000000000
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 580] = sha3(sha3(stor1, _1088), _1828)
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 612] = _2706
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 644] = this.address
        require ext_code.size(stor[_3275])
        call stor[_3275].setSubnodeOwner(bytes32 arg1, bytes32 arg2, address arg3) with:
             gas gas_remaining wei
            args sha3(sha3(stor1, _1088), _1828), _2706, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[arg1.length + arg2.length + (2 * floor32(arg3.length)) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
        mem[(2 * arg3.length) + arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 2
        _3444 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 576 len (arg3.length % 32) + 32])
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[arg1.length + arg2.length + (2 * floor32(arg3.length)) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
        mem[(2 * arg3.length) + arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 3
        _3591 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 576 len (arg3.length % 32) + 32])
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 0x1896f70a00000000000000000000000000000000000000000000000000000000
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 580] = sha3(sha3(sha3(stor1, _1088), _1828), _2706)
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 612] = stor[_3591]
        require ext_code.size(stor[_3444])
        call stor[_3444].setResolver(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3(sha3(sha3(stor1, _1088), _1828), _2706), stor[_3591]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[arg1.length + arg2.length + (2 * floor32(arg3.length)) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
        mem[(2 * arg3.length) + arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 3
        _3722 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 576 len (arg3.length % 32) + 32])
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 0xd5fa2b0000000000000000000000000000000000000000000000000000000000
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 580] = sha3(sha3(sha3(stor1, _1088), _1828), _2706)
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 612] = arg5
        require ext_code.size(stor[_3722])
        call stor[_3722].setAddr(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3(sha3(sha3(stor1, _1088), _1828), _2706), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[arg1.length + arg2.length + (2 * floor32(arg3.length)) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
        mem[(2 * arg3.length) + arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 2
        require ext_code.size(stor[mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 576 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]])
        call stor[mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 576 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]].setOwner(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3(sha3(sha3(stor1, _1088), _1828), _2706), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        # nil
    else:
        _3282 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 576 len (arg3.length % 32) + 32])
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 580] = sha3(sha3(sha3(stor1, _1088), _1828), _2706)
        require ext_code.size(stor[_3282])
        call stor[_3282].owner(bytes32 arg1) with:
             gas gas_remaining wei
            args sha3(sha3(sha3(stor1, _1088), _1828), _2706)
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != msg.sender:
            revert with 0, 'sub domain already owned'
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[arg1.length + arg2.length + (2 * floor32(arg3.length)) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
        mem[(2 * arg3.length) + arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 2
        _3451 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 576 len (arg3.length % 32) + 32])
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 0x6ab592300000000000000000000000000000000000000000000000000000000
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 580] = sha3(sha3(stor1, _1088), _1828)
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 612] = _2706
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 644] = this.address
        require ext_code.size(stor[_3451])
        call stor[_3451].setSubnodeOwner(bytes32 arg1, bytes32 arg2, address arg3) with:
             gas gas_remaining wei
            args sha3(sha3(stor1, _1088), _1828), _2706, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[arg1.length + arg2.length + (2 * floor32(arg3.length)) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
        mem[(2 * arg3.length) + arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 2
        _3598 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 576 len (arg3.length % 32) + 32])
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[arg1.length + arg2.length + (2 * floor32(arg3.length)) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
        mem[(2 * arg3.length) + arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 3
        _3729 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 576 len (arg3.length % 32) + 32])
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 0x1896f70a00000000000000000000000000000000000000000000000000000000
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 580] = sha3(sha3(sha3(stor1, _1088), _1828), _2706)
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 612] = stor[_3729]
        require ext_code.size(stor[_3598])
        call stor[_3598].setResolver(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3(sha3(sha3(stor1, _1088), _1828), _2706), stor[_3729]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[arg1.length + arg2.length + (2 * floor32(arg3.length)) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
        mem[(2 * arg3.length) + arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 3
        _3844 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 576 len (arg3.length % 32) + 32])
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 0xd5fa2b0000000000000000000000000000000000000000000000000000000000
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 580] = sha3(sha3(sha3(stor1, _1088), _1828), _2706)
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 612] = arg5
        require ext_code.size(stor[_3844])
        call stor[_3844].setAddr(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3(sha3(sha3(stor1, _1088), _1828), _2706), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[arg1.length + arg2.length + (2 * floor32(arg3.length)) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 608 len arg3.length % 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
        mem[(2 * arg3.length) + arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 576] = 2
        require ext_code.size(stor[mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 576 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]])
        call stor[mem[arg1.length + arg2.length + arg3.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 576 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]].setOwner(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3(sha3(sha3(stor1, _1088), _1828), _2706), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        # nil
}



}
