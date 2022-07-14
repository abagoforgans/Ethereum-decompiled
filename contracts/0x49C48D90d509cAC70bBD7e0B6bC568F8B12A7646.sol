contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 stor1;
address reserveTokenAddress;
address coordAddress;
address tokenFactoryAddress;
address stor5;
uint256 stor5;
address oracleAddress;
uint256 winner;
uint256 winValue;
uint8 status;
mapping of address curves;
mapping of uint8 redeemed;
array of uint256 endpoints;

function status() {
    require status <= 4
    return status
}

function endpoints(uint256 arg1) {
    require arg1 < endpoints.length
    return endpoints[arg1]
}

function curves(bytes32 arg1) {
    return curves[arg1]
}

function oracle() {
    return oracleAddress
}

function owner() {
    return owner
}

function coord() {
    return coordAddress
}

function redeemed(address arg1) {
    return redeemed[arg1]
}

function winValue() {
    return winValue
}

function winner() {
    return winner
}

function tokenFactory() {
    return tokenFactoryAddress
}

function reserveToken() {
    return reserveTokenAddress
}

function _fallback() payable {
    revert
}

function bytes32ToString(bytes32 arg1) {
    return 32, 32, arg1
}

function close() {
    require msg.sender == owner
    status = 2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_74e77a81(?) {
    require msg.sender == owner
    require status <= 4
    if status:
        revert with 0, 'Contest already initialized'
    oracleAddress = arg1
    status = 1
}

function judge(bytes32 arg1) {
    require status <= 4
    if status != 2:
        revert with 0, 'not closed'
    if oracleAddress != msg.sender:
        revert with 0, 'not oracle'
    winner = arg1
    status = 3
}

function bytesToAddr(bytes arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    s = 0
    s = 0
    idx = arg1.length - 1
    s = 0
    while idx + 1 > 0:
        require idx < arg1.length
        s = mem[idx + 128 len 1] * 16^(2 * arg1.length + -idx - 1)
        s = mem[idx + 128 len 1]
        idx = idx - 1
        s = s + (mem[idx + 128 len 1] * 16^(2 * arg1.length + -idx - 1))
        continue 
    return address(s)
}

function toBytes(address arg1) {
    mem[128 len 640] = code.data[15297 len 640]
    idx = 0
    while idx < 20:
        require 2^(8 * -idx + 19)
        require idx < 20
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
        idx = idx + 1
        continue 
    return Array(len=20, data=mem[140 len 20])
}

function getTokenAddress(bytes32 arg1) {
    mem[164] = 'REGISTRY'
    require ext_code.size(coordAddress)
    call coordAddress.getContract(string arg1) with:
         gas gas_remaining wei
        args Array(len=8, data='REGISTRY')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x4d9bcac400000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    mem[132] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getProviderParameter(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], address(this.address) << 64 <= 4294967296
    require mem[96 len 4], address(this.address) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(this.address) << 64 + 96] <= 4294967296 and mem[96 len 4], address(this.address) << 64 + mem[mem[96 len 4], address(this.address) << 64 + 96] + 32 <= return_data.size
    s = 0
    s = 0
    idx = mem[mem[96 len 4], address(this.address) << 64 + 96] - 1
    s = 0
    while idx + 1 > 0:
        require idx < mem[mem[96 len 4], address(this.address) << 64 + 96]
        s = mem[mem[96 len 4], address(this.address) << 64 + idx + 128 len 1] * 16^(2 * mem[mem[96 len 4], address(this.address) << 64 + 96] + -idx - 1)
        s = mem[mem[96 len 4], address(this.address) << 64 + idx + 128 len 1]
        idx = idx - 1
        s = s + (mem[mem[96 len 4], address(this.address) << 64 + idx + 128 len 1] * 16^(2 * mem[mem[96 len 4], address(this.address) << 64 + 96] + -idx - 1))
        continue 
    return address(s)
}

