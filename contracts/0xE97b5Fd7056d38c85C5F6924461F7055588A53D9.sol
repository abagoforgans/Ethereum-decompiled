contract main {




// =====================  Runtime code  =====================


const name = 'Goo Clan'

const symbol = 'GOOCLAN'


uint256 totalSupply;
address stor1;
mapping of address ownerOf;
mapping of address tokenApprovals;
array of struct balanceOf;
mapping of uint256 ownedTokensIndex;
mapping of struct sub_afd15b06;
mapping of uint256 sub_cd677daa;
mapping of uint256 sub_76563560;
mapping of uint256 sub_25d32f5a;
mapping of uint256 sub_b94afc50;
mapping of uint256 sub_60e8c11f;
mapping of address sub_1c2d6998;
mapping of uint256 sub_d566c2b3;
mapping of uint256 sub_e3d39e66;
mapping of uint256 sub_240f07c4;
mapping of address sub_da4fa0d8;
mapping of struct sub_0c3f3acb;
mapping of uint8 stor18;

function getApproved(uint256 arg1) {
    return tokenApprovals[arg1]
}

function sub_0c3f3acb(?) {
    return sub_0c3f3acb[stor10[arg1][arg2]].field_512
}

function sub_126ef280(?) {
    return sub_0c3f3acb[arg1].field_0, 
           sub_0c3f3acb[arg1].field_256,
           sub_0c3f3acb[arg1].field_512,
           sub_0c3f3acb[arg1].field_768,
           sub_0c3f3acb[arg1].field_1024
}

function totalSupply() {
    return totalSupply
}

function sub_1c2d6998(?) {
    return sub_1c2d6998[arg1]
}

function tokenOwner(uint256 arg1) {
    return ownerOf[arg1]
}

function sub_240f07c4(?) {
    return sub_240f07c4[arg1]
}

function sub_25d32f5a(?) {
    return sub_25d32f5a[arg1]
}

function exists(uint256 arg1) {
    return bool(ownerOf[arg1])
}

function sub_60e8c11f(?) {
    return uint256(sub_60e8c11f[arg1])
}

function ownerOf(uint256 arg1) {
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)].field_0
}

function ownedTokensIndex(uint256 arg1) {
    return ownedTokensIndex[arg1]
}

function sub_76563560(?) {
    return sub_76563560[arg1]
}

function sub_a8be8329(?) {
    return sub_0c3f3acb[stor10[stor6[address(arg1)].field_0][arg2]].field_512
}

function tokenApprovals(uint256 arg1) {
    return tokenApprovals[arg1]
}

function sub_afd15b06(?) {
    return sub_afd15b06[arg1].field_0, sub_afd15b06[arg1].field_224
}

function sub_b94afc50(?) {
    return sub_b94afc50[arg1][arg2]
}

function sub_cd677daa(?) {
    return sub_cd677daa[arg1]
}

function sub_d566c2b3(?) {
    return sub_d566c2b3[arg1]
}

function sub_da4fa0d8(?) {
    return sub_da4fa0d8[arg1][arg2]
}

function ownedTokens(address arg1, uint256 arg2) {
    require arg2 < balanceOf[arg1].field_0
    return balanceOf[arg1][arg2].field_0
}

function sub_e3d39e66(?) {
    return sub_e3d39e66[arg1]
}

function _fallback() payable {
    revert
}

function sub_dea7dd98(?) {
    require msg.sender == stor1
    sub_d566c2b3[arg1] = arg2
}

function setOperator(address arg1, bool arg2) {
    require msg.sender == stor1
    stor18[address(arg1)] = uint8(arg2)
}

function sub_70b11a35(?) {
    require stor18[msg.sender]
    uint256(sub_60e8c11f[stor6[address(arg1)].field_0]) += arg2
}

function sub_5d74979e(?) {
    require stor18[msg.sender]
    require ownerOf[arg2]
    uint256(sub_60e8c11f[arg2]) += arg1
}

function sub_4defaa78(?) {
    require stor18[msg.sender]
    if sub_afd15b06[address(arg1)].field_0 > 0:
        sub_e3d39e66[stor6[address(arg1)].field_0] += arg2
}

function sub_646a59b3(?) {
    require stor18[msg.sender]
    if sub_afd15b06[address(arg1)].field_0 > 0:
        sub_e3d39e66[stor6[address(arg1)].field_0] -= arg2
}

