contract main {




// =====================  Runtime code  =====================


const ethSignedMessagePrefix = 'eum Signed Message:
'

const sigDestinationTransfer = sha3('address Token Contract Address', Mask(176, 64, 'address Sender's Address') >> 64, Mask(216, 40, 'address Recipient's Address') >> 40, 'uint256 Amount to Transfer (last', Mask(200, 56, ' six digits are decimals)') >> 56, 'uint256 Fee in Tokens Paid to Ex', 'ecutor (last six digits are deci', Mask(40, 216, 'mals)') >> 216, 'address Account which will Recei', Mask(48, 208, 've Fee') >> 208, 'uint256 Signature Expiration Tim', Mask(184, 72, 'estamp (unix timestamp)') >> 72, Mask(160, 96, 'uint256 Signature ID') >> 96)


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor6;
address tokenDistributorAddress;

function name() {
    return name[0 len name.length]
}

function usedSigIds(address arg1, uint256 arg2) {
    return bool(stor6[arg1][arg2])
}

function totalSupply() {
    return totalSupply
}

function tokenDistributor() {
    return tokenDistributorAddress
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function multiMint(address[] arg1, uint256[] arg2) {
    require tokenDistributorAddress == msg.sender
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)] >= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 4
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
        require idx < arg2.length
        require s + cd[((32 * idx) + arg2 + 36)] >= s
        require idx < arg1.length
        require idx < arg2.length
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        emit Transfer(cd[((32 * idx) + arg2 + 36)], 0, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        s = s + cd[((32 * idx) + arg2 + 36)]
        continue 
    require totalSupply + (s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) >= totalSupply
    totalSupply += s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length
}

function transferViaSignature(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6, uint256 arg7, bytes arg8, uint8 arg9) {
    mem[116] = address(arg1)
    mem[136] = address(arg2)
    mem[156] = arg3
    mem[188] = arg4
    mem[220] = address(arg5)
    mem[240] = arg6
    mem[272] = arg7
    mem[96] = arg8.length
    mem[128 len arg8.length] = arg8[all]
    _5 = mem[128 len 8], arg2, uint32(arg3)
    require block.timestamp <= arg6
    mem[0] = arg7
    mem[32] = sha3(address(arg1), 6)
    require not stor6[address(arg1)][arg7]
    require arg9 <= 2
    if not arg9:
        signer = erecover(sha3(sha3('address Token Contract Address', 'address Sender's Address', 'address Recipient's Address', 'uint256 Amount to Transfer (last', ' six digits are decimals)', 'uint256 Fee in Tokens Paid to Ex', 'ecutor (last six digits are deci', 'mals)', 'address Account which will Recei', 've Fee', 'uint256 Signature Expiration Tim', 'estamp (unix timestamp)', 'uint256 Signature ID'), sha3(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6, arg7)), (Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mask_shl', 32, 0, 0, ('param', 'arg5')))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mask_shl', 32, 0, 0, ('param', 'arg5')))), 0) - 256) + 27 << 248, mem[128 len 8], arg2, uint32(arg3), Mask(224, 0, arg3), uint32(arg4)) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require arg1 == address(signer)
    else:
        require arg9 <= 2
        if arg9 == 1:
            mem[ceil32(arg8.length) + 192 len 0] = None
            signer = erecover(sha3(mem[ceil32(arg8.length) + 192 len 6], 7310869555711666030, '32', sha3(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6, arg7)), (Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mask_shl', 32, 0, 0, ('param', 'arg5')))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mask_shl', 32, 0, 0, ('param', 'arg5')))), 0) - 256) + 27 << 248, mem[128 len 8], arg2, uint32(arg3), Mask(224, 0, arg3), uint32(arg4)) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 != address(signer):
                signer = erecover(sha3(mem[128 len 6], 7310869555711666030, ' ', sha3(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6, arg7)), (Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mask_shl', 32, 0, 0, ('param', 'arg5')))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mask_shl', 32, 0, 0, ('param', 'arg5')))), 0) - 256) + 27 << 248, mem[128 len 8], arg2, uint32(arg3), Mask(224, 0, arg3), uint32(arg4)) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg1 == address(signer)
        else:
            mem[ceil32(arg8.length) + 192] = 64
            mem[ceil32(arg8.length) + 224 len 2048] = code.data[9641 len 2048]
            idx = 0
            while uint8(idx) < 32:
                require uint8(idx) < 32
                require 2 * idx % 128 < mem[ceil32(arg8.length) + 192]
                mem[ceil32(arg8.length) + (2 * idx % 128) + 224 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                require uint8(idx) < 32
                require uint8(idx) < 32
                require uint8((2 * idx) + 1) < mem[ceil32(arg8.length) + 192]
                mem[ceil32(arg8.length) + uint8((2 * idx) + 1) + 224 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                idx = idx + 1
                continue 
            mem[ceil32(arg8.length) + 288 len 0] = None
            mem[ceil32(arg8.length) + 294 len 20] = 0x65756d205369676e6564204d6573736167653a0a
            mem[ceil32(arg8.length) + 314] = '64'
            mem[ceil32(arg8.length) + 316 len floor32(mem[ceil32(arg8.length) + 192])] = mem[ceil32(arg8.length) + 224 len floor32(mem[ceil32(arg8.length) + 192])]
            mem[ceil32(arg8.length) + floor32(mem[ceil32(arg8.length) + 192]) + -(mem[ceil32(arg8.length) + 192] % 32) + 348 len mem[ceil32(arg8.length) + 192] % 32] = mem[ceil32(arg8.length) + floor32(mem[ceil32(arg8.length) + 192]) + -(mem[ceil32(arg8.length) + 192] % 32) + 256 len mem[ceil32(arg8.length) + 192] % 32]
            signer = erecover(sha3(mem[ceil32(arg8.length) + 288 len 6], 7310869555711666030, mem[ceil32(arg8.length) + 314 len mem[ceil32(arg8.length) + 192] + 2]), (Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mask_shl', 32, 0, 0, ('param', 'arg5')))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mask_shl', 32, 0, 0, ('param', 'arg5')))), 0) - 256) + 27 << 248, mem[128 len 8], arg2, uint32(arg3), Mask(224, 0, arg3), uint32(arg4)) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 != address(signer):
                mem[ceil32(arg8.length) + 384] = 64
                mem[64] = ceil32(arg8.length) + 480
                mem[ceil32(arg8.length) + 416 len 2048] = code.data[9641 len 2048]
                idx = 0
                while uint8(idx) < 32:
                    require uint8(idx) < 32
                    require 2 * idx % 128 < mem[ceil32(arg8.length) + 384]
                    mem[ceil32(arg8.length) + (2 * idx % 128) + 416 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    require uint8(idx) < 32
                    require uint8(idx) < 32
                    require uint8((2 * idx) + 1) < mem[ceil32(arg8.length) + 384]
                    mem[ceil32(arg8.length) + uint8((2 * idx) + 1) + 416 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    idx = idx + 1
                    continue 
                mem[ceil32(arg8.length) + 480 len 0] = None
                mem[ceil32(arg8.length) + 486 len 20] = 0x65756d205369676e6564204d6573736167653a0a
                mem[ceil32(arg8.length) + 506] = '@'
                mem[ceil32(arg8.length) + 507 len floor32(mem[ceil32(arg8.length) + 384])] = mem[ceil32(arg8.length) + 416 len floor32(mem[ceil32(arg8.length) + 384])]
                mem[ceil32(arg8.length) + floor32(mem[ceil32(arg8.length) + 384]) + -(mem[ceil32(arg8.length) + 384] % 32) + 539 len mem[ceil32(arg8.length) + 384] % 32] = mem[ceil32(arg8.length) + floor32(mem[ceil32(arg8.length) + 384]) + -(mem[ceil32(arg8.length) + 384] % 32) + 448 len mem[ceil32(arg8.length) + 384] % 32]
                signer = erecover(sha3(mem[ceil32(arg8.length) + 480 len 6], 7310869555711666030, mem[ceil32(arg8.length) + 506 len mem[ceil32(arg8.length) + 384] + 1]), (Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mask_shl', 32, 0, 0, ('param', 'arg5')))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mask_shl', 32, 0, 0, ('param', 'arg5')))), 0) - 256) + 27 << 248, _5, Mask(224, 0, arg3), uint32(arg4)) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require arg1 == address(signer)
    stor6[address(arg1)][arg7] = 1
    require arg2
    require arg5
    require arg3 + arg4 >= arg3
    require arg3 + arg4 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 - arg4
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg4 > 0:
        require balanceOf[address(arg5)] + arg4 >= balanceOf[address(arg5)]
        balanceOf[address(arg5)] += arg4
        emit Transfer(arg4, arg1, arg5);
    return 1
}



}