function newToken(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x198e2b8a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 260 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 260] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        require ext_code.size(tokenFactoryAddress)
        call tokenFactoryAddress.create(string arg1, string arg2) with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 260 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 96
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 324 len arg2.length % 32]
        require ext_code.size(tokenFactoryAddress)
        call tokenFactoryAddress.create(string arg1, string arg2) with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 260 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function settle() {
    require status <= 4
    if status != 3:
        revert with 0, 'winner not determined'
    require ext_code.size(coordAddress)
    call coordAddress.getContract(string arg1) with:
         gas gas_remaining wei
        args Array(len=7, data='BONDAGE')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
    idx = 0
    s = 0
    while idx < endpoints.length:
        mem[0] = 12
        if endpoints[idx] == winner:
            idx = idx + 1
            s = s
            continue 
        require idx < endpoints.length
        require ext_code.size(address(stor5))
        call address(stor5).getDotsIssued(address arg1, bytes32 arg2) with:
             gas gas_remaining wei
            args address(this.address), endpoints[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < endpoints.length
        mem[0] = 12
        mem[100] = this.address
        mem[132] = endpoints[idx]
        mem[164] = ext_call.return_data[0]
        require ext_code.size(address(stor5))
        call address(stor5).unbond(address arg1, bytes32 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), endpoints[idx], ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
    require ext_code.size(address(stor5))
    call address(stor5).getDotsIssued(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args address(this.address), winner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(reserveTokenAddress)
    call reserveTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    winValue = ext_call.return_data[0] / ext_call.return_data[0]
    status = 4
}

function unbond(bytes32 arg1, uint256 arg2) {
    require status <= 4
    if status != 4:
        revert with 0, ' contest not settled'
    require ext_code.size(coordAddress)
    call coordAddress.getContract(string arg1) with:
         gas gas_remaining wei
        args Array(len=7, data='BONDAGE')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
    require ext_code.size(address(stor5))
    call address(stor5).getDotsIssued(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(coordAddress)
    call coordAddress.getContract(string arg1) with:
         gas gas_remaining wei
        args Array(len=12, data='CURRENT_COST')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).0x197d66d5 with:
         gas gas_remaining wei
        args 0, 0, arg1, ext_call.return_data[0] + -arg2 + 1, arg2 - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor5))
    call address(stor5).unbond(address arg1, bytes32 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(curves[arg1])
    call curves[arg1].burnFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(reserveTokenAddress)
    call reserveTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Error: Transfer failed'
    emit Unbonded(arg1, arg2, msg.sender);
}

function initializeCurve(bytes32 arg1, bytes32 arg2, int256[] arg3) {
    if curves[arg1]:
        revert with 0, 'Curve endpoint already exists'
    require ext_code.size(coordAddress)
    call coordAddress.getContract(string arg1) with:
         gas gas_remaining wei
        args Array(len=8, data='REGISTRY')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isProviderInitiated(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Provider not intiialized'
    mem[(32 * arg3.length) + 260 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).initiateProviderCurve(bytes32 arg1, int256[] arg2, address arg3) with:
         gas gas_remaining wei
        args arg1, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 260 len (32 * arg3.length) - floor32(arg3.length)]), address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenFactoryAddress)
    call tokenFactoryAddress.create(string arg1, string arg2) with:
         gas gas_remaining wei
        args 64, 128, 32, arg1, 32, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    curves[arg1] = address(ext_call.return_data[0])
    mem[(32 * arg3.length) + 416 len 640] = code.data[15297 len 640]
    idx = 0
    while idx < 20:
        require 2^(8 * -idx + 19)
        require idx < 20
        mem[(32 * arg3.length) + idx + 416 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('stor', ('map', ('param', 'arg1'), ('name', 'curves', 10))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('stor', ('map', ('param', 'arg1'), ('name', 'curves', 10))), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
        idx = idx + 1
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setProviderParameter(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args arg1, Array(len=20, data=mem[(32 * arg3.length) + 428 len 20])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DotTokenCreated(curves[arg1]);
    return curves[arg1]
}

function bond(bytes32 arg1, uint256 arg2) {
    require status <= 4
    if status != 1:
        revert with 0, ' contest not live'
    require ext_code.size(coordAddress)
    call coordAddress.getContract(string arg1) with:
         gas gas_remaining wei
        args Array(len=7, data='BONDAGE')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
    require ext_code.size(address(stor5))
    call address(stor5).getDotsIssued(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(coordAddress)
    call coordAddress.getContract(string arg1) with:
         gas gas_remaining wei
        args Array(len=12, data='CURRENT_COST')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x197d66d5 with:
         gas gas_remaining wei
        args 0, 0, arg1, ext_call.return_data[0] + 1, arg2 - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(reserveTokenAddress)
    call reserveTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'insufficient accepted token numDots approved for transfer'
    require ext_code.size(reserveTokenAddress)
    call reserveTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(stor5), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor5))
    call address(stor5).bond(address arg1, bytes32 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(curves[arg1])
    call curves[arg1].mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Bonded(arg1, arg2, msg.sender);
}

function redeem() {
    require status <= 4
    if status != 4:
        revert with 0, 'contest not settled'
    mem[0] = msg.sender
    mem[32] = 11
    if redeemed[address(msg.sender)]:
        revert with 0, 'already redeeemed'
    mem[164] = 'REGISTRY'
    require ext_code.size(coordAddress)
    call coordAddress.getContract(string arg1) with:
         gas gas_remaining wei
        args Array(len=8, data='REGISTRY')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x4d9bcac400000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    mem[132] = winner
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getProviderParameter(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args address(this.address), winner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], address(this.address) << 64 <= 4294967296
    require mem[96 len 4], address(this.address) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(this.address) << 64 + 96] <= 4294967296 and mem[96 len 4], address(this.address) << 64 + mem[mem[96 len 4], address(this.address) << 64 + 96] + 32 <= return_data.size
    s = 0
    s = 0
    idx = mem[mem[96 len 4], address(this.address) << 64 + 96] - 1
    s = 0
    while idx + 1 > 0:
        require idx < mem[mem[96 len 4], address(this.address) << 64 + 96]
        s = mem[mem[96 len 4], address(this.address) << 64 + idx + 128 len 1] * 16^(2 * mem[mem[96 len 4], address(this.address) << 64 + 96] + -idx - 1)
        s = mem[mem[96 len 4], address(this.address) << 64 + idx + 128 len 1]
        idx = idx - 1
        s = s + (mem[mem[96 len 4], address(this.address) << 64 + idx + 128 len 1] * 16^(2 * mem[mem[96 len 4], address(this.address) << 64 + 96] + -idx - 1))
        continue 
    require ext_code.size(address(s))
    call address(s).0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 164] = 'REGISTRY'
    require ext_code.size(coordAddress)
    call coordAddress.getContract(string arg1) with:
         gas gas_remaining wei
        args Array(len=8, data='REGISTRY')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0x4d9bcac400000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = winner
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getProviderParameter(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args address(this.address), winner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 <= 4294967296
    require mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + 32 <= return_data.size
    require mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96] + 32 <= return_data.size
    s = 0
    s = 0
    idx = mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96] - 1
    s = 0
    while idx + 1 > 0:
        require idx < mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96]
        s = mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + idx + 128 len 1] * 16^(2 * mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96] + -idx - 1)
        s = mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + idx + 128 len 1]
        idx = idx - 1
        s = s + (mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + idx + 128 len 1] * 16^(2 * mem[mem[ceil32(return_data.size) + 96 len 4], address(this.address) << 64 + ceil32(return_data.size) + 96] + -idx - 1))
        continue 
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = winValue * ext_call.return_data[0]
    require ext_code.size(address(s))
    call address(s).0xa9059cbb with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    redeemed[address(msg.sender)] = 1
}



}