function approve(address arg1, uint256 arg2) {
    require msg.sender == ownerOf[arg2]
    tokenApprovals[arg2] = arg1
    emit Approval(msg.sender, address(arg1), arg2);
}

function sub_9d32733c(?) {
    return sub_afd15b06[address(arg1)].field_0, 
           sub_afd15b06[arg2].field_0,
           sub_0c3f3acb[stor10[stor6[address(arg1)].field_0][3]].field_512
}

function sub_9181fa18(?) {
    require stor18[msg.sender]
    sub_0c3f3acb[arg1].field_0 = arg1
    sub_0c3f3acb[arg1].field_256 = Mask(224, 0, arg2)
    sub_0c3f3acb[arg1].field_512 = Mask(224, 0, arg3)
    sub_0c3f3acb[arg1].field_768 = arg4
    sub_0c3f3acb[arg1].field_1024 = arg5
}

function sub_118382ff(?) {
    return sub_cd677daa[stor6[address(arg1)].field_0], 
           sub_76563560[stor6[address(arg1)].field_0],
           ownerOf[stor6[address(arg1)].field_0],
           sub_240f07c4[stor6[address(arg1)].field_0],
           sub_da4fa0d8[address(arg1)][stor6[address(arg1)].field_0]
}

function sub_315e857e(?) {
    require msg.sender == ownerOf[arg4]
    require Mask(224, 0, arg1) <= 25
    require Mask(224, 0, arg3) <= 10
    require Mask(224, 0, arg2) <= Mask(224, 0, arg1)
    sub_cd677daa[arg4] = Mask(224, 0, arg1)
    sub_76563560[arg4] = Mask(224, 0, arg2)
    sub_240f07c4[arg4] = Mask(224, 0, arg3)
}

function sub_a6c60442(?) {
    require stor18[msg.sender]
    require ext_code.size(sub_1c2d6998[arg2])
    call sub_1c2d6998[arg2].0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), sub_d566c2b3[arg2] * Mask(80, 0, arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (sub_d566c2b3[arg2] * Mask(80, 0, arg3))
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require ownerOf[stor6[address(arg1)].field_0]
    require 0xdf0960778c6e6597f197ed9a25f12f5d971da86c == msg.sender
    require ext_code.size(msg.sender)
    call msg.sender.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), 0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(sub_60e8c11f[stor6[address(arg1)].field_0]) += arg2
}

function sub_5abe455c(?) {
    require msg.sender == stor1
    require ext_code.size(arg2)
    call arg2.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    if arg3:
        require ext_code.size(sub_1c2d6998[arg1])
        call sub_1c2d6998[arg1].0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_1c2d6998[arg1])
        call sub_1c2d6998[arg1].0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), stor1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    sub_1c2d6998[arg1] = arg2
}

function sub_6551da18(?) {
    require stor18[msg.sender]
    require not balanceOf[address(arg1)].field_0
    require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
    call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0xdd53c728 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 0 < sub_afd15b06[address(arg1)].field_0:
        sub_25d32f5a[stor6[address(arg1)].field_0]--
        sub_e3d39e66[stor6[address(arg1)].field_0] -= Mask(80, 0, ext_call.return_data[32] + ext_call.return_data[0])
        emit 0x35362be7: sub_afd15b06[address(arg1)].field_0, arg1
    if arg3:
        if arg3 != arg1:
            require sub_afd15b06[address(arg3)].field_0 == Mask(224, 0, arg2)
            sub_da4fa0d8[address(arg1)][4294967296 * arg2] = arg3
    sub_25d32f5a[4294967296 * arg2]++
    sub_e3d39e66[4294967296 * arg2] += Mask(80, 0, ext_call.return_data[32] + ext_call.return_data[0])
    sub_afd15b06[address(arg1)].field_0 = Mask(224, 0, arg2)
    sub_afd15b06[address(arg1)].field_224 = uint32(block.timestamp)
    emit 0x254ec6da: 4294967296 * arg2, address(arg1), arg3
}

