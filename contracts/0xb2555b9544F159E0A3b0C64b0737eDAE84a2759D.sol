contract main {




// =====================  Runtime code  =====================


#
#  - sub_b1416d67(?)
#
const name = 'BUSD'

const decimals = 2

const symbol = 'BUSD'


uint256 totalSupply;
array of struct balanceOf;
array of uint256 stor11;
array of uint256 stor15;
array of uint256 stor16;
array of uint256 stor17;
array of uint256 stor18;
array of uint256 stor2;
mapping of address sub_20c38e2b;

function totalSupply() {
    return totalSupply
}

function sub_20c38e2b(?) {
    return sub_20c38e2b[arg1]
}

function balanceOf(address arg1) {
    return uint256(balanceOf[address(arg1)].field_512)
}

function sub_36f2c437(?) {
  stop
}

function acceptUpgrade() {
  stop
}

function _fallback() payable {
    revert
}

function sub_ad7c77db(?) {
    require arg1 < 2
    return stor15[arg1], stor16[arg1], stor17[arg1]
}

function sub_aa841b6e(?) {
    require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
    delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0xc7132c44 with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function pause(bool arg1) {
    require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
    delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0x704e5fdd with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeProposal(uint256 arg1, uint256 arg2) {
    require arg1 < 2
    require ext_code.size(0x99e6872372bf75026f0a8291c25dd9b084c8f07b)
    delegate 0x99e6872372bf75026f0a8291c25dd9b084c8f07b.0x8a038235 with:
         gas gas_remaining wei
        args 0, (6 * arg1) + 14, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_dc5b1daa(?) {
    require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
    delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0x9fef477 with:
         gas gas_remaining wei
        args 0, arg1, 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_a261c985(?) {
    require arg1 < 2
    require ext_code.size(0x99e6872372bf75026f0a8291c25dd9b084c8f07b)
    delegate 0x99e6872372bf75026f0a8291c25dd9b084c8f07b.0xe53149e2 with:
         gas gas_remaining wei
        args ((6 * arg1) + 14)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12)
    delegate 0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12.0xa7b64b15 with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getFeeRate() {
    return uint8(stor2.length), 
           uint8(stor2.length),
           uint8(stor2.length),
           uint8(stor2.length),
           uint8(stor2.length.field_16),
           uint8(stor2.length),
           uint8(stor2.length),
           uint32(stor2.length),
           uint32(stor2.length),
           uint8(stor2.length),
           uint16(stor2.length),
           uint16(stor2.length.field_152)
}

function approveEscrow(address arg1, uint256 arg2) {
    require ext_code.size(0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12)
    delegate 0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12.0xef0cfae5 with:
         gas gas_remaining wei
        args 0, 0, address(arg1), arg2, 7, 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function vote(uint256 arg1, uint256 arg2, bool arg3) {
    require arg1 < 2
    require ext_code.size(0x99e6872372bf75026f0a8291c25dd9b084c8f07b)
    delegate 0x99e6872372bf75026f0a8291c25dd9b084c8f07b.0xfa57109d with:
         gas gas_remaining wei
        args 0, 0, (6 * arg1) + 14, arg2, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_3650fe5d(?) {
    require arg1 < 2
    require arg2 < stor18[arg1]
    return uint8(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 7].field_0), 
           uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 8].field_0),
           bool(uint8(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 9].field_0)),
           bool(uint8(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 9].field_8)),
           uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 10].field_0),
           uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 11].field_0)
}

function sub_141e02e6(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    require ext_code.size(0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12)
    delegate 0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12.0x59d915b7 with:
         gas gas_remaining wei
        args 0, sub_20c38e2b[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]], arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return Mask(8, 248, delegate.return_data[0])
}

