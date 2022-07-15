contract main {




// =====================  Runtime code  =====================


#
#  - metaFulfillAndAccept(bytes arg1, uint256 arg2, address[] arg3, string arg4, uint256 arg5, uint256[] arg6, uint256 arg7)
#
address bountiesContractAddress;
mapping of uint256 replayNonce;

function replayNonce(address arg1) {
    require calldata.size - 4 >= 32
    return replayNonce[arg1]
}

function bountiesContract() {
    return bountiesContractAddress
}

function _fallback() payable {
    revert
}

function metaRefundContribution(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = 'metaRefundContribution'
    mem[ceil32(arg1.length) + 202] = arg2
    mem[ceil32(arg1.length) + 234] = arg3
    mem[ceil32(arg1.length) + 266] = arg4
    mem[ceil32(arg1.length) + 128] = 138
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg4 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.0x93c1ccc9 with:
         gas gas_remaining wei
        args address(signer), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaChangeDeadline(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = 'metaChangeDeadline'
    mem[ceil32(arg1.length) + 198] = arg2
    mem[ceil32(arg1.length) + 230] = arg3
    mem[ceil32(arg1.length) + 262] = arg4
    mem[ceil32(arg1.length) + 294] = arg5
    mem[ceil32(arg1.length) + 128] = 166
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg5 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.0xaa17aaef with:
         gas gas_remaining wei
        args address(signer), arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaChangeIssuer(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = 'metaChangeIssuer'
    mem[ceil32(arg1.length) + 196] = arg2
    mem[ceil32(arg1.length) + 228] = arg3
    mem[ceil32(arg1.length) + 260] = arg4
    mem[ceil32(arg1.length) + 292] = address(arg5)
    mem[ceil32(arg1.length) + 312] = arg6
    mem[ceil32(arg1.length) + 128] = 184
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg6 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.0x9e64d9bf with:
         gas gas_remaining wei
        args address(signer), arg2, arg3, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaChangeApprover(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = 'metaChangeApprover'
    mem[ceil32(arg1.length) + 198] = arg2
    mem[ceil32(arg1.length) + 230] = arg3
    mem[ceil32(arg1.length) + 262] = arg4
    mem[ceil32(arg1.length) + 294] = address(arg5)
    mem[ceil32(arg1.length) + 314] = arg6
    mem[ceil32(arg1.length) + 128] = 186
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg6 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.0x2092e259 with:
         gas gas_remaining wei
        args address(signer), arg2, arg3, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaContribute(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = 'metaContribute'
    mem[ceil32(arg1.length) + 194] = arg2
    mem[ceil32(arg1.length) + 226] = arg3
    mem[ceil32(arg1.length) + 258] = arg4
    mem[ceil32(arg1.length) + 128] = 130
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg4 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    require ext_code.size(bountiesContractAddress)
    if msg.value <= 0:
        call bountiesContractAddress.0xa08f793c with:
             gas gas_remaining wei
            args address(signer), arg2, arg3
    else:
        call bountiesContractAddress.0xa08f793c with:
           value msg.value wei
             gas gas_remaining wei
            args address(signer), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaRefundMyContributions(bytes arg1, uint256 arg2, uint256[] arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg3.length) + 160 <= test266151307() and (32 * arg3.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = ceil32(arg1.length) + 160
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (32 * arg3.length) + 192] = address(this.address)
    mem[ceil32(arg1.length) + (32 * arg3.length) + 212] = 'metaRefundMyContributions'
    mem[ceil32(arg1.length) + (32 * arg3.length) + 237] = arg2
    mem[ceil32(arg1.length) + (32 * arg3.length) + 269 len 32 * arg3.length] = mem[ceil32(arg1.length) + 160 len 32 * arg3.length]
    mem[ceil32(arg1.length) + (64 * arg3.length) + 269] = arg4
    mem[ceil32(arg1.length) + (32 * arg3.length) + 160] = (32 * arg3.length) + 109
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    mem[ceil32(arg1.length) + (64 * arg3.length) + 333] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg1.length) + (64 * arg3.length) + 361] = sha3(this.address, 'metaRefundMyContributions', arg2, mem[ceil32(arg1.length) + (32 * arg3.length) + 269 len (32 * arg3.length) + 32])
    mem[ceil32(arg1.length) + (64 * arg3.length) + 301] = 60
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, 'metaRefundMyContributions', arg2, mem[ceil32(arg1.length) + (32 * arg3.length) + 269 len (32 * arg3.length) + 32])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg1.length) + (64 * arg3.length) + 393] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg4 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    mem[ceil32(arg1.length) + (64 * arg3.length) + 425] = 0xedba701300000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + (64 * arg3.length) + 429] = address(signer)
    mem[ceil32(arg1.length) + (64 * arg3.length) + 461] = arg2
    mem[ceil32(arg1.length) + (64 * arg3.length) + 493] = 96
    mem[ceil32(arg1.length) + (64 * arg3.length) + 525] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + (64 * arg3.length) + 557 len 32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]] = mem[ceil32(arg1.length) + 160 len 32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.0xedba7013 with:
         gas gas_remaining wei
        args address(signer), arg2, 96, mem[ceil32(arg1.length) + (64 * arg3.length) + 525 len (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaDrainBounty(bytes arg1, uint256 arg2, uint256 arg3, uint256[] arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg4.length) + 160 <= test266151307() and (32 * arg4.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = ceil32(arg1.length) + 160
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (32 * arg4.length) + 192] = address(this.address)
    mem[ceil32(arg1.length) + (32 * arg4.length) + 212] = 'metaDrainBounty'
    mem[ceil32(arg1.length) + (32 * arg4.length) + 227] = arg2
    mem[ceil32(arg1.length) + (32 * arg4.length) + 259] = arg3
    mem[ceil32(arg1.length) + (32 * arg4.length) + 291 len 32 * arg4.length] = mem[ceil32(arg1.length) + 160 len 32 * arg4.length]
    mem[ceil32(arg1.length) + (64 * arg4.length) + 291] = arg5
    mem[ceil32(arg1.length) + (32 * arg4.length) + 160] = (32 * arg4.length) + 131
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    mem[ceil32(arg1.length) + (64 * arg4.length) + 355] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg1.length) + (64 * arg4.length) + 383] = sha3(this.address, 'metaDrainBounty', arg2, arg3, mem[ceil32(arg1.length) + (32 * arg4.length) + 291 len (32 * arg4.length) + 32])
    mem[ceil32(arg1.length) + (64 * arg4.length) + 323] = 60
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, 'metaDrainBounty', arg2, arg3, mem[ceil32(arg1.length) + (32 * arg4.length) + 291 len (32 * arg4.length) + 32])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg1.length) + (64 * arg4.length) + 415] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg5 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    mem[ceil32(arg1.length) + (64 * arg4.length) + 447] = 0x3756f3c800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + (64 * arg4.length) + 451] = address(signer)
    mem[ceil32(arg1.length) + (64 * arg4.length) + 483] = arg2
    mem[ceil32(arg1.length) + (64 * arg4.length) + 515] = arg3
    mem[ceil32(arg1.length) + (64 * arg4.length) + 547] = 128
    mem[ceil32(arg1.length) + (64 * arg4.length) + 579] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + (64 * arg4.length) + 611 len 32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]] = mem[ceil32(arg1.length) + 160 len 32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.0x3756f3c8 with:
         gas gas_remaining wei
        args address(signer), arg2, arg3, 128, mem[ceil32(arg1.length) + (64 * arg4.length) + 579 len (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaRefundContributions(bytes arg1, uint256 arg2, uint256 arg3, uint256[] arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg4.length) + 160 <= test266151307() and (32 * arg4.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = ceil32(arg1.length) + 160
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (32 * arg4.length) + 192] = address(this.address)
    mem[ceil32(arg1.length) + (32 * arg4.length) + 212] = 'metaRefundContributions'
    mem[ceil32(arg1.length) + (32 * arg4.length) + 235] = arg2
    mem[ceil32(arg1.length) + (32 * arg4.length) + 267] = arg3
    mem[ceil32(arg1.length) + (32 * arg4.length) + 299 len 32 * arg4.length] = mem[ceil32(arg1.length) + 160 len 32 * arg4.length]
    mem[ceil32(arg1.length) + (64 * arg4.length) + 299] = arg5
    mem[ceil32(arg1.length) + (32 * arg4.length) + 160] = (32 * arg4.length) + 139
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    mem[ceil32(arg1.length) + (64 * arg4.length) + 363] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg1.length) + (64 * arg4.length) + 391] = sha3(this.address, 'metaRefundContributions', arg2, arg3, mem[ceil32(arg1.length) + (32 * arg4.length) + 299 len (32 * arg4.length) + 32])
    mem[ceil32(arg1.length) + (64 * arg4.length) + 331] = 60
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, 'metaRefundContributions', arg2, arg3, mem[ceil32(arg1.length) + (32 * arg4.length) + 299 len (32 * arg4.length) + 32])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg1.length) + (64 * arg4.length) + 423] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg5 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    mem[ceil32(arg1.length) + (64 * arg4.length) + 455] = 0xa071fbd500000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + (64 * arg4.length) + 459] = address(signer)
    mem[ceil32(arg1.length) + (64 * arg4.length) + 491] = arg2
    mem[ceil32(arg1.length) + (64 * arg4.length) + 523] = arg3
    mem[ceil32(arg1.length) + (64 * arg4.length) + 555] = 128
    mem[ceil32(arg1.length) + (64 * arg4.length) + 587] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + (64 * arg4.length) + 619 len 32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]] = mem[ceil32(arg1.length) + 160 len 32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.0xa071fbd5 with:
         gas gas_remaining wei
        args address(signer), arg2, arg3, 128, mem[ceil32(arg1.length) + (64 * arg4.length) + 587 len (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaAddIssuers(bytes arg1, uint256 arg2, uint256 arg3, address[] arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg4.length) + 160 <= test266151307() and (32 * arg4.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = ceil32(arg1.length) + 160
    while idx < arg4.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (32 * arg4.length) + 192] = address(this.address)
    mem[ceil32(arg1.length) + (32 * arg4.length) + 212] = 'metaAddIssuers'
    mem[ceil32(arg1.length) + (32 * arg4.length) + 226] = arg2
    mem[ceil32(arg1.length) + (32 * arg4.length) + 258] = arg3
    idx = 0
    s = ceil32(arg1.length) + 160
    t = ceil32(arg1.length) + (32 * arg4.length) + 290
    while idx < arg4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (64 * arg4.length) + 290] = arg5
    mem[ceil32(arg1.length) + (32 * arg4.length) + 160] = (96 * arg4.length) + 130
    mem[64] = ceil32(arg1.length) + (64 * arg4.length) + 322
    _86 = sha3(mem[ceil32(arg1.length) + (32 * arg4.length) + 192 len (96 * arg4.length) + 130])
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    mem[ceil32(arg1.length) + (64 * arg4.length) + 354] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg1.length) + (64 * arg4.length) + 382] = _86
    mem[ceil32(arg1.length) + (64 * arg4.length) + 322] = 60
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _86), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg1.length) + (64 * arg4.length) + 414] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg5 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    mem[ceil32(arg1.length) + (64 * arg4.length) + 446] = 0xc6a8b42b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + (64 * arg4.length) + 450] = address(signer)
    mem[ceil32(arg1.length) + (64 * arg4.length) + 482] = arg2
    mem[ceil32(arg1.length) + (64 * arg4.length) + 514] = arg3
    mem[ceil32(arg1.length) + (64 * arg4.length) + 546] = 128
    mem[ceil32(arg1.length) + (64 * arg4.length) + 578] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    idx = 0
    s = ceil32(arg1.length) + 160
    t = ceil32(arg1.length) + (64 * arg4.length) + 610
    while idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.0xc6a8b42b with:
         gas gas_remaining wei
        args address(signer), arg2, arg3, 128, mem[ceil32(arg1.length) + (64 * arg4.length) + 578 len (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaAddApprovers(bytes arg1, uint256 arg2, uint256 arg3, address[] arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg4.length) + 160 <= test266151307() and (32 * arg4.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = ceil32(arg1.length) + 160
    while idx < arg4.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (32 * arg4.length) + 192] = address(this.address)
    mem[ceil32(arg1.length) + (32 * arg4.length) + 212] = 'metaAddApprovers'
    mem[ceil32(arg1.length) + (32 * arg4.length) + 228] = arg2
    mem[ceil32(arg1.length) + (32 * arg4.length) + 260] = arg3
    idx = 0
    s = ceil32(arg1.length) + 160
    t = ceil32(arg1.length) + (32 * arg4.length) + 292
    while idx < arg4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (64 * arg4.length) + 292] = arg5
    mem[ceil32(arg1.length) + (32 * arg4.length) + 160] = (96 * arg4.length) + 132
    mem[64] = ceil32(arg1.length) + (64 * arg4.length) + 324
    _86 = sha3(mem[ceil32(arg1.length) + (32 * arg4.length) + 192 len (96 * arg4.length) + 132])
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    mem[ceil32(arg1.length) + (64 * arg4.length) + 356] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg1.length) + (64 * arg4.length) + 384] = _86
    mem[ceil32(arg1.length) + (64 * arg4.length) + 324] = 60
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _86), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg1.length) + (64 * arg4.length) + 416] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg5 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    mem[ceil32(arg1.length) + (64 * arg4.length) + 448] = 0xc6a8b42b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + (64 * arg4.length) + 452] = address(signer)
    mem[ceil32(arg1.length) + (64 * arg4.length) + 484] = arg2
    mem[ceil32(arg1.length) + (64 * arg4.length) + 516] = arg3
    mem[ceil32(arg1.length) + (64 * arg4.length) + 548] = 128
    mem[ceil32(arg1.length) + (64 * arg4.length) + 580] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    idx = 0
    s = ceil32(arg1.length) + 160
    t = ceil32(arg1.length) + (64 * arg4.length) + 612
    while idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.0xc6a8b42b with:
         gas gas_remaining wei
        args address(signer), arg2, arg3, 128, mem[ceil32(arg1.length) + (64 * arg4.length) + 580 len (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaReplaceIssuers(bytes arg1, uint256 arg2, uint256 arg3, address[] arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg4.length) + 160 <= test266151307() and (32 * arg4.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = ceil32(arg1.length) + 160
    while idx < arg4.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (32 * arg4.length) + 192] = address(this.address)
    mem[ceil32(arg1.length) + (32 * arg4.length) + 212] = 'metaReplaceIssuers'
    mem[ceil32(arg1.length) + (32 * arg4.length) + 230] = arg2
    mem[ceil32(arg1.length) + (32 * arg4.length) + 262] = arg3
    idx = 0
    s = ceil32(arg1.length) + 160
    t = ceil32(arg1.length) + (32 * arg4.length) + 294
    while idx < arg4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (64 * arg4.length) + 294] = arg5
    mem[ceil32(arg1.length) + (32 * arg4.length) + 160] = (96 * arg4.length) + 134
    mem[64] = ceil32(arg1.length) + (64 * arg4.length) + 326
    _86 = sha3(mem[ceil32(arg1.length) + (32 * arg4.length) + 192 len (96 * arg4.length) + 134])
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    mem[ceil32(arg1.length) + (64 * arg4.length) + 358] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg1.length) + (64 * arg4.length) + 386] = _86
    mem[ceil32(arg1.length) + (64 * arg4.length) + 326] = 60
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _86), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg1.length) + (64 * arg4.length) + 418] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg5 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    mem[ceil32(arg1.length) + (64 * arg4.length) + 450] = 0x9d2bdb4400000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + (64 * arg4.length) + 454] = address(signer)
    mem[ceil32(arg1.length) + (64 * arg4.length) + 486] = arg2
    mem[ceil32(arg1.length) + (64 * arg4.length) + 518] = arg3
    mem[ceil32(arg1.length) + (64 * arg4.length) + 550] = 128
    mem[ceil32(arg1.length) + (64 * arg4.length) + 582] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    idx = 0
    s = ceil32(arg1.length) + 160
    t = ceil32(arg1.length) + (64 * arg4.length) + 614
    while idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.0x9d2bdb44 with:
         gas gas_remaining wei
        args address(signer), arg2, arg3, 128, mem[ceil32(arg1.length) + (64 * arg4.length) + 582 len (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaReplaceApprovers(bytes arg1, uint256 arg2, uint256 arg3, address[] arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg4.length) + 160 <= test266151307() and (32 * arg4.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = ceil32(arg1.length) + 160
    while idx < arg4.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (32 * arg4.length) + 192] = address(this.address)
    mem[ceil32(arg1.length) + (32 * arg4.length) + 212] = 'metaReplaceApprovers'
    mem[ceil32(arg1.length) + (32 * arg4.length) + 232] = arg2
    mem[ceil32(arg1.length) + (32 * arg4.length) + 264] = arg3
    idx = 0
    s = ceil32(arg1.length) + 160
    t = ceil32(arg1.length) + (32 * arg4.length) + 296
    while idx < arg4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (64 * arg4.length) + 296] = arg5
    mem[ceil32(arg1.length) + (32 * arg4.length) + 160] = (96 * arg4.length) + 136
    mem[64] = ceil32(arg1.length) + (64 * arg4.length) + 328
    _86 = sha3(mem[ceil32(arg1.length) + (32 * arg4.length) + 192 len (96 * arg4.length) + 136])
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    mem[ceil32(arg1.length) + (64 * arg4.length) + 360] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg1.length) + (64 * arg4.length) + 388] = _86
    mem[ceil32(arg1.length) + (64 * arg4.length) + 328] = 60
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _86), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg1.length) + (64 * arg4.length) + 420] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg5 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    mem[ceil32(arg1.length) + (64 * arg4.length) + 452] = 0x9d2bdb4400000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + (64 * arg4.length) + 456] = address(signer)
    mem[ceil32(arg1.length) + (64 * arg4.length) + 488] = arg2
    mem[ceil32(arg1.length) + (64 * arg4.length) + 520] = arg3
    mem[ceil32(arg1.length) + (64 * arg4.length) + 552] = 128
    mem[ceil32(arg1.length) + (64 * arg4.length) + 584] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    idx = 0
    s = ceil32(arg1.length) + 160
    t = ceil32(arg1.length) + (64 * arg4.length) + 616
    while idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.0x9d2bdb44 with:
         gas gas_remaining wei
        args address(signer), arg2, arg3, 128, mem[ceil32(arg1.length) + (64 * arg4.length) + 584 len (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaAcceptFulfillment(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256[] arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg5.length) + 160 <= test266151307() and (32 * arg5.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg5.length
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    idx = 0
    s = arg5 + 36
    t = ceil32(arg1.length) + 160
    while idx < arg5.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (32 * arg5.length) + 192] = address(this.address)
    mem[ceil32(arg1.length) + (32 * arg5.length) + 212] = 'metaAcceptFulfillment'
    mem[ceil32(arg1.length) + (32 * arg5.length) + 233] = arg2
    mem[ceil32(arg1.length) + (32 * arg5.length) + 265] = arg3
    mem[ceil32(arg1.length) + (32 * arg5.length) + 297] = arg4
    mem[ceil32(arg1.length) + (32 * arg5.length) + 329 len 32 * arg5.length] = mem[ceil32(arg1.length) + 160 len 32 * arg5.length]
    mem[ceil32(arg1.length) + (64 * arg5.length) + 329] = arg6
    mem[ceil32(arg1.length) + (32 * arg5.length) + 160] = (32 * arg5.length) + 169
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    mem[ceil32(arg1.length) + (64 * arg5.length) + 393] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg1.length) + (64 * arg5.length) + 421] = sha3(this.address, 'metaAcceptFulfillment', arg2, arg3, arg4, mem[ceil32(arg1.length) + (32 * arg5.length) + 329 len (32 * arg5.length) + 32])
    mem[ceil32(arg1.length) + (64 * arg5.length) + 361] = 60
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, 'metaAcceptFulfillment', arg2, arg3, arg4, mem[ceil32(arg1.length) + (32 * arg5.length) + 329 len (32 * arg5.length) + 32])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg1.length) + (64 * arg5.length) + 453] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg6 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    mem[ceil32(arg1.length) + (64 * arg5.length) + 485] = 0xf27e3800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + (64 * arg5.length) + 489] = address(signer)
    mem[ceil32(arg1.length) + (64 * arg5.length) + 521] = arg2
    mem[ceil32(arg1.length) + (64 * arg5.length) + 553] = arg3
    mem[ceil32(arg1.length) + (64 * arg5.length) + 585] = arg4
    mem[ceil32(arg1.length) + (64 * arg5.length) + 617] = 160
    mem[ceil32(arg1.length) + (64 * arg5.length) + 649] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + (64 * arg5.length) + 681 len 32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]] = mem[ceil32(arg1.length) + 160 len 32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.acceptFulfillment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256[] arg5) with:
         gas gas_remaining wei
        args address(signer), arg2, arg3, arg4, 160, mem[ceil32(arg1.length) + (64 * arg5.length) + 649 len (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaPerformAction(bytes arg1, uint256 arg2, string arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg1.length) + ceil32(arg3.length) + 160 <= test266151307() and ceil32(arg3.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + arg3.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 192] = address(this.address)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 212] = 'metaPerformAction'
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 229] = arg2
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 261 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 261] = arg4
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = arg3.length + 101
    if ceil32(arg3.length) <= arg3.length:
        _87 = sha3(mem[ceil32(arg1.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
        require arg1.length == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
        mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 325] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 353] = _87
        mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 293] = 60
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _87), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    else:
        _91 = sha3(mem[ceil32(arg1.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
        require arg1.length == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
        mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 325] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 353] = _91
        mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 293] = 60
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _91), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 385] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg4 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 417] = 0x4ac4e25a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 421] = address(signer)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 453] = arg2
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 485] = 96
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 517] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 549 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 549] = 0
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.0x4ac4e25a with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 421 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaChangeData(bytes arg1, uint256 arg2, uint256 arg3, string arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg1.length) + ceil32(arg4.length) + 160 <= test266151307() and ceil32(arg4.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + arg4.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 192] = address(this.address)
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 212] = 'metaChangeData'
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 226] = arg2
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 258] = arg3
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 290 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg1.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
    mem[ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 290] = arg5
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 160] = arg4.length + 130
    if ceil32(arg4.length) <= arg4.length:
        _87 = sha3(mem[ceil32(arg1.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg1.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
        require arg1.length == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
        mem[ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 354] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 382] = _87
        mem[ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 322] = 60
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _87), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    else:
        _91 = sha3(mem[ceil32(arg1.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg1.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
        require arg1.length == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
        mem[ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 354] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 382] = _91
        mem[ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 322] = 60
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _91), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 414] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg5 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    mem[ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 446] = 0x7ef8213c00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 450] = address(signer)
    mem[ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 482] = arg2
    mem[ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 514] = arg3
    mem[ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 546] = 128
    mem[ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 578] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 610 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 610] = 0
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.0x7ef8213c with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 450 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaFulfillBounty(bytes arg1, uint256 arg2, address[] arg3, string arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg3.length) + 160 <= test266151307() and (32 * arg3.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = ceil32(arg1.length) + 160
    while idx < arg3.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg3.length) + ceil32(arg4.length) + 192 <= test266151307() and ceil32(arg4.length) + 192 >= 160
    mem[ceil32(arg1.length) + (32 * arg3.length) + 160] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + (32 * arg3.length) + 192 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + (32 * arg3.length) + arg4.length + 192] = 0
    mem[ceil32(arg1.length) + (32 * arg3.length) + ceil32(arg4.length) + 224] = address(this.address)
    mem[ceil32(arg1.length) + (32 * arg3.length) + ceil32(arg4.length) + 244] = 'metaFulfillBounty'
    mem[ceil32(arg1.length) + (32 * arg3.length) + ceil32(arg4.length) + 261] = arg2
    idx = 0
    s = ceil32(arg1.length) + 160
    t = ceil32(arg1.length) + (32 * arg3.length) + ceil32(arg4.length) + 293
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    s = 0
    while arg3.length < arg4.length:
        mem[ceil32(arg1.length) + (67 * arg3.length) + ceil32(arg4.length) + 293] = mem[ceil32(arg1.length) + (34 * arg3.length) + 192]
        s = arg3.length + 32
        continue 
    mem[ceil32(arg1.length) + (64 * arg3.length) + ceil32(arg4.length) + arg4.length + 293] = arg5
    mem[ceil32(arg1.length) + (32 * arg3.length) + ceil32(arg4.length) + 192] = (96 * arg3.length) + arg4.length + 101
    if arg3.length <= arg4.length:
        _279 = sha3(mem[ceil32(arg1.length) + (32 * arg3.length) + ceil32(arg4.length) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg1.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]])
        require arg1.length == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
        mem[ceil32(arg1.length) + (64 * arg3.length) + ceil32(arg4.length) + arg4.length + 357] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg1.length) + (64 * arg3.length) + ceil32(arg4.length) + arg4.length + 385] = _279
        mem[ceil32(arg1.length) + (64 * arg3.length) + ceil32(arg4.length) + arg4.length + 325] = 60
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _279), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    else:
        _283 = sha3(mem[ceil32(arg1.length) + (32 * arg3.length) + ceil32(arg4.length) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg1.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]])
        require arg1.length == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
        mem[ceil32(arg1.length) + (64 * arg3.length) + ceil32(arg4.length) + arg4.length + 357] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg1.length) + (64 * arg3.length) + ceil32(arg4.length) + arg4.length + 385] = _283
        mem[ceil32(arg1.length) + (64 * arg3.length) + ceil32(arg4.length) + arg4.length + 325] = 60
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _283), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg1.length) + (64 * arg3.length) + ceil32(arg4.length) + arg4.length + 417] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg5 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    mem[ceil32(arg1.length) + (64 * arg3.length) + ceil32(arg4.length) + arg4.length + 449] = 0x97d7666500000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + (64 * arg3.length) + ceil32(arg4.length) + arg4.length + 453] = address(signer)
    mem[ceil32(arg1.length) + (64 * arg3.length) + ceil32(arg4.length) + arg4.length + 485] = arg2
    mem[ceil32(arg1.length) + (64 * arg3.length) + ceil32(arg4.length) + arg4.length + 517] = 128
    mem[ceil32(arg1.length) + (64 * arg3.length) + ceil32(arg4.length) + arg4.length + 581] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    idx = 0
    s = ceil32(arg1.length) + 160
    t = ceil32(arg1.length) + (64 * arg3.length) + ceil32(arg4.length) + arg4.length + 613
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (64 * arg3.length) + ceil32(arg4.length) + arg4.length + 549] = (32 * arg3.length) + 160
    mem[ceil32(arg1.length) + (98 * arg3.length) + ceil32(arg4.length) + arg4.length + 613] = mem[ceil32(arg1.length) + (32 * arg3.length) + 160]
    s = 0
    while arg3.length < mem[ceil32(arg1.length) + (32 * arg3.length) + 160]:
        mem[ceil32(arg1.length) + (99 * arg3.length) + ceil32(arg4.length) + arg4.length + 645] = mem[ceil32(arg1.length) + (34 * arg3.length) + 192]
        s = arg3.length + 32
        continue 
    if arg3.length > mem[ceil32(arg1.length) + (32 * arg3.length) + 160]:
        mem[ceil32(arg1.length) + (98 * arg3.length) + ceil32(arg4.length) + arg4.length + mem[ceil32(arg1.length) + (32 * arg3.length) + 160] + 645] = 0
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.0x97d76665 with:
         gas gas_remaining wei
        args address(signer), arg2, 128, (32 * arg3.length) + 160, mem[ceil32(arg1.length) + (64 * arg3.length) + ceil32(arg4.length) + arg4.length + 581 len (32 * arg3.length) + ceil32(mem[ceil32(arg1.length) + (32 * arg3.length) + 160]) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaUpdateFulfillment(bytes arg1, uint256 arg2, uint256 arg3, address[] arg4, string arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg4.length) + 160 <= test266151307() and (32 * arg4.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = ceil32(arg1.length) + 160
    while idx < arg4.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg4.length) + ceil32(arg5.length) + 192 <= test266151307() and ceil32(arg5.length) + 192 >= 160
    mem[ceil32(arg1.length) + (32 * arg4.length) + 160] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
    mem[ceil32(arg1.length) + (32 * arg4.length) + arg5.length + 192] = 0
    mem[ceil32(arg1.length) + (32 * arg4.length) + ceil32(arg5.length) + 224] = address(this.address)
    mem[ceil32(arg1.length) + (32 * arg4.length) + ceil32(arg5.length) + 244] = 'metaUpdateFulfillment'
    mem[ceil32(arg1.length) + (32 * arg4.length) + ceil32(arg5.length) + 265] = arg2
    mem[ceil32(arg1.length) + (32 * arg4.length) + ceil32(arg5.length) + 297] = arg3
    idx = 0
    s = ceil32(arg1.length) + 160
    t = ceil32(arg1.length) + (32 * arg4.length) + ceil32(arg5.length) + 329
    while idx < arg4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    s = 0
    while arg4.length < arg5.length:
        mem[ceil32(arg1.length) + (67 * arg4.length) + ceil32(arg5.length) + 329] = mem[ceil32(arg1.length) + (34 * arg4.length) + 192]
        s = arg4.length + 32
        continue 
    mem[ceil32(arg1.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 329] = arg6
    mem[ceil32(arg1.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = (96 * arg4.length) + arg5.length + 137
    if arg4.length <= arg5.length:
        _279 = sha3(mem[ceil32(arg1.length) + (32 * arg4.length) + ceil32(arg5.length) + 224 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg1.length) + (32 * arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]])
        require arg1.length == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
        mem[ceil32(arg1.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 393] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg1.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 421] = _279
        mem[ceil32(arg1.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 361] = 60
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _279), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    else:
        _283 = sha3(mem[ceil32(arg1.length) + (32 * arg4.length) + ceil32(arg5.length) + 224 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg1.length) + (32 * arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]])
        require arg1.length == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
        mem[ceil32(arg1.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 393] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg1.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 421] = _283
        mem[ceil32(arg1.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 361] = 60
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _283), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg1.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 453] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg6 == replayNonce[address(signer)]
    replayNonce[address(signer)]++
    mem[ceil32(arg1.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 485] = 0xc496045000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 489] = address(signer)
    mem[ceil32(arg1.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 521] = arg2
    mem[ceil32(arg1.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 553] = arg3
    mem[ceil32(arg1.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 585] = 160
    mem[ceil32(arg1.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 649] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    idx = 0
    s = ceil32(arg1.length) + 160
    t = ceil32(arg1.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 681
    while idx < arg4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 617] = (32 * arg4.length) + 192
    mem[ceil32(arg1.length) + (98 * arg4.length) + ceil32(arg5.length) + arg5.length + 681] = mem[ceil32(arg1.length) + (32 * arg4.length) + 160]
    s = 0
    while arg4.length < mem[ceil32(arg1.length) + (32 * arg4.length) + 160]:
        mem[ceil32(arg1.length) + (99 * arg4.length) + ceil32(arg5.length) + arg5.length + 713] = mem[ceil32(arg1.length) + (34 * arg4.length) + 192]
        s = arg4.length + 32
        continue 
    if arg4.length > mem[ceil32(arg1.length) + (32 * arg4.length) + 160]:
        mem[ceil32(arg1.length) + (98 * arg4.length) + ceil32(arg5.length) + arg5.length + mem[ceil32(arg1.length) + (32 * arg4.length) + 160] + 713] = 0
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.0xc4960450 with:
         gas gas_remaining wei
        args address(signer), arg2, arg3, 160, (32 * arg4.length) + 192, mem[ceil32(arg1.length) + (64 * arg4.length) + ceil32(arg5.length) + arg5.length + 649 len (32 * arg4.length) + ceil32(mem[ceil32(arg1.length) + (32 * arg4.length) + 160]) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaChangeBounty(bytes arg1, uint256 arg2, uint256 arg3, address[] arg4, address[] arg5, string arg6, uint256 arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg4.length) + 160 <= test266151307() and (32 * arg4.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = ceil32(arg1.length) + 160
    while idx < arg4.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 192 <= test266151307() and (32 * arg5.length) + 192 >= 160
    mem[ceil32(arg1.length) + (32 * arg4.length) + 160] = arg5.length
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    idx = 0
    s = arg5 + 36
    t = ceil32(arg1.length) + (32 * arg4.length) + 192
    while idx < arg5.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 224 <= test266151307() and ceil32(arg6.length) + 224 >= 192
    mem[64] = ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 224
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = arg6.length
    require arg6 + arg6.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 224 len arg6.length] = arg6[all]
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + arg6.length + 224] = 0
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 256] = address(this.address)
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 276] = 'metaChangeBounty'
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 292] = arg2
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 324] = arg3
    _171 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    idx = 0
    s = ceil32(arg1.length) + 160
    t = mem[64] + 132
    while idx < _171:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _272 = mem[ceil32(arg1.length) + (32 * arg4.length) + 160]
    idx = 0
    s = ceil32(arg1.length) + (32 * arg4.length) + 192
    t = ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + 356
    while idx < mem[ceil32(arg1.length) + (32 * arg4.length) + 160]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _371 = mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
    s = 0
    while mem[ceil32(arg1.length) + (32 * arg4.length) + 160] < mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 192]:
        mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (34 * mem[ceil32(arg1.length) + (32 * arg4.length) + 160]) + 356] = mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + mem[ceil32(arg1.length) + (32 * arg4.length) + 160] + 224]
        s = mem[ceil32(arg1.length) + (32 * arg4.length) + 160] + 32
        continue 
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * mem[ceil32(arg1.length) + (32 * arg4.length) + 160]) + mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 192] + 356] = arg7
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * mem[ceil32(arg1.length) + (32 * arg4.length) + 160]) + mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 192] + 388] = arg8
    if mem[ceil32(arg1.length) + (32 * arg4.length) + 160] <= mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 192]:
        _468 = mem[64]
        mem[mem[64]] = ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * mem[ceil32(arg1.length) + (32 * arg4.length) + 160]) + mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 192] + -mem[64] + 388
        mem[64] = ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 420
        _470 = sha3(mem[_468 + 32 len mem[_468]])
        require mem[96] == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
        mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 452] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 480] = _470
        mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 420] = 60
        mem[64] = ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 544
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _470), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    else:
        _472 = mem[64]
        mem[mem[64]] = ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * mem[ceil32(arg1.length) + (32 * arg4.length) + 160]) + mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 192] + -mem[64] + 388
        mem[64] = ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 420
        _474 = sha3(mem[_472 + 32 len mem[_472]])
        require mem[96] == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
        mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 452] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 480] = _474
        mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 420] = 60
        mem[64] = ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 544
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _474), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 512] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg8 == replayNonce[address(signer)]
    mem[0] = address(signer)
    mem[32] = 1
    replayNonce[address(signer)]++
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 544] = 0xb178d76800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 548] = address(signer)
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 580] = arg2
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 612] = arg3
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 644] = 224
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 772] = mem[ceil32(arg1.length) + 128]
    idx = 0
    s = ceil32(arg1.length) + 160
    t = ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 804
    while idx < mem[ceil32(arg1.length) + 128]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 676] = (32 * mem[ceil32(arg1.length) + 128]) + 256
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + (32 * mem[ceil32(arg1.length) + 128]) + 804] = mem[ceil32(arg1.length) + (32 * arg4.length) + 160]
    idx = 0
    s = ceil32(arg1.length) + (32 * arg4.length) + 192
    t = ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + (32 * mem[ceil32(arg1.length) + 128]) + 836
    while idx < mem[ceil32(arg1.length) + (32 * arg4.length) + 160]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 708] = (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg4.length) + 160]) + 288
    mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg4.length) + 160]) + 836] = mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 192]
    s = 0
    while mem[ceil32(arg1.length) + (32 * arg4.length) + 160] < mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 192]:
        mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + (32 * mem[ceil32(arg1.length) + 128]) + (34 * mem[ceil32(arg1.length) + (32 * arg4.length) + 160]) + 868] = mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + mem[ceil32(arg1.length) + (32 * arg4.length) + 160] + 224]
        s = mem[ceil32(arg1.length) + (32 * arg4.length) + 160] + 32
        continue 
    if mem[ceil32(arg1.length) + (32 * arg4.length) + 160] > mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 192]:
        mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg4.length) + 160]) + mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 192] + 868] = 0
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.0xb178d768 with:
         gas gas_remaining wei
        args address(signer), arg2, arg3, 224, (32 * mem[ceil32(arg1.length) + 128]) + 256, (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg4.length) + 160]) + 288, arg7, mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * _171) + (32 * _272) + _371 + 772 len (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg4.length) + 160]) + ceil32(mem[ceil32(arg1.length) + (32 * arg4.length) + (32 * arg5.length) + 192]) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function metaIssueBounty(bytes arg1, address[] arg2, address[] arg3, string arg4, uint256 arg5, address arg6, uint256 arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = ceil32(arg1.length) + 160
    while idx < arg2.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 <= test266151307() and (32 * arg3.length) + 192 >= 160
    mem[ceil32(arg1.length) + (32 * arg2.length) + 160] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = ceil32(arg1.length) + (32 * arg2.length) + 192
    while idx < arg3.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 224 <= test266151307() and ceil32(arg4.length) + 224 >= 192
    mem[64] = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 224
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + arg4.length + 224] = 0
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 256] = address(this.address)
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 276] = 'metaIssueBounty'
    _167 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    idx = 0
    s = ceil32(arg1.length) + 160
    t = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 291
    while idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _260 = mem[ceil32(arg1.length) + (32 * arg2.length) + 160]
    idx = 0
    s = ceil32(arg1.length) + (32 * arg2.length) + 192
    t = mem[64] + (32 * _167) + 67
    while idx < _260:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _391 = mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
    s = 0
    while _260 < mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (34 * _260) + 291] = mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + _260 + 224]
        s = _260 + 32
        continue 
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] + 291] = arg5
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] + 323] = address(arg6)
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] + 343] = arg7
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] + 375] = arg8
    if _260 <= mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
        _520 = mem[64]
        mem[mem[64]] = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] + -mem[64] + 375
        mem[64] = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 407
        _522 = sha3(mem[_520 + 32 len mem[_520]])
        require mem[96] == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 439] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 467] = _522
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 407] = 60
        mem[64] = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 531
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 595] = mem[128]
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 627] = mem[160]
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _522), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    else:
        _524 = mem[64]
        mem[mem[64]] = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] + -mem[64] + 375
        mem[64] = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 407
        _526 = sha3(mem[_524 + 32 len mem[_524]])
        require mem[96] == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 439] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 467] = _526
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 407] = 60
        mem[64] = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 531
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 595] = mem[128]
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 627] = mem[160]
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _526), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 499] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg8 == replayNonce[address(signer)]
    mem[0] = address(signer)
    mem[32] = 1
    replayNonce[address(signer)]++
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 531] = 0x567b3d2e00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 535] = address(signer)
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 567] = 224
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 759] = mem[ceil32(arg1.length) + 128]
    idx = 0
    s = ceil32(arg1.length) + 160
    t = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 791
    while idx < mem[ceil32(arg1.length) + 128]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 599] = (32 * mem[ceil32(arg1.length) + 128]) + 256
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + (32 * mem[ceil32(arg1.length) + 128]) + 791] = mem[ceil32(arg1.length) + (32 * arg2.length) + 160]
    idx = 0
    s = ceil32(arg1.length) + (32 * arg2.length) + 192
    t = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + (32 * mem[ceil32(arg1.length) + 128]) + 823
    while idx < mem[ceil32(arg1.length) + (32 * arg2.length) + 160]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 631] = (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + 288
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + 823] = mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
    s = 0
    while mem[ceil32(arg1.length) + (32 * arg2.length) + 160] < mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + (32 * mem[ceil32(arg1.length) + 128]) + (34 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + 855] = mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + mem[ceil32(arg1.length) + (32 * arg2.length) + 160] + 224]
        s = mem[ceil32(arg1.length) + (32 * arg2.length) + 160] + 32
        continue 
    if mem[ceil32(arg1.length) + (32 * arg2.length) + 160] > mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] + 855] = 0
    require ext_code.size(bountiesContractAddress)
    call bountiesContractAddress.0x567b3d2e with:
         gas gas_remaining wei
        args address(signer), 224, (32 * mem[ceil32(arg1.length) + 128]) + 256, (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + 288, arg5, address(arg6), arg7, mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _167) + (32 * _260) + _391 + 759 len (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + ceil32(mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function metaIssueAndContribute(bytes arg1, address[] arg2, address[] arg3, string arg4, uint256 arg5, address arg6, uint256 arg7, uint256 arg8, uint256 arg9) payable {
    require calldata.size - 4 >= 288
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = ceil32(arg1.length) + 160
    while idx < arg2.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 <= test266151307() and (32 * arg3.length) + 192 >= 160
    mem[ceil32(arg1.length) + (32 * arg2.length) + 160] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = ceil32(arg1.length) + (32 * arg2.length) + 192
    while idx < arg3.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 224 <= test266151307() and ceil32(arg4.length) + 224 >= 192
    mem[64] = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 224
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + arg4.length + 224] = 0
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 256] = address(this.address)
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 276] = 'metaIssueAndContribute'
    _150 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    idx = 0
    s = ceil32(arg1.length) + 160
    t = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 298
    while idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _263 = mem[ceil32(arg1.length) + (32 * arg2.length) + 160]
    idx = 0
    s = ceil32(arg1.length) + (32 * arg2.length) + 192
    t = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + 298
    while idx < mem[ceil32(arg1.length) + (32 * arg2.length) + 160]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _462 = mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
    s = 0
    while mem[ceil32(arg1.length) + (32 * arg2.length) + 160] < mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (34 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + 298] = mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + mem[ceil32(arg1.length) + (32 * arg2.length) + 160] + 224]
        s = mem[ceil32(arg1.length) + (32 * arg2.length) + 160] + 32
        continue 
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] + 298] = arg5
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] + 330] = address(arg6)
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] + 350] = arg7
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] + 382] = arg8
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] + 414] = arg9
    if mem[ceil32(arg1.length) + (32 * arg2.length) + 160] <= mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
        _659 = mem[64]
        mem[mem[64]] = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] + -mem[64] + 414
        mem[64] = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 446
        _661 = sha3(mem[_659 + 32 len mem[_659]])
        require mem[96] == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 478] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 506] = _661
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 446] = 60
        mem[64] = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 570
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 634] = mem[128]
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 666] = mem[160]
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _661), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    else:
        _663 = mem[64]
        mem[mem[64]] = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] + -mem[64] + 414
        mem[64] = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 446
        _665 = sha3(mem[_663 + 32 len mem[_663]])
        require mem[96] == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 478] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 506] = _665
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 446] = 60
        mem[64] = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 570
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 634] = mem[128]
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 666] = mem[160]
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _665), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 538] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg9 == replayNonce[address(signer)]
    mem[0] = address(signer)
    mem[32] = 1
    replayNonce[address(signer)]++
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 570] = 0x6060ae300000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 574] = address(signer)
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 606] = 256
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 830] = mem[ceil32(arg1.length) + 128]
    if msg.value <= 0:
        idx = 0
        s = ceil32(arg1.length) + 160
        t = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 862
        while idx < mem[ceil32(arg1.length) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 638] = (32 * mem[ceil32(arg1.length) + 128]) + 288
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + (32 * mem[ceil32(arg1.length) + 128]) + 862] = mem[ceil32(arg1.length) + (32 * arg2.length) + 160]
        idx = 0
        s = ceil32(arg1.length) + (32 * arg2.length) + 192
        t = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + (32 * mem[ceil32(arg1.length) + 128]) + 894
        while idx < mem[ceil32(arg1.length) + (32 * arg2.length) + 160]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 670] = (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + 320
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + 894] = mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        s = 0
        while mem[ceil32(arg1.length) + (32 * arg2.length) + 160] < mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
            mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + (32 * mem[ceil32(arg1.length) + 128]) + (34 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + 926] = mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + mem[ceil32(arg1.length) + (32 * arg2.length) + 160] + 224]
            s = mem[ceil32(arg1.length) + (32 * arg2.length) + 160] + 32
            continue 
        if mem[ceil32(arg1.length) + (32 * arg2.length) + 160] > mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
            mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] + 926] = 0
        require ext_code.size(bountiesContractAddress)
        call bountiesContractAddress.issueAndContribute(address arg1, address[] arg2, address[] arg3, string arg4, uint256 arg5, address arg6, uint256 arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(signer), 256, (32 * mem[ceil32(arg1.length) + 128]) + 288, (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + 320, arg5, address(arg6), arg7, arg8, mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 830 len (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + ceil32(mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]) + 96]
    else:
        idx = 0
        s = ceil32(arg1.length) + 160
        t = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 862
        while idx < mem[ceil32(arg1.length) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 638] = (32 * mem[ceil32(arg1.length) + 128]) + 288
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + (32 * mem[ceil32(arg1.length) + 128]) + 862] = mem[ceil32(arg1.length) + (32 * arg2.length) + 160]
        idx = 0
        s = ceil32(arg1.length) + (32 * arg2.length) + 192
        t = ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + (32 * mem[ceil32(arg1.length) + 128]) + 894
        while idx < mem[ceil32(arg1.length) + (32 * arg2.length) + 160]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 670] = (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + 320
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + 894] = mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        s = 0
        while mem[ceil32(arg1.length) + (32 * arg2.length) + 160] < mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
            mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + (32 * mem[ceil32(arg1.length) + 128]) + (34 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + 926] = mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + mem[ceil32(arg1.length) + (32 * arg2.length) + 160] + 224]
            s = mem[ceil32(arg1.length) + (32 * arg2.length) + 160] + 32
            continue 
        if mem[ceil32(arg1.length) + (32 * arg2.length) + 160] > mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]:
            mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] + 926] = 0
        require ext_code.size(bountiesContractAddress)
        call bountiesContractAddress.issueAndContribute(address arg1, address[] arg2, address[] arg3, string arg4, uint256 arg5, address arg6, uint256 arg7, uint256 arg8) with:
           value msg.value wei
             gas gas_remaining wei
            args address(signer), 256, (32 * mem[ceil32(arg1.length) + 128]) + 288, (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + 320, arg5, address(arg6), arg7, arg8, mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + (32 * _150) + (32 * _263) + _462 + 830 len (32 * mem[ceil32(arg1.length) + 128]) + (32 * mem[ceil32(arg1.length) + (32 * arg2.length) + 160]) + ceil32(mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