function tokensOf(address arg1) {
    if not balanceOf[address(arg1)].field_0:
        mem[(32 * balanceOf[address(arg1)].field_0) + 128] = 32
        mem[(32 * balanceOf[address(arg1)].field_0) + 160] = balanceOf[address(arg1)].field_0
        mem[(32 * balanceOf[address(arg1)].field_0) + 192 len floor32(balanceOf[address(arg1)].field_0)] = mem[128 len floor32(balanceOf[address(arg1)].field_0)]
        return memory
          from (32 * balanceOf[address(arg1)].field_0) + 128
           len (96 * balanceOf[address(arg1)].field_0) + 64
    mem[128] = balanceOf[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * balanceOf[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = balanceOf[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(arg1)].field_0) + 192 len floor32(balanceOf[address(arg1)].field_0)] = mem[128 len floor32(balanceOf[address(arg1)].field_0)]
    return Array(len=balanceOf[address(arg1)].field_0, data=mem[128 len floor32(balanceOf[address(arg1)].field_0)], mem[(32 * balanceOf[address(arg1)].field_0) + floor32(balanceOf[address(arg1)].field_0) + 192 len (32 * balanceOf[address(arg1)].field_0) - floor32(balanceOf[address(arg1)].field_0)]), 
}

function sub_5286cd0c(?) {
    require ownerOf[4294967296 * arg1]
    require not balanceOf[address(msg.sender)].field_0
    require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
    call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0xdd53c728 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 0 < sub_afd15b06[address(msg.sender)].field_0:
        sub_25d32f5a[stor6[address(msg.sender)].field_0]--
        sub_e3d39e66[stor6[address(msg.sender)].field_0] -= Mask(80, 0, ext_call.return_data[32] + ext_call.return_data[0])
        emit 0x35362be7: sub_afd15b06[address(msg.sender)].field_0, msg.sender
    if arg2:
        if arg2 != msg.sender:
            require sub_afd15b06[address(arg2)].field_0 == Mask(224, 0, arg1)
            sub_da4fa0d8[address(msg.sender)][4294967296 * arg1] = arg2
    sub_25d32f5a[4294967296 * arg1]++
    sub_e3d39e66[4294967296 * arg1] += Mask(80, 0, ext_call.return_data[32] + ext_call.return_data[0])
    sub_afd15b06[address(msg.sender)].field_0 = Mask(224, 0, arg1)
    sub_afd15b06[address(msg.sender)].field_224 = uint32(block.timestamp)
    emit 0x254ec6da: 4294967296 * arg1, msg.sender, arg2
}

function sub_09582e9b(?) {
    require ownerOf[stor6[msg.sender].field_0] == msg.sender
    require 0 < sub_0c3f3acb[4294967296 * arg1].field_0
    require sub_b94afc50[stor6[msg.sender].field_0][stor17[4294967296 * arg1].field_768] < Mask(224, 0, arg1)
    require sub_b94afc50[stor6[msg.sender].field_0][stor17[4294967296 * arg1].field_768] >= sub_0c3f3acb[4294967296 * arg1].field_1024
    require Mask(224, 0, sub_0c3f3acb[4294967296 * arg1].field_256 - (Mask(224, 0, sub_0c3f3acb[4294967296 * arg1].field_256 * sub_b94afc50[stor6[msg.sender].field_0][0]) / 100)) <= uint256(sub_60e8c11f[stor6[msg.sender].field_0])
    uint256(sub_60e8c11f[stor6[msg.sender].field_0]) -= Mask(224, 0, sub_0c3f3acb[4294967296 * arg1].field_256 - (Mask(224, 0, sub_0c3f3acb[4294967296 * arg1].field_256 * sub_b94afc50[stor6[msg.sender].field_0][0]) / 100))
    require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
    call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0x1149ef5a with:
         gas gas_remaining wei
        args Mask(224, 0, sub_0c3f3acb[4294967296 * arg1].field_256 - (Mask(224, 0, sub_0c3f3acb[4294967296 * arg1].field_256 * sub_b94afc50[stor6[msg.sender].field_0][0]) / 100))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_b94afc50[stor6[msg.sender].field_0][stor17[4294967296 * arg1].field_768] = Mask(224, 0, arg1)
}