function sub_fa9f8230(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    require ext_code.size(0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12)
    delegate 0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12.0xef0cfae5 with:
         gas gas_remaining wei
        args 0, sub_20c38e2b[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]], arg2, arg3, Mask(8, 248, arg4)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function getParent() {
    mem[96] = 0x5f55335a00000000000000000000000000000000000000000000000000000000
    mem[100] = 0
    require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
    delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0x5f55335a with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + mem[mem[96 len 4], 0 + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _8 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _8 + 32]
    mem[floor32(_8) + ceil32(return_data.size) + 160] = mem[floor32(_8) + ceil32(return_data.size) + -(_8 % 32) + 192 len _8 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_8) + 64]
}

function sub_29959a91(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0x7ca7c9b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
        delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0x7ca7c9b with:
             gas gas_remaining wei
            args 0, 64, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 228] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 260 len arg1.length % 32]
        require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
        delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0x7ca7c9b with:
             gas gas_remaining wei
            args 0, 64, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 228 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b79f680c(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0x9f8366e00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
        delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0x9f8366e with:
             gas gas_remaining wei
            args 0, 64, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 228] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 260 len arg1.length % 32]
        require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
        delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0x9f8366e with:
             gas gas_remaining wei
            args 0, 64, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 228 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_547e1b1a(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0x8a3ac60400000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
        delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0x8a3ac604 with:
             gas gas_remaining wei
            args 0, 64, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 228] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 260 len arg1.length % 32]
        require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
        delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0x8a3ac604 with:
             gas gas_remaining wei
            args 0, 64, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 228 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b5943efe(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0xac003bdd00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
        delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0xac003bdd with:
             gas gas_remaining wei
            args 0, 64, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 228] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 260 len arg1.length % 32]
        require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
        delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0xac003bdd with:
             gas gas_remaining wei
            args 0, 64, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 228 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f489584a(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0xdd75686300000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 260 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        require ext_code.size(0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9)
        delegate 0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9.0xdd756863 with:
             gas gas_remaining wei
            args 0, 96, Mask(8, 248, arg2), arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 260] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 292 len arg1.length % 32]
        require ext_code.size(0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9)
        delegate 0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9.0xdd756863 with:
             gas gas_remaining wei
            args 0, 96, Mask(8, 248, arg2), arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 260 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_47602010(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0xb269e44600000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
        delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0xb269e446 with:
             gas gas_remaining wei
            args 0, 64, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 228] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 260 len arg1.length % 32]
        require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
        delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0xb269e446 with:
             gas gas_remaining wei
            args 0, 64, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 228 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function transfer(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = 0xde81048300000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 356 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
        delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0xde810483 with:
             gas gas_remaining wei
            args 0, msg.sender, address(arg1), arg2, 0, 192, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 356] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 388 len arg3.length % 32]
        require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
        delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0xde810483 with:
             gas gas_remaining wei
            args 0, msg.sender, address(arg1), arg2, 0, 192, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 356 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3, string arg4) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = 0xde81048300000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 356 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
        delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0xde810483 with:
             gas gas_remaining wei
            args 0, address(arg1), address(arg2), arg3, 0, 192, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + 356] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 388 len arg4.length % 32]
        require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
        delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0xde810483 with:
             gas gas_remaining wei
            args 0, address(arg1), address(arg2), arg3, 0, 192, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 356 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_a4fa810d(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[0] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 160 len arg1.length % 32])
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = 0xde81048300000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 388 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
        delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0xde810483 with:
             gas gas_remaining wei
            args 0, msg.sender, sub_20c38e2b[mem[0]], arg2, 0, 192, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[ceil32(arg1.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg1.length) + ceil32(arg3.length) + 388] = mem[floor32(arg3.length) + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 420 len arg3.length % 32]
        require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
        delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0xde810483 with:
             gas gas_remaining wei
            args 0, msg.sender, sub_20c38e2b[mem[0]], arg2, 0, 192, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg1.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg3.length)) + 388 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_55294b5a(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[32] = 11
    _177 = sha3(sub_20c38e2b[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]], 11)
    mem[64] = ceil32(arg1.length) + ceil32(stor11[stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]].length) + 160
    mem[ceil32(arg1.length) + 128] = stor11[stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]].length
    mem[0] = _177
    mem[ceil32(arg1.length) + 160] = uint256(stor[sha3(_177)].field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor[_177].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_177) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    _350 = mem[64]
    mem[64] = mem[64] + ceil32(stor[_177 + 1].length) + 32
    mem[_350] = stor[_177 + 1].length
    mem[0] = _177 + 1
    mem[_350 + 32] = uint256(stor[sha3(_177 + 1)].field_0)
    idx = _350 + 32
    s = 0
    while _350 + stor[_177 + 1].length > idx:
        mem[idx + 32] = uint256(stor[s + sha3(_177 + 1) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    _531 = mem[64]
    mem[mem[64] + 64] = uint256(stor2[_177].field_0)
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[ceil32(arg1.length) + 128]
    _533 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 128 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not _533 % 32:
        mem[mem[64] + 32] = _533 + 128
        mem[_533 + _531 + 128] = stor[_177 + 1].length
        mem[_533 + _531 + 160 len ceil32(stor[_177 + 1].length)] = mem[_350 + 32 len ceil32(stor[_177 + 1].length)]
        if not stor[_177 + 1].length % 32:
            return memory
              from mem[64]
               len stor[_177 + 1].length + _533 + _531 + -mem[64] + 160
        mem[floor32(stor[_177 + 1].length) + _533 + _531 + 160] = mem[floor32(stor[_177 + 1].length) + _533 + _531 + -stor[_177 + 1].length % 32 + 192 len stor[_177 + 1].length % 32]
        return memory
          from mem[64]
           len floor32(stor[_177 + 1].length) + _533 + _531 + -mem[64] + 192
    mem[floor32(_533) + mem[64] + 128] = mem[floor32(_533) + mem[64] + -(_533 % 32) + 160 len _533 % 32]
    mem[mem[64] + 32] = floor32(_533) + 160
    mem[floor32(_533) + _531 + 160] = stor[_177 + 1].length
    mem[floor32(_533) + _531 + 192 len ceil32(stor[_177 + 1].length)] = mem[_350 + 32 len ceil32(stor[_177 + 1].length)]
    if not stor[_177 + 1].length % 32:
        return memory
          from mem[64]
           len stor[_177 + 1].length + floor32(_533) + _531 + -mem[64] + 192
    mem[floor32(stor[_177 + 1].length) + floor32(_533) + _531 + 192] = mem[floor32(stor[_177 + 1].length) + floor32(_533) + _531 + -stor[_177 + 1].length % 32 + 224 len stor[_177 + 1].length % 32]
    return memory
      from mem[64]
       len floor32(stor[_177 + 1].length) + floor32(_533) + _531 + -mem[64] + 224
}

function sub_e432c360(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0xa7d3ee600000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 324 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 356 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
            delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0xa7d3ee6 with:
                 gas gas_remaining wei
                args 0, 128, arg1.length + 160, arg3, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 324 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
            require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
            delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0xa7d3ee6 with:
                 gas gas_remaining wei
                args 0, 128, arg1.length + 160, arg3, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 324 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 324] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 356 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 388 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
            delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0xa7d3ee6 with:
                 gas gas_remaining wei
                args 0, 128, floor32(arg1.length) + 192, arg3, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 324 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 388] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 420 len arg2.length % 32]
            require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
            delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0xa7d3ee6 with:
                 gas gas_remaining wei
                args 0, 128, floor32(arg1.length) + 192, arg3, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 324 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2e563297(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x2fb5403800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            require ext_code.size(0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12)
            delegate 0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12.0x2fb54038 with:
                 gas gas_remaining wei
                args 0, 96, arg1.length + 128, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
            require ext_code.size(0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12)
            delegate 0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12.0x2fb54038 with:
                 gas gas_remaining wei
                args 0, 96, arg1.length + 128, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 324 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 324] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            require ext_code.size(0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12)
            delegate 0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12.0x2fb54038 with:
                 gas gas_remaining wei
                args 0, 96, floor32(arg1.length) + 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
            require ext_code.size(0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12)
            delegate 0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12.0x2fb54038 with:
                 gas gas_remaining wei
                args 0, 96, floor32(arg1.length) + 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_d4f7323a(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x1da1945200000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            require ext_code.size(0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12)
            delegate 0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12.0x1da19452 with:
                 gas gas_remaining wei
                args 0, 96, arg1.length + 128, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
            require ext_code.size(0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12)
            delegate 0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12.0x1da19452 with:
                 gas gas_remaining wei
                args 0, 96, arg1.length + 128, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 324 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 324] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            require ext_code.size(0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12)
            delegate 0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12.0x1da19452 with:
                 gas gas_remaining wei
                args 0, 96, floor32(arg1.length) + 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
            require ext_code.size(0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12)
            delegate 0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12.0x1da19452 with:
                 gas gas_remaining wei
                args 0, 96, floor32(arg1.length) + 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_4a761a6e(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0xaa77e7e300000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 292] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            require ext_code.size(0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12)
            delegate 0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12.0xaa77e7e3 with:
                 gas gas_remaining wei
                args 0, 96, arg1.length + 128, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
            require ext_code.size(0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12)
            delegate 0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12.0xaa77e7e3 with:
                 gas gas_remaining wei
                args 0, 96, arg1.length + 128, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 292] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 324 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 324] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            require ext_code.size(0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12)
            delegate 0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12.0xaa77e7e3 with:
                 gas gas_remaining wei
                args 0, 96, floor32(arg1.length) + 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
            require ext_code.size(0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12)
            delegate 0xdda40ebd1e85ba1cb668eb0d1e55520de5d9ca12.0xaa77e7e3 with:
                 gas gas_remaining wei
                args 0, 96, floor32(arg1.length) + 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 292 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    return Mask(8, 248, delegate.return_data[0]), 
           bool(delegate.return_data[32]),
           bool(delegate.return_data[64]),
           delegate.return_data[96],
           delegate.return_data[128],
           delegate.return_data[160]
}