function sub_aae1aa37(?) {
    require not balanceOf[msg.sender].field_0
    require sub_afd15b06[msg.sender].field_0 > 0
    require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
    call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0xdd53c728 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    sub_e3d39e66[stor6[msg.sender].field_0] -= Mask(80, 0, ext_call.return_data[0] + ext_call.return_data[32])
    sub_25d32f5a[stor6[msg.sender].field_0]--
    sub_afd15b06[msg.sender].field_0 = 0
    emit 0x35362be7: sub_afd15b06[msg.sender].field_0, msg.sender
    if Mask(80, 0, ext_call.return_data[32] + ext_call.return_data[0]):
        require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
        call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0x158993fd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
        call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0xe0ef84b9 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
    require uint32(sub_afd15b06[msg.sender].field_224 + (24 * 3600)) < block.timestamp
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if tokenApprovals[arg3] != msg.sender:
        require msg.sender == ownerOf[arg3]
    require not balanceOf[address(arg2)].field_0
    require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
    call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0xdd53c728 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 0 < sub_afd15b06[address(arg2)].field_0:
        sub_25d32f5a[stor6[address(arg2)].field_0]--
        sub_e3d39e66[stor6[address(arg2)].field_0] -= Mask(80, 0, ext_call.return_data[32] + ext_call.return_data[0])
        emit 0x35362be7: sub_afd15b06[address(arg2)].field_0, arg2
    sub_25d32f5a[4294967296 * arg3]++
    sub_e3d39e66[4294967296 * arg3] += Mask(80, 0, ext_call.return_data[32] + ext_call.return_data[0])
    sub_afd15b06[address(arg2)].field_0 = Mask(224, 0, arg3)
    sub_afd15b06[address(arg2)].field_224 = uint32(block.timestamp)
    emit 0x254ec6da: 4294967296 * arg3, address(arg2), 0
    require ownerOf[arg3] == arg1
    ownerOf[arg3] = 0
    require 1 <= balanceOf[address(arg1)].field_0
    require balanceOf[address(arg1)].field_0 - 1 < balanceOf[address(arg1)].field_0
    require ownedTokensIndex[arg3] < balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)][stor5[arg3]].field_0 = balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_0
    require balanceOf[address(arg1)].field_0 - 1 < balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_0 = 0
    balanceOf[address(arg1)].field_0--
    if balanceOf[address(arg1)].field_0 > balanceOf[address(arg1)].field_0 - 1:
        idx = balanceOf[address(arg1)].field_0 - 1
        while balanceOf[address(arg1)].field_0 > idx:
            balanceOf[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    ownedTokensIndex[arg3] = 0
    ownedTokensIndex[stor4[address(arg1)][stor4[address(arg1)].field_0].field_0] = ownedTokensIndex[arg3]
    require not balanceOf[address(arg2)].field_0
    ownerOf[arg3] = arg2
    ownedTokensIndex[arg3] = balanceOf[address(arg2)].field_0
    balanceOf[address(arg2)].field_0++
    balanceOf[address(arg2)][balanceOf[address(arg2)].field_0].field_0 = arg3
    tokenApprovals[arg3] = 0
    emit Transfer(address(arg1), address(arg2), arg3);
}

function sub_8ee99da4(?) {
    require stor18[msg.sender]
    require ext_code.size(arg3)
    call arg3.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    totalSupply = Mask(224, 0, totalSupply + 1)
    require not balanceOf[address(arg1)].field_0
    require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
    call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0xdd53c728 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 0 < sub_afd15b06[address(arg1)].field_0:
        sub_25d32f5a[stor6[address(arg1)].field_0]--
        sub_e3d39e66[stor6[address(arg1)].field_0] -= Mask(80, 0, ext_call.return_data[32] + ext_call.return_data[0])
        emit 0x35362be7: sub_afd15b06[address(arg1)].field_0, arg1
    sub_25d32f5a[4294967296 * stor0 + 1]++
    sub_e3d39e66[4294967296 * stor0 + 1] += Mask(80, 0, ext_call.return_data[32] + ext_call.return_data[0])
    sub_afd15b06[address(arg1)].field_0 = Mask(224, 0, totalSupply + 1)
    sub_afd15b06[address(arg1)].field_224 = uint32(block.timestamp)
    emit 0x254ec6da: 4294967296 * totalSupply + 1, address(arg1), 0
    require not ownerOf[4294967296 * stor0 + 1]
    require not balanceOf[address(arg1)].field_0
    ownerOf[4294967296 * stor0 + 1] = arg1
    ownedTokensIndex[4294967296 * stor0 + 1] = balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0++
    balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_0 = Mask(224, 0, totalSupply + 1)
    balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_224 = 0
    emit Transfer(0, address(arg1), Mask(224, 0, totalSupply + 1));
    sub_1c2d6998[4294967296 * stor0 + 1] = arg3
    sub_d566c2b3[4294967296 * stor0 + 1] = arg4
    sub_240f07c4[4294967296 * stor0 + 1] = Mask(224, 0, arg2)
    require ext_code.size(0xe9fe4e530ebae235877289bd978f207ae0c8bb25)
    call 0xe9fe4e530ebae235877289bd978f207ae0c8bb25.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0xe9fe4e530ebae235877289bd978f207ae0c8bb25)
        call 0xe9fe4e530ebae235877289bd978f207ae0c8bb25.0xa2d488e0 with:
             gas gas_remaining wei
            args address(arg1), Mask(224, 0, totalSupply + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    if tokenApprovals[arg3] != msg.sender:
        require msg.sender == ownerOf[arg3]
    require not balanceOf[address(arg2)].field_0
    require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
    call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0xdd53c728 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 0 < sub_afd15b06[address(arg2)].field_0:
        sub_25d32f5a[stor6[address(arg2)].field_0]--
        sub_e3d39e66[stor6[address(arg2)].field_0] -= Mask(80, 0, ext_call.return_data[32] + ext_call.return_data[0])
        emit 0x35362be7: sub_afd15b06[address(arg2)].field_0, arg2
    sub_25d32f5a[4294967296 * arg3]++
    sub_e3d39e66[4294967296 * arg3] += Mask(80, 0, ext_call.return_data[32] + ext_call.return_data[0])
    sub_afd15b06[address(arg2)].field_0 = Mask(224, 0, arg3)
    sub_afd15b06[address(arg2)].field_224 = uint32(block.timestamp)
    emit 0x254ec6da: 4294967296 * arg3, address(arg2), 0
    require ownerOf[arg3] == arg1
    ownerOf[arg3] = 0
    require 1 <= balanceOf[address(arg1)].field_0
    require balanceOf[address(arg1)].field_0 - 1 < balanceOf[address(arg1)].field_0
    require ownedTokensIndex[arg3] < balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)][stor5[arg3]].field_0 = balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_0
    require balanceOf[address(arg1)].field_0 - 1 < balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_0 = 0
    balanceOf[address(arg1)].field_0--
    if balanceOf[address(arg1)].field_0 > balanceOf[address(arg1)].field_0 - 1:
        idx = balanceOf[address(arg1)].field_0 - 1
        while balanceOf[address(arg1)].field_0 > idx:
            balanceOf[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    ownedTokensIndex[arg3] = 0
    ownedTokensIndex[stor4[address(arg1)][stor4[address(arg1)].field_0].field_0] = ownedTokensIndex[arg3]
    require not balanceOf[address(arg2)].field_0
    ownerOf[arg3] = arg2
    ownedTokensIndex[arg3] = balanceOf[address(arg2)].field_0
    balanceOf[address(arg2)].field_0++
    balanceOf[address(arg2)][balanceOf[address(arg2)].field_0].field_0 = arg3
    tokenApprovals[arg3] = 0
    emit Transfer(address(arg1), address(arg2), arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, sha3('onERC721Received(address,address', ',uint256,bytes)')) == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    if tokenApprovals[arg3] != msg.sender:
        require msg.sender == ownerOf[arg3]
    require not balanceOf[address(arg2)].field_0
    require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
    call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0xdd53c728 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 0 < sub_afd15b06[address(arg2)].field_0:
        sub_25d32f5a[stor6[address(arg2)].field_0]--
        sub_e3d39e66[stor6[address(arg2)].field_0] -= Mask(80, 0, ext_call.return_data[32] + ext_call.return_data[0])
        emit 0x35362be7: sub_afd15b06[address(arg2)].field_0, arg2
    sub_25d32f5a[4294967296 * arg3]++
    sub_e3d39e66[4294967296 * arg3] += Mask(80, 0, ext_call.return_data[32] + ext_call.return_data[0])
    sub_afd15b06[address(arg2)].field_0 = Mask(224, 0, arg3)
    sub_afd15b06[address(arg2)].field_224 = uint32(block.timestamp)
    emit 0x254ec6da: 4294967296 * arg3, address(arg2), 0
    require ownerOf[arg3] == arg1
    ownerOf[arg3] = 0
    require 1 <= balanceOf[address(arg1)].field_0
    require balanceOf[address(arg1)].field_0 - 1 < balanceOf[address(arg1)].field_0
    require ownedTokensIndex[arg3] < balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)][stor5[arg3]].field_0 = balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_0
    require balanceOf[address(arg1)].field_0 - 1 < balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_0 = 0
    balanceOf[address(arg1)].field_0--
    if balanceOf[address(arg1)].field_0 > balanceOf[address(arg1)].field_0 - 1:
        idx = balanceOf[address(arg1)].field_0 - 1
        while balanceOf[address(arg1)].field_0 > idx:
            balanceOf[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    ownedTokensIndex[arg3] = 0
    ownedTokensIndex[stor4[address(arg1)][stor4[address(arg1)].field_0].field_0] = ownedTokensIndex[arg3]
    require not balanceOf[address(arg2)].field_0
    ownerOf[arg3] = arg2
    ownedTokensIndex[arg3] = balanceOf[address(arg2)].field_0
    balanceOf[address(arg2)].field_0++
    balanceOf[address(arg2)][balanceOf[address(arg2)].field_0].field_0 = arg3
    tokenApprovals[arg3] = 0
    emit Transfer(address(arg1), address(arg2), arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, sha3('onERC721Received(address,address', ',uint256,bytes)')) == Mask(32, 224, ext_call.return_data[0])
}