function details(address arg1) {
    mem[32] = 10
    mem[96] = balanceOf[address(arg1)][5].length
    mem[128] = uint256(balanceOf[address(arg1)][5].field_0)
    idx = 128
    s = 0
    while balanceOf[address(arg1)][5].length + 96 > idx:
        mem[idx + 32] = uint256(balanceOf[address(arg1)][s + 5].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(balanceOf[address(arg1)][5].length) + ceil32(balanceOf[address(arg1)][6].length) + 160
    mem[ceil32(balanceOf[address(arg1)][5].length) + 128] = balanceOf[address(arg1)][6].length
    mem[0] = sha3(address(arg1), 10) + 6
    mem[ceil32(balanceOf[address(arg1)][5].length) + 160] = uint256(balanceOf[address(arg1)][6].field_0)
    idx = ceil32(balanceOf[address(arg1)][5].length) + 160
    s = 0
    while ceil32(balanceOf[address(arg1)][5].length) + balanceOf[address(arg1)][6].length + 128 > idx:
        mem[idx + 32] = uint256(balanceOf[address(arg1)][s + 6].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(balanceOf[address(arg1)][5].length) + ceil32(balanceOf[address(arg1)][6].length) + 160] = uint256(balanceOf[address(arg1)].field_512)
    mem[ceil32(balanceOf[address(arg1)][5].length) + ceil32(balanceOf[address(arg1)][6].length) + 192] = bool(uint8(balanceOf[address(arg1)].field_1024))
    mem[ceil32(balanceOf[address(arg1)][5].length) + ceil32(balanceOf[address(arg1)][6].length) + 224] = uint256(balanceOf[address(arg1)].field_768)
    mem[ceil32(balanceOf[address(arg1)][5].length) + ceil32(balanceOf[address(arg1)][6].length) + 320] = Mask(8, 248, uint8(balanceOf[address(arg1)].field_1792))
    mem[ceil32(balanceOf[address(arg1)][5].length) + ceil32(balanceOf[address(arg1)][6].length) + 256] = 192
    mem[ceil32(balanceOf[address(arg1)][5].length) + ceil32(balanceOf[address(arg1)][6].length) + 352] = balanceOf[address(arg1)][5].length
    mem[ceil32(balanceOf[address(arg1)][5].length) + ceil32(balanceOf[address(arg1)][6].length) + 384 len ceil32(balanceOf[address(arg1)][5].length)] = mem[128 len ceil32(balanceOf[address(arg1)][5].length)]
    mem[ceil32(balanceOf[address(arg1)][5].length) + ceil32(balanceOf[address(arg1)][6].length) + 288] = balanceOf[address(arg1)][5].length + 224
    mem[balanceOf[address(arg1)][5].length + ceil32(balanceOf[address(arg1)][5].length) + ceil32(balanceOf[address(arg1)][6].length) + 384] = balanceOf[address(arg1)][6].length
    mem[balanceOf[address(arg1)][5].length + ceil32(balanceOf[address(arg1)][5].length) + ceil32(balanceOf[address(arg1)][6].length) + 416 len ceil32(balanceOf[address(arg1)][6].length)] = mem[ceil32(balanceOf[address(arg1)][5].length) + 160 len ceil32(balanceOf[address(arg1)][6].length)]
    if not balanceOf[address(arg1)][6].length % 32:
        return uint256(balanceOf[address(arg1)].field_512), 
               bool(uint8(balanceOf[address(arg1)].field_1024)),
               uint256(balanceOf[address(arg1)].field_768),
               Array(len=balanceOf[address(arg1)][5].length, data=mem[128 len ceil32(balanceOf[address(arg1)][5].length)], mem[(2 * ceil32(balanceOf[address(arg1)][5].length)) + ceil32(balanceOf[address(arg1)][6].length) + 384 len balanceOf[address(arg1)][6].length + balanceOf[address(arg1)][5].length + -ceil32(balanceOf[address(arg1)][5].length) + 32]),
               balanceOf[address(arg1)][5].length + 224,
               Mask(8, 248, uint8(balanceOf[address(arg1)].field_1792))
    mem[floor32(balanceOf[address(arg1)][6].length) + balanceOf[address(arg1)][5].length + ceil32(balanceOf[address(arg1)][5].length) + ceil32(balanceOf[address(arg1)][6].length) + 416] = mem[floor32(balanceOf[address(arg1)][6].length) + balanceOf[address(arg1)][5].length + ceil32(balanceOf[address(arg1)][5].length) + ceil32(balanceOf[address(arg1)][6].length) + -balanceOf[address(arg1)][6].length % 32 + 448 len balanceOf[address(arg1)][6].length % 32]
    return uint256(balanceOf[address(arg1)].field_512), 
           bool(uint8(balanceOf[address(arg1)].field_1024)),
           uint256(balanceOf[address(arg1)].field_768),
           Array(len=balanceOf[address(arg1)][5].length, data=mem[128 len ceil32(balanceOf[address(arg1)][5].length)], mem[(2 * ceil32(balanceOf[address(arg1)][5].length)) + ceil32(balanceOf[address(arg1)][6].length) + 384 len floor32(balanceOf[address(arg1)][6].length) + balanceOf[address(arg1)][5].length + -ceil32(balanceOf[address(arg1)][5].length) + 64]),
           balanceOf[address(arg1)][5].length + 224,
           Mask(8, 248, uint8(balanceOf[address(arg1)].field_1792))
}

function sub_ae819fc5(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0xf198ea4400000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = 0
    mem[ceil32(arg1.length) + 164] = 64
    mem[ceil32(arg1.length) + 196] = arg1.length
    mem[ceil32(arg1.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
        delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0xf198ea44 with:
             gas gas_remaining wei
            args 0, 64, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg1.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _34 = mem[ceil32(arg1.length) + 128 len 4], 0
        require mem[ceil32(arg1.length) + 128 len 4], 0 <= 4294967296
        require mem[ceil32(arg1.length) + 128 len 4], 0 + 32 <= return_data.size
        require mem[mem[ceil32(arg1.length) + 128 len 4], 0 + ceil32(arg1.length) + 128] <= 4294967296 and mem[ceil32(arg1.length) + 128 len 4], 0 + mem[mem[ceil32(arg1.length) + 128 len 4], 0 + ceil32(arg1.length) + 128] + 32 <= return_data.size
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = 32
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 160] = mem[_34 + ceil32(arg1.length) + 128]
        _41 = mem[_34 + ceil32(arg1.length) + 128]
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 192 len ceil32(mem[_34 + ceil32(arg1.length) + 128])] = mem[_34 + ceil32(arg1.length) + 160 len ceil32(mem[_34 + ceil32(arg1.length) + 128])]
        if not _41 % 32:
            return 32, mem[ceil32(arg1.length) + ceil32(return_data.size) + 160 len _41 + 32]
        mem[floor32(_41) + ceil32(arg1.length) + ceil32(return_data.size) + 192] = mem[floor32(_41) + ceil32(arg1.length) + ceil32(return_data.size) + -(_41 % 32) + 224 len _41 % 32]
        return 32, mem[ceil32(arg1.length) + ceil32(return_data.size) + 160 len floor32(_41) + 64]
    mem[floor32(arg1.length) + ceil32(arg1.length) + 228] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 260 len arg1.length % 32]
    require ext_code.size(0xbab47b850fda14da3070b2def1bc27f70d15fcaf)
    delegate 0xbab47b850fda14da3070b2def1bc27f70d15fcaf.0xf198ea44 with:
         gas gas_remaining wei
        args 0, 64, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 228 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _36 = mem[ceil32(arg1.length) + 128 len 4], 0
    require mem[ceil32(arg1.length) + 128 len 4], 0 <= 4294967296
    require mem[ceil32(arg1.length) + 128 len 4], 0 + 32 <= return_data.size
    require mem[mem[ceil32(arg1.length) + 128 len 4], 0 + ceil32(arg1.length) + 128] <= 4294967296 and mem[ceil32(arg1.length) + 128 len 4], 0 + mem[mem[ceil32(arg1.length) + 128 len 4], 0 + ceil32(arg1.length) + 128] + 32 <= return_data.size
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = 32
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 160] = mem[_36 + ceil32(arg1.length) + 128]
    _44 = mem[_36 + ceil32(arg1.length) + 128]
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 192 len ceil32(mem[_36 + ceil32(arg1.length) + 128])] = mem[_36 + ceil32(arg1.length) + 160 len ceil32(mem[_36 + ceil32(arg1.length) + 128])]
    if not _44 % 32:
        return 32, mem[ceil32(arg1.length) + ceil32(return_data.size) + 160 len _44 + 32]
    mem[floor32(_44) + ceil32(arg1.length) + ceil32(return_data.size) + 192] = mem[floor32(_44) + ceil32(arg1.length) + ceil32(return_data.size) + -(_44 % 32) + 224 len _44 % 32]
    return 32, mem[ceil32(arg1.length) + ceil32(return_data.size) + 160 len floor32(_44) + 64]
}

function sub_e1d87b7c(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = 0xe8a3ba3500000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 388 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 388] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420] = arg4.length
            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                require ext_code.size(0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9)
                delegate 0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9.0xe8a3ba35 with:
                     gas gas_remaining wei
                    args 0, address(arg1), 160, arg2.length + 192, arg3.length + arg2.length + 224, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 388 len arg4.length + arg3.length + arg2.length + -ceil32(arg2.length) + 64]
            else:
                mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                require ext_code.size(0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9)
                delegate 0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9.0xe8a3ba35 with:
                     gas gas_remaining wei
                    args 0, address(arg1), 160, arg2.length + 192, arg3.length + arg2.length + 224, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 388 len floor32(arg4.length) + arg3.length + arg2.length + -ceil32(arg2.length) + 96]
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 452 len arg3.length % 32]
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = arg4.length
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                require ext_code.size(0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9)
                delegate 0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9.0xe8a3ba35 with:
                     gas gas_remaining wei
                    args 0, address(arg1), 160, arg2.length + 192, floor32(arg3.length) + arg2.length + 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 388 len arg4.length + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 96]
            else:
                mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
                require ext_code.size(0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9)
                delegate 0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9.0xe8a3ba35 with:
                     gas gas_remaining wei
                    args 0, address(arg1), 160, arg2.length + 192, floor32(arg3.length) + arg2.length + 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 388 len floor32(arg4.length) + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 128]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 388] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 420 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420] = arg3.length
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = arg4.length
            mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                require ext_code.size(0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9)
                delegate 0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9.0xe8a3ba35 with:
                     gas gas_remaining wei
                    args 0, address(arg1), 160, floor32(arg2.length) + 224, arg3.length + floor32(arg2.length) + 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 388 len arg4.length + arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 96]
            else:
                mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[floor32(arg4.length) + arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
                require ext_code.size(0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9)
                delegate 0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9.0xe8a3ba35 with:
                     gas gas_remaining wei
                    args 0, address(arg1), 160, floor32(arg2.length) + 224, arg3.length + floor32(arg2.length) + 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 388 len floor32(arg4.length) + arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 128]
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 484 len arg3.length % 32]
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = arg4.length
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 516 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                require ext_code.size(0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9)
                delegate 0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9.0xe8a3ba35 with:
                     gas gas_remaining wei
                    args 0, address(arg1), 160, floor32(arg2.length) + 224, floor32(arg3.length) + floor32(arg2.length) + 288, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 388 len arg4.length + floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 128]
            else:
                mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 516] = mem[floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 548 len arg4.length % 32]
                require ext_code.size(0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9)
                delegate 0xdbae1e1d69a9ba76658f5eb9718aa0a16c8a43a9.0xe8a3ba35 with:
                     gas gas_remaining wei
                    args 0, address(arg1), 160, floor32(arg2.length) + 224, floor32(arg3.length) + floor32(arg2.length) + 288, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 388 len floor32(arg4.length) + floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 160]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_aba21009(?) {
    mem[96 len 384] = code.data[17971 len 384]
    require arg1 < 2
    require arg2 < stor18[arg1]
    mem[480] = stor[(13 * arg2) + sha3((6 * arg1) + 18)].length
    mem[512] = uint256(stor[sha3((13 * arg2) + sha3((6 * arg1) + 18))].field_0)
    idx = 512
    s = 0
    while stor[(13 * arg2) + sha3((6 * arg1) + 18)].length + 480 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((13 * arg2) + sha3((6 * arg1) + 18)) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + 512] = stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length
    mem[0] = (13 * arg2) + sha3((6 * arg1) + 18) + 1
    mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + 544] = uint256(stor[sha3((13 * arg2) + sha3((6 * arg1) + 18) + 1)].field_0)
    idx = ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + 544
    s = 0
    while ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length + 512 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((13 * arg2) + sha3((6 * arg1) + 18) + 1) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 928
    mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 544] = uint8(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 6].field_0)
    idx = ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 544
    s = 0
    while ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 928 > idx + 32:
        mem[idx + 32] = stor((13 * arg2) + sha3((6 * arg1) + 18) + 6)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 992] = uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 2].field_0)
    mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 1024] = uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 3].field_0)
    mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 1056] = uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 4].field_0)
    mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 1088] = address(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 5].field_0)
    mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 1120 len 384] = uint8(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 6].field_0), mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 576 len 352]
    mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 928] = 576
    mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 1504] = stor[(13 * arg2) + sha3((6 * arg1) + 18)].length
    mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 1536 len ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length)] = mem[512 len ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length)]
    if not stor[(13 * arg2) + sha3((6 * arg1) + 18)].length % 32:
        mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 960] = stor[(13 * arg2) + sha3((6 * arg1) + 18)].length + 608
        mem[stor[(13 * arg2) + sha3((6 * arg1) + 18)].length + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 1536] = stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length
        mem[stor[(13 * arg2) + sha3((6 * arg1) + 18)].length + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 1568 len ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length)] = mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + 544 len ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length)]
        if not stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length % 32:
            return 576, 
                   stor[(13 * arg2) + sha3((6 * arg1) + 18)].length + 608,
                   uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 2].field_0),
                   uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 3].field_0),
                   uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 4].field_0),
                   address(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 5].field_0),
                   mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 576 len 352] >> 2816,
                   stor[(13 * arg2) + sha3((6 * arg1) + 18)].length,
                   mem[512 len ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length)],
                   mem[(2 * ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length)) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 1536 len stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length + stor[(13 * arg2) + sha3((6 * arg1) + 18)].length + -ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + 32]
        mem[floor32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + stor[(13 * arg2) + sha3((6 * arg1) + 18)].length + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 1568] = mem[floor32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + stor[(13 * arg2) + sha3((6 * arg1) + 18)].length + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + -stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length % 32 + 1600 len stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length % 32]
        return 576, 
               stor[(13 * arg2) + sha3((6 * arg1) + 18)].length + 608,
               uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 2].field_0),
               uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 3].field_0),
               uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 4].field_0),
               address(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 5].field_0),
               mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 576 len 352] >> 2816,
               stor[(13 * arg2) + sha3((6 * arg1) + 18)].length,
               mem[512 len ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length)],
               mem[(2 * ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length)) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 1536 len floor32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + stor[(13 * arg2) + sha3((6 * arg1) + 18)].length + -ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + 64]
    mem[floor32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 1536] = mem[floor32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + -stor[(13 * arg2) + sha3((6 * arg1) + 18)].length % 32 + 1568 len stor[(13 * arg2) + sha3((6 * arg1) + 18)].length % 32]
    mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 960] = floor32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + 640
    mem[floor32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 1568] = stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length
    mem[floor32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 1600 len ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length)] = mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + 544 len ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length)]
    if not stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length % 32:
        return 576, 
               floor32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + 640,
               uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 2].field_0),
               uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 3].field_0),
               uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 4].field_0),
               address(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 5].field_0),
               mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 576 len 352] >> 2816,
               stor[(13 * arg2) + sha3((6 * arg1) + 18)].length,
               mem[512 len ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length)],
               mem[(2 * ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length)) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 1536 len stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length + floor32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + -ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + 64]
    mem[floor32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + floor32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 1600] = mem[floor32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + floor32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + -stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length % 32 + 1632 len stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length % 32]
    return 576, 
           floor32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + 640,
           uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 2].field_0),
           uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 3].field_0),
           uint256(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 4].field_0),
           address(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 5].field_0),
           mem[ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 576 len 352] >> 2816,
           stor[(13 * arg2) + sha3((6 * arg1) + 18)].length,
           mem[512 len ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length)],
           mem[(2 * ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length)) + ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + 1536 len floor32(stor[(13 * arg2) + sha3((6 * arg1) + 18) + 1].length) + floor32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + -ceil32(stor[(13 * arg2) + sha3((6 * arg1) + 18)].length) + 96]
}



}