function sub_f3986fef(?) {
    require stor18[msg.sender]
    if Mask(80, 0, arg4) > Mask(224, 0, sub_60e8c11f[arg3]):
        require Mask(224, 0, sub_60e8c11f[arg3]) <= uint256(sub_60e8c11f[arg3])
        uint256(sub_60e8c11f[arg3]) -= Mask(224, 0, sub_60e8c11f[arg3])
        if Mask(224, 0, Mask(224, 0, uint256(sub_60e8c11f[arg3]) * sub_cd677daa[arg2]) / 100) > 0:
            if not sub_da4fa0d8[address(arg1)][arg2]:
                uint256(sub_60e8c11f[arg2]) += Mask(224, 0, Mask(224, 0, uint256(sub_60e8c11f[arg3]) * sub_cd677daa[arg2]) / 100)
                require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
                call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                     gas gas_remaining wei
                    args 4294967296 * Mask(224, 0, uint256(sub_60e8c11f[arg3]) * sub_76563560[arg2]) / 100, ownerOf[arg2]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
                call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                     gas gas_remaining wei
                    args 4294967296 * uint256(sub_60e8c11f[arg3]) - (Mask(224, 0, uint256(sub_60e8c11f[arg3]) * sub_cd677daa[arg2]) / 100) - (Mask(224, 0, uint256(sub_60e8c11f[arg3]) * sub_76563560[arg2]) / 100), arg1
            else:
                require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
                call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                     gas gas_remaining wei
                    args 4294967296 * Mask(224, 0, sub_240f07c4[arg2] * uint256(sub_60e8c11f[arg3])) / 100, sub_da4fa0d8[address(arg1)][arg2]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                uint256(sub_60e8c11f[arg2]) += Mask(224, 0, Mask(224, 0, uint256(sub_60e8c11f[arg3]) * sub_cd677daa[arg2]) / 100)
                require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
                call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                     gas gas_remaining wei
                    args 4294967296 * Mask(224, 0, uint256(sub_60e8c11f[arg3]) * sub_76563560[arg2]) / 100, ownerOf[arg2]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
                call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                     gas gas_remaining wei
                    args 4294967296 * uint256(sub_60e8c11f[arg3]) - (Mask(224, 0, uint256(sub_60e8c11f[arg3]) * sub_cd677daa[arg2]) / 100) - (Mask(224, 0, uint256(sub_60e8c11f[arg3]) * sub_76563560[arg2]) / 100) - (Mask(224, 0, sub_240f07c4[arg2] * uint256(sub_60e8c11f[arg3])) / 100), arg1
        else:
            require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
            if sub_240f07c4[arg2] <= 0:
                call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                     gas gas_remaining wei
                    args Mask(224, 0, sub_60e8c11f[arg3]), arg1
            else:
                if not sub_da4fa0d8[address(arg1)][arg2]:
                    call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                         gas gas_remaining wei
                        args Mask(224, 0, sub_60e8c11f[arg3]), arg1
                else:
                    call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                         gas gas_remaining wei
                        args 4294967296 * Mask(224, 0, sub_240f07c4[arg2] * uint256(sub_60e8c11f[arg3])) / 100, sub_da4fa0d8[address(arg1)][arg2]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uint256(sub_60e8c11f[arg2]) += Mask(224, 0, Mask(224, 0, uint256(sub_60e8c11f[arg3]) * sub_cd677daa[arg2]) / 100)
                    require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
                    call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                         gas gas_remaining wei
                        args 4294967296 * Mask(224, 0, uint256(sub_60e8c11f[arg3]) * sub_76563560[arg2]) / 100, ownerOf[arg2]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
                    call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                         gas gas_remaining wei
                        args 4294967296 * uint256(sub_60e8c11f[arg3]) - (Mask(224, 0, uint256(sub_60e8c11f[arg3]) * sub_cd677daa[arg2]) / 100) - (Mask(224, 0, uint256(sub_60e8c11f[arg3]) * sub_76563560[arg2]) / 100) - (Mask(224, 0, sub_240f07c4[arg2] * uint256(sub_60e8c11f[arg3])) / 100), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return Mask(224, 0, sub_60e8c11f[arg3])
    require Mask(80, 0, arg4) <= uint256(sub_60e8c11f[arg3])
    uint256(sub_60e8c11f[arg3]) -= Mask(80, 0, arg4)
    if Mask(224, 0, Mask(224, 0, Mask(80, 0, arg4) * sub_cd677daa[arg2]) / 100) > 0:
        if not sub_da4fa0d8[address(arg1)][arg2]:
            uint256(sub_60e8c11f[arg2]) += Mask(224, 0, Mask(224, 0, Mask(80, 0, arg4) * sub_cd677daa[arg2]) / 100)
            require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
            call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                 gas gas_remaining wei
                args 4294967296 * Mask(224, 0, Mask(80, 0, arg4) * sub_76563560[arg2]) / 100, ownerOf[arg2]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
            call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                 gas gas_remaining wei
                args 4294967296 * Mask(80, 0, arg4) - (Mask(224, 0, Mask(80, 0, arg4) * sub_cd677daa[arg2]) / 100) - (Mask(224, 0, Mask(80, 0, arg4) * sub_76563560[arg2]) / 100), arg1
        else:
            require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
            call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                 gas gas_remaining wei
                args 4294967296 * Mask(224, 0, sub_240f07c4[arg2] * Mask(80, 0, arg4)) / 100, sub_da4fa0d8[address(arg1)][arg2]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            uint256(sub_60e8c11f[arg2]) += Mask(224, 0, Mask(224, 0, Mask(80, 0, arg4) * sub_cd677daa[arg2]) / 100)
            require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
            call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                 gas gas_remaining wei
                args 4294967296 * Mask(224, 0, Mask(80, 0, arg4) * sub_76563560[arg2]) / 100, ownerOf[arg2]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
            call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                 gas gas_remaining wei
                args 4294967296 * Mask(80, 0, arg4) - (Mask(224, 0, Mask(80, 0, arg4) * sub_cd677daa[arg2]) / 100) - (Mask(224, 0, Mask(80, 0, arg4) * sub_76563560[arg2]) / 100) - (Mask(224, 0, sub_240f07c4[arg2] * Mask(80, 0, arg4)) / 100), arg1
    else:
        require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
        if sub_240f07c4[arg2] <= 0:
            call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                 gas gas_remaining wei
                args arg4 << 176, arg1
        else:
            if not sub_da4fa0d8[address(arg1)][arg2]:
                call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                     gas gas_remaining wei
                    args arg4 << 176, arg1
            else:
                call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                     gas gas_remaining wei
                    args 4294967296 * Mask(224, 0, sub_240f07c4[arg2] * Mask(80, 0, arg4)) / 100, sub_da4fa0d8[address(arg1)][arg2]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                uint256(sub_60e8c11f[arg2]) += Mask(224, 0, Mask(224, 0, Mask(80, 0, arg4) * sub_cd677daa[arg2]) / 100)
                require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
                call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                     gas gas_remaining wei
                    args 4294967296 * Mask(224, 0, Mask(80, 0, arg4) * sub_76563560[arg2]) / 100, ownerOf[arg2]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
                call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                     gas gas_remaining wei
                    args 4294967296 * Mask(80, 0, arg4) - (Mask(224, 0, Mask(80, 0, arg4) * sub_cd677daa[arg2]) / 100) - (Mask(224, 0, Mask(80, 0, arg4) * sub_76563560[arg2]) / 100) - (Mask(224, 0, sub_240f07c4[arg2] * Mask(80, 0, arg4)) / 100), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return Mask(80, 0, arg4)
}



}
