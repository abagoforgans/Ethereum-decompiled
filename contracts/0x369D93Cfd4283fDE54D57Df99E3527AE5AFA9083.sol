contract main {




// =====================  Runtime code  =====================


const EXTERNAL_QUERY_GAS_LIMIT = 8000


mapping of uint256 sub_f1c64a70;
mapping of uint8 stor1;
address contractRegistryAddress;

function sub_1a3b7e3e(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function contractRegistry() {
    return contractRegistryAddress
}

function sub_f1c64a70(?) {
    require calldata.size - 4 >= 32
    return sub_f1c64a70[arg1]
}

function _fallback() payable {
    revert
}

function sub_e01cc3a7(?) {
    require calldata.size - 4 >= 160
    require calldata.size - 36 >= 128
    require calldata.size - 36 >= 32
    require calldata.size - 68 >= 96
    return sha3(this.address, arg1)
}

function sub_3caa9952(?) {
    require calldata.size - 4 >= 160
    require calldata.size - 36 >= 128
    require calldata.size - 36 >= 32
    require calldata.size - 68 >= 96
    if arg1 != msg.sender:
        return 0
    stor1[this.address][arg2] = 1
    emit 0x320c5376: arg1, sha3(this.address, arg2)
    return 1
}

function sub_578911ac(?) {
    require calldata.size - 4 >= 160
    require calldata.size - 68 >= 96
    mem[256 len 0] = None
    signer = erecover(sha3(mem[256 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg2), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (address(signer) == arg1)
}

function sub_aa71f9e8(?) {
    require calldata.size - 4 >= 1024
    require calldata.size - 4 >= 192
    require calldata.size - 4 >= 160
    require calldata.size - 36 >= 128
    require calldata.size - 36 >= 32
    require calldata.size - 68 >= 96
    require calldata.size - 196 >= 832
    require calldata.size - 740 >= 96
    require calldata.size - 836 >= 96
    require calldata.size - 932 >= 96
    require arg2 + sub_f1c64a70[this.address][arg1] >= arg2
    return arg2 + sub_f1c64a70[this.address][arg1] <= arg1
}

function sub_a080ca5a(?) {
    require calldata.size - 4 >= 192
    require calldata.size - 4 >= 160
    require calldata.size - 36 >= 128
    require calldata.size - 36 >= 32
    require calldata.size - 68 >= 96
    if msg.sender == uint64(arg1) << 96:
        return 1
    mem[896 len 0] = None
    signer = erecover(sha3(mem[896 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg2)), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (address(signer) == address(arg1))
}

function sub_fbc6a534(?) {
    require calldata.size - 4 >= 992
    require calldata.size - 4 >= 160
    require calldata.size - 36 >= 128
    require calldata.size - 36 >= 32
    require calldata.size - 68 >= 96
    require calldata.size - 164 >= 832
    require calldata.size - 708 >= 96
    require calldata.size - 804 >= 96
    require calldata.size - 900 >= 96
    if msg.sender == uint64(arg1) << 96:
        require arg7 + sub_f1c64a70[this.address][arg2] >= arg7
        if arg7 + sub_f1c64a70[this.address][arg2] > arg2:
            emit 0x25eefca0 
            emit 0x3 
            return 0
        if stor1[this.address][arg2]:
            emit 0x25eefca0 
            emit 0x0 
            return 0
        require sub_f1c64a70[this.address][arg2] + arg7 >= sub_f1c64a70[this.address][arg2]
        sub_f1c64a70[this.address][arg2] += arg7
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.tokenTransferProxy() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 2788] = arg8
        mem[ceil32(return_data.size) + 2820] = arg11
        mem[ceil32(return_data.size) + 2852] = this.address
        mem[ceil32(return_data.size) + 2884] = arg7
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x15dacbea with:
             gas gas_remaining wei
            args address(arg8), address(arg11), address(this.address), arg7
        mem[ceil32(return_data.size) + 2784] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.tokenTransferProxy() with:
             gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 2784] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 2788] = this.address
        mem[(4 * ceil32(return_data.size)) + 2820] = address(ext_call.return_data[0])
        require ext_code.size(arg8)
        call arg8.0xdd62ed3e with:
             gas 8000 wei
            args address(this.address), address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 2784] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg7 + arg12 >= arg7
        if ext_call.return_data[0] >= arg7 + arg12:
            mem[(6 * ceil32(return_data.size)) + 4320] = arg6
            mem[(6 * ceil32(return_data.size)) + 4352] = arg9
            mem[(6 * ceil32(return_data.size)) + 4384] = arg15
            mem[(6 * ceil32(return_data.size)) + 4416] = arg18
            mem[(6 * ceil32(return_data.size)) + 4448] = arg8
            mem[(6 * ceil32(return_data.size)) + 4480] = arg13
            mem[(6 * ceil32(return_data.size)) + 4512] = arg17
            mem[(6 * ceil32(return_data.size)) + 4800] = 0
            mem[(6 * ceil32(return_data.size)) + 4832] = 0
            mem[(6 * ceil32(return_data.size)) + 4864] = 0
            mem[(6 * ceil32(return_data.size)) + 4896] = arg22
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.0x79dd4b7 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = (6 * ceil32(return_data.size)) + 4320
            t = (7 * ceil32(return_data.size)) + 5124
            while idx < 6:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            s = (6 * ceil32(return_data.size)) + 4800
            t = (7 * ceil32(return_data.size)) + 5604
            while idx < 3:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
                 gas gas_remaining wei
                args address(this.address), mem[(7 * ceil32(return_data.size)) + 5124 len 192], arg17, arg21, arg7, arg16, arg14, arg12, arg10, arg20 >> 1792, arg19, mem[(7 * ceil32(return_data.size)) + 5604 len 96], arg22, arg24, arg26 >> 512, arg23, arg25, arg27
        else:
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.tokenTransferProxy() with:
                 gas gas_remaining wei
            mem[(6 * ceil32(return_data.size)) + 2784] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 2788] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 2820] = arg7 + arg12
            require ext_code.size(arg8)
            call arg8.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg7 + arg12
            mem[(7 * ceil32(return_data.size)) + 2784] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 4320] = arg6
            mem[(8 * ceil32(return_data.size)) + 4352] = arg9
            mem[(8 * ceil32(return_data.size)) + 4384] = arg15
            mem[(8 * ceil32(return_data.size)) + 4416] = arg18
            mem[(8 * ceil32(return_data.size)) + 4448] = arg8
            mem[(8 * ceil32(return_data.size)) + 4480] = arg13
            mem[(8 * ceil32(return_data.size)) + 4512] = arg17
            mem[(8 * ceil32(return_data.size)) + 4800] = 0
            mem[(8 * ceil32(return_data.size)) + 4832] = 0
            mem[(8 * ceil32(return_data.size)) + 4864] = 0
            mem[(8 * ceil32(return_data.size)) + 4896] = arg22
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.0x79dd4b7 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = (8 * ceil32(return_data.size)) + 4320
            t = (10 * ceil32(return_data.size)) + 5124
            while idx < 6:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            s = (8 * ceil32(return_data.size)) + 4800
            t = (10 * ceil32(return_data.size)) + 5604
            while idx < 3:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
                 gas gas_remaining wei
                args address(this.address), mem[(10 * ceil32(return_data.size)) + 5124 len 192], arg17, arg21, arg7, arg16, arg14, arg12, arg10, arg20 >> 1792, arg19, mem[(10 * ceil32(return_data.size)) + 5604 len 96], arg22, arg24, arg26 >> 512, arg23, arg25, arg27
    else:
        mem[2432 len 0] = None
        signer = erecover(sha3(mem[2432 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg2)), arg3 << 248, arg4, arg5) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(signer) != address(arg1):
            emit 0x25eefca0 
            emit 0x2 
            return 0
        require arg7 + sub_f1c64a70[this.address][arg2] >= arg7
        if arg7 + sub_f1c64a70[this.address][arg2] > arg2:
            emit 0x25eefca0 
            emit 0x3 
            return 0
        if stor1[this.address][arg2]:
            emit 0x25eefca0 
            emit 0x0 
            return 0
        require sub_f1c64a70[this.address][arg2] + arg7 >= sub_f1c64a70[this.address][arg2]
        sub_f1c64a70[this.address][arg2] += arg7
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.tokenTransferProxy() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 2884] = arg8
        mem[ceil32(return_data.size) + 2916] = arg11
        mem[ceil32(return_data.size) + 2948] = this.address
        mem[ceil32(return_data.size) + 2980] = arg7
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x15dacbea with:
             gas gas_remaining wei
            args address(arg8), address(arg11), address(this.address), arg7
        mem[ceil32(return_data.size) + 2880] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.tokenTransferProxy() with:
             gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 2880] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 2884] = this.address
        mem[(4 * ceil32(return_data.size)) + 2916] = address(ext_call.return_data[0])
        require ext_code.size(arg8)
        call arg8.0xdd62ed3e with:
             gas 8000 wei
            args address(this.address), address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 2880] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg7 + arg12 >= arg7
        if ext_call.return_data[0] >= arg7 + arg12:
            mem[(6 * ceil32(return_data.size)) + 4416] = uint64(arg6) << 96
            mem[(6 * ceil32(return_data.size)) + 4448] = uint64(arg9) << 96
            mem[(6 * ceil32(return_data.size)) + 4480] = uint64(arg15) << 96
            mem[(6 * ceil32(return_data.size)) + 4512] = uint64(arg18) << 96
            mem[(6 * ceil32(return_data.size)) + 4544] = uint64(arg8) << 96
            mem[(6 * ceil32(return_data.size)) + 4576] = uint64(arg13) << 96
            mem[(6 * ceil32(return_data.size)) + 4608] = arg17
            mem[(6 * ceil32(return_data.size)) + 4896] = 0
            mem[(6 * ceil32(return_data.size)) + 4928] = 0
            mem[(6 * ceil32(return_data.size)) + 4960] = 0
            mem[(6 * ceil32(return_data.size)) + 4992] = arg22
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.0x79dd4b7 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = (6 * ceil32(return_data.size)) + 4416
            t = (7 * ceil32(return_data.size)) + 5220
            while idx < 6:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            s = (6 * ceil32(return_data.size)) + 4896
            t = (7 * ceil32(return_data.size)) + 5700
            while idx < 3:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
                 gas gas_remaining wei
                args address(this.address), mem[(7 * ceil32(return_data.size)) + 5220 len 192], arg17, arg21, arg7, arg16, arg14, arg12, arg10, arg20 >> 1792, arg19, mem[(7 * ceil32(return_data.size)) + 5700 len 96], arg26 >> 512, arg23, arg25, arg27
        else:
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.tokenTransferProxy() with:
                 gas gas_remaining wei
            mem[(6 * ceil32(return_data.size)) + 2880] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 2884] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 2916] = arg7 + arg12
            require ext_code.size(arg8)
            call arg8.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg7 + arg12
            mem[(7 * ceil32(return_data.size)) + 2880] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 4416] = uint64(arg6) << 96
            mem[(8 * ceil32(return_data.size)) + 4448] = uint64(arg9) << 96
            mem[(8 * ceil32(return_data.size)) + 4480] = uint64(arg15) << 96
            mem[(8 * ceil32(return_data.size)) + 4512] = uint64(arg18) << 96
            mem[(8 * ceil32(return_data.size)) + 4544] = uint64(arg8) << 96
            mem[(8 * ceil32(return_data.size)) + 4576] = uint64(arg13) << 96
            mem[(8 * ceil32(return_data.size)) + 4608] = arg17
            mem[(8 * ceil32(return_data.size)) + 4896] = 0
            mem[(8 * ceil32(return_data.size)) + 4928] = 0
            mem[(8 * ceil32(return_data.size)) + 4960] = 0
            mem[(8 * ceil32(return_data.size)) + 4992] = arg22
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.0x79dd4b7 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = (8 * ceil32(return_data.size)) + 4416
            t = (10 * ceil32(return_data.size)) + 5220
            while idx < 6:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            s = (8 * ceil32(return_data.size)) + 4896
            t = (10 * ceil32(return_data.size)) + 5700
            while idx < 3:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
                 gas gas_remaining wei
                args address(this.address), mem[(10 * ceil32(return_data.size)) + 5220 len 192], arg17, arg21, arg7, arg16, arg14, arg12, arg10, arg20 >> 1792, arg19, mem[(10 * ceil32(return_data.size)) + 5700 len 96], arg26 >> 512, arg23, arg25, arg27
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtToken() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg11), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}

function sub_895ee0e2(?) {
    require calldata.size - 4 >= 864
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (192 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 192
        _92 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require calldata.size - s >= 160
        _94 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        mem[_94] = address(cd[s])
        require calldata.size + -s - 32 >= 128
        _95 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require calldata.size + -s - 32 >= 32
        _96 = mem[64]
        require mem[64] + 32 <= test266151307() and mem[64] + 32 >= mem[64]
        mem[64] = mem[64] + 32
        mem[_96] = cd[(s + 32)]
        mem[_95] = _96
        require calldata.size + -s - 64 >= 96
        _97 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        mem[_97] = uint8(cd[(s + 64)])
        mem[_97 + 32] = cd[(s + 96)]
        mem[_97 + 64] = cd[(s + 128)]
        mem[_95 + 32] = _97
        mem[_94 + 32] = _95
        mem[_92] = _94
        mem[_92 + 32] = cd[(s + 160)]
        mem[t] = _92
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    require calldata.size - 36 >= 832
    _93 = mem[64]
    require mem[64] + 640 <= test266151307() and mem[64] + 640 >= mem[64]
    mem[64] = mem[64] + 640
    mem[_93] = address(cd[36])
    mem[_93 + 32] = address(cd[68])
    mem[_93 + 64] = cd[100]
    mem[_93 + 96] = address(cd[132])
    mem[_93 + 128] = address(cd[164])
    mem[_93 + 160] = cd[196]
    mem[_93 + 192] = address(cd[228])
    mem[_93 + 224] = cd[260]
    mem[_93 + 256] = address(cd[292])
    mem[_93 + 288] = cd[324]
    mem[_93 + 320] = address(cd[356])
    mem[_93 + 352] = cd[388]
    mem[_93 + 384] = cd[420]
    mem[_93 + 416] = address(cd[452])
    mem[_93 + 448] = cd[484]
    mem[_93 + 480] = cd[516]
    mem[_93 + 512] = cd[548]
    require calldata.size - 580 >= 96
    _98 = mem[64]
    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
    mem[64] = mem[64] + 96
    mem[_98] = uint8(cd[580])
    mem[_98 + 32] = cd[612]
    mem[_98 + 64] = cd[644]
    mem[_93 + 544] = _98
    require calldata.size - 676 >= 96
    _99 = mem[64]
    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
    mem[64] = mem[64] + 96
    mem[_99] = uint8(cd[676])
    mem[_99 + 32] = cd[708]
    mem[_99 + 64] = cd[740]
    mem[_93 + 576] = _99
    require calldata.size - 772 >= 96
    _100 = mem[64]
    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
    mem[64] = mem[64] + 96
    mem[_100] = uint8(cd[772])
    mem[_100 + 32] = cd[804]
    mem[_100 + 64] = cd[836]
    mem[_93 + 608] = _100
    idx = 0
    s = 0
    while uint8(idx) < mem[96]:
        require uint8(idx) < mem[96]
        require s + mem[mem[(32 * uint8(idx)) + 128] + 32] >= s
        idx = idx + 1
        s = s + mem[mem[(32 * uint8(idx)) + 128] + 32]
        continue 
    require cd[100] + cd[260] >= cd[100]
    if s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None != cd[100] + cd[260]:
        emit 0x25eefca0 
        emit 0x4 
        return 0
    _512 = mem[96]
    idx = 0
    while uint8(idx) < _512:
        require uint8(idx) < mem[96]
        _518 = mem[(32 * uint8(idx)) + 128]
        _523 = mem[64]
        mem[64] = mem[64] + 160
        mem[_523] = 0
        _524 = mem[64]
        mem[64] = mem[64] + 128
        _525 = mem[64]
        mem[64] = mem[64] + 32
        mem[_525] = 0
        mem[_524] = _525
        _527 = mem[64]
        mem[64] = mem[64] + 96
        mem[_527] = 0
        mem[_527 + 32] = 0
        mem[_527 + 64] = 0
        mem[_524 + 32] = _527
        mem[_523 + 32] = _524
        _528 = mem[_518]
        if msg.sender == mem[mem[_518] + 12 len 20]:
            _553 = mem[64]
            mem[64] = mem[64] + 160
            mem[_553] = 0
            _554 = mem[64]
            mem[64] = mem[64] + 128
            _555 = mem[64]
            mem[64] = mem[64] + 32
            mem[_555] = 0
            mem[_554] = _555
            _557 = mem[64]
            mem[64] = mem[64] + 96
            mem[_557] = 0
            mem[_557 + 32] = 0
            mem[_557 + 64] = 0
            mem[_554 + 32] = _557
            mem[_553 + 32] = _554
            _559 = mem[_518]
            _560 = mem[_518 + 32]
            _564 = mem[mem[mem[mem[_518] + 32]]]
            mem[mem[64]] = address(this.address)
            mem[mem[64] + 20] = _564
            mem[0] = sha3(this.address, _564)
            mem[32] = 0
            require _560 + sub_f1c64a70[this.address][_564] >= _560
            if _560 + sub_f1c64a70[this.address][_564] > mem[mem[mem[_559 + 32]]]:
                emit 0x25eefca0 
                emit 0x3 
                revert
            _587 = mem[mem[mem[mem[_518] + 32]]]
            mem[mem[64]] = address(this.address)
            mem[mem[64] + 20] = _587
            mem[0] = sha3(this.address, _587)
            mem[32] = 1
            if stor1[this.address][_587]:
                emit 0x25eefca0 
                emit 0x0 
                revert
            _605 = mem[mem[mem[mem[_518] + 32]]]
            mem[mem[64]] = address(this.address)
            mem[mem[64] + 20] = _605
            _611 = mem[_518 + 32]
            require sub_f1c64a70[this.address][_605] + mem[_518 + 32] >= sub_f1c64a70[this.address][_605]
            mem[0] = sha3(this.address, _605)
            mem[32] = 0
            sub_f1c64a70[this.address][_605] += _611
            _617 = mem[_93 + 96]
            _618 = mem[_93 + 192]
            _619 = mem[_518 + 32]
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.tokenTransferProxy() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _631 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _638 = mem[_631]
            mem[mem[64] + 4] = address(_617)
            mem[mem[64] + 36] = address(_618)
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = _619
            require ext_code.size(address(_638))
            call address(_638).0x15dacbea with:
                 gas gas_remaining wei
                args address(_617), address(_618), address(this.address), _619
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _725 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_725]
        else:
            _530 = mem[mem[_518]]
            _533 = mem[mem[mem[mem[_518] + 32]]]
            mem[mem[64]] = address(this.address)
            mem[mem[64] + 20] = _533
            _539 = mem[mem[_528 + 32] + 32]
            _540 = mem[64]
            mem[64] = mem[64] + 64
            mem[_540] = 28
            mem[_540 + 32] = '\x19Ethereum Signed Message:\n32'
            _541 = mem[64]
            t = _540 + 32
            u = mem[64]
            s = mem[_540]
            while s >= 32:
                mem[u] = mem[t]
                _512 = mem[96]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_540])] = mem[_540 + floor32(mem[_540]) + -(mem[_540] % 32) + 64 len mem[_540] % 32] or Mask(8 * -(mem[_540] % 32) + 32, -(8 * -(mem[_540] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_540])])
            mem[_541 + 28] = sha3(this.address, _533)
            _789 = sha3(mem[mem[64] len _541 + -mem[64] + 60])
            _790 = mem[_539]
            _791 = mem[_539 + 32]
            _792 = mem[_539 + 64]
            _793 = mem[64]
            mem[64] = mem[64] + 32
            mem[_793 + 64] = uint8(_790)
            mem[_793 + 96] = _791
            mem[_793 + 128] = _792
            signer = erecover(_789, _790 << 248, _791, _792) 
            mem[_793] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(signer) != address(_530):
                emit 0x25eefca0 
                emit 0x2 
                revert
            mem[_793 + 32] = 0
            mem[_793 + 320] = 0
            mem[_793 + 192] = _793 + 320
            mem[64] = _793 + 448
            mem[_793 + 352] = 0
            mem[_793 + 384] = 0
            mem[_793 + 416] = 0
            mem[_793 + 224] = _793 + 352
            mem[_793 + 64] = _793 + 192
            _807 = mem[_518]
            _808 = mem[_518 + 32]
            _811 = mem[mem[mem[mem[_518] + 32]]]
            mem[_793 + 448] = address(this.address)
            mem[_793 + 468] = _811
            mem[0] = sha3(this.address, _811)
            mem[32] = 0
            require _808 + sub_f1c64a70[this.address][_811] >= _808
            if _808 + sub_f1c64a70[this.address][_811] > mem[mem[mem[_807 + 32]]]:
                emit 0x25eefca0 
                emit 0x3 
                revert
            _824 = mem[mem[mem[mem[_518] + 32]]]
            mem[_793 + 448] = address(this.address)
            mem[_793 + 468] = _824
            mem[0] = sha3(this.address, _824)
            mem[32] = 1
            if stor1[this.address][_824]:
                emit 0x25eefca0 
                emit 0x0 
                revert
            _834 = mem[mem[mem[mem[_518] + 32]]]
            mem[_793 + 448] = address(this.address)
            mem[_793 + 468] = _834
            _838 = mem[_518 + 32]
            require sub_f1c64a70[this.address][_834] + mem[_518 + 32] >= sub_f1c64a70[this.address][_834]
            mem[0] = sha3(this.address, _834)
            mem[32] = 0
            sub_f1c64a70[this.address][_834] += _838
            _841 = mem[_93 + 96]
            _842 = mem[_93 + 192]
            _843 = mem[_518 + 32]
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.tokenTransferProxy() with:
                 gas gas_remaining wei
            mem[_793 + 448] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_793 + ceil32(return_data.size) + 452] = address(_841)
            mem[_793 + ceil32(return_data.size) + 484] = address(_842)
            mem[_793 + ceil32(return_data.size) + 516] = this.address
            mem[_793 + ceil32(return_data.size) + 548] = _843
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x15dacbea with:
                 gas gas_remaining wei
                args address(_841), address(_842), address(this.address), _843
            mem[_793 + ceil32(return_data.size) + 448] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _793 + (2 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            require ext_call.return_data[0]
        _512 = mem[96]
        idx = idx + 1
        continue 
    require 0 < mem[96]
    _519 = mem[_93 + 96]
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.tokenTransferProxy() with:
         gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _522 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _526 = mem[_522]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = address(_526)
    require ext_code.size(address(_519))
    call address(_519).0xdd62ed3e with:
         gas 8000 wei
        args address(this.address), address(_526)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _558 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _572 = mem[_93 + 224]
    _573 = mem[_93 + 64]
    require mem[_93 + 64] + mem[_93 + 224] >= mem[_93 + 64]
    if mem[_558] >= mem[_93 + 64] + mem[_93 + 224]:
        _583 = mem[64]
        mem[64] = mem[64] + 192
        mem[_583 len 192] = code.data[9699 len 192]
        _594 = mem[64]
        mem[64] = mem[64] + 256
        mem[_594 len 256] = code.data[9699 len 256]
        _598 = mem[64]
        mem[64] = mem[64] + 32
        mem[_598] = code.data[9699 len 32]
        _600 = mem[64]
        mem[64] = mem[64] + 96
        mem[_600 len 96] = code.data[9699 len 96]
        _610 = mem[64]
        mem[64] = mem[64] + 96
        mem[_610 len 96] = code.data[9699 len 96]
        _615 = mem[64]
        mem[64] = mem[64] + 96
        mem[_615 len 96] = code.data[9699 len 96]
        _624 = mem[64]
        mem[64] = mem[64] + 192
        mem[_624 len 192] = code.data[9699 len 192]
        _636 = mem[64]
        mem[64] = mem[64] + 256
        mem[_636 len 256] = code.data[9699 len 256]
        _637 = mem[64]
        mem[64] = mem[64] + 32
        mem[_637] = code.data[9699 len 32]
        _639 = mem[64]
        mem[64] = mem[64] + 96
        mem[_639 len 96] = code.data[9699 len 96]
        _643 = mem[64]
        mem[64] = mem[64] + 96
        mem[_643 len 96] = code.data[9699 len 96]
        _645 = mem[64]
        mem[64] = mem[64] + 96
        mem[_645 len 96] = code.data[9699 len 96]
        _647 = mem[64]
        mem[64] = mem[64] + 192
        mem[_647] = mem[_93 + 44 len 20]
        mem[_647 + 32] = mem[_93 + 140 len 20]
        mem[_647 + 64] = mem[_93 + 332 len 20]
        mem[_647 + 96] = mem[_93 + 428 len 20]
        mem[_647 + 128] = mem[_93 + 108 len 20]
        mem[_647 + 160] = mem[_93 + 268 len 20]
        _654 = mem[64]
        mem[64] = mem[64] + 256
        mem[_654] = mem[_93 + 384]
        mem[_654 + 32] = mem[_93 + 512]
        mem[_654 + 64] = mem[_93 + 64]
        mem[_654 + 96] = mem[_93 + 352]
        mem[_654 + 128] = mem[_93 + 288]
        mem[_654 + 160] = mem[_93 + 224]
        mem[_654 + 192] = mem[_93 + 160]
        mem[_654 + 224] = mem[_93 + 480]
        _663 = mem[64]
        mem[64] = mem[64] + 32
        mem[_663] = mem[_93 + 448]
        _665 = mem[64]
        mem[64] = mem[64] + 96
        mem[_665] = mem[mem[_93 + 544] + 31 len 1]
        mem[_665 + 32] = mem[mem[_93 + 576] + 31 len 1]
        mem[_665 + 64] = mem[mem[_93 + 608] + 31 len 1]
        _672 = mem[64]
        mem[64] = mem[64] + 96
        mem[_672] = mem[mem[_93 + 544] + 32]
        mem[_672 + 32] = mem[mem[_93 + 576] + 32]
        mem[_672 + 64] = mem[mem[_93 + 608] + 32]
        _679 = mem[64]
        mem[64] = mem[64] + 96
        mem[_679] = mem[mem[_93 + 544] + 64]
        mem[_679 + 32] = mem[mem[_93 + 576] + 64]
        mem[_679 + 64] = mem[mem[_93 + 608] + 64]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.0x79dd4b7 with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _697 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _700 = mem[_697]
        mem[mem[64]] = 0xe6488fc900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        idx = 0
        s = _647
        t = mem[64] + 36
        while idx < 6:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 228 len 256] = mem[_654 len 256]
        mem[mem[64] + 484] = mem[_663]
        idx = 0
        s = _665
        t = mem[64] + 516
        while idx < 3:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 612 len 96] = mem[_672 len 96]
        mem[mem[64] + 708 len 96] = mem[_679 len 96]
        require ext_code.size(address(_700))
        call address(_700).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
             gas gas_remaining wei
            args address(this.address), mem[mem[64] + 36 len 768]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _872 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _874 = mem[_872]
        require mem[_872]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.debtToken() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _880 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _882 = mem[_880]
        mem[mem[64] + 4] = mem[_93 + 204 len 20]
        require ext_code.size(address(_882))
        call address(_882).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _874
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return _874
    _579 = mem[_93 + 96]
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.tokenTransferProxy() with:
         gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _584 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = mem[_584 + 12 len 20]
    mem[mem[64] + 36] = _573 + _572
    require ext_code.size(address(_579))
    call address(_579).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], _573 + _572
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _644 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_644]
    _710 = mem[64]
    mem[64] = mem[64] + 192
    mem[_710 len 192] = code.data[9699 len 192]
    _712 = mem[64]
    mem[64] = mem[64] + 256
    mem[_712 len 256] = code.data[9699 len 256]
    _719 = mem[64]
    mem[64] = mem[64] + 32
    mem[_719] = code.data[9699 len 32]
    _721 = mem[64]
    mem[64] = mem[64] + 96
    mem[_721 len 96] = code.data[9699 len 96]
    _723 = mem[64]
    mem[64] = mem[64] + 96
    mem[_723 len 96] = code.data[9699 len 96]
    _726 = mem[64]
    mem[64] = mem[64] + 96
    mem[_726 len 96] = code.data[9699 len 96]
    _728 = mem[64]
    mem[64] = mem[64] + 192
    mem[_728 len 192] = code.data[9699 len 192]
    _731 = mem[64]
    mem[64] = mem[64] + 256
    mem[_731 len 256] = code.data[9699 len 256]
    _732 = mem[64]
    mem[64] = mem[64] + 32
    mem[_732] = code.data[9699 len 32]
    _733 = mem[64]
    mem[64] = mem[64] + 96
    mem[_733 len 96] = code.data[9699 len 96]
    _734 = mem[64]
    mem[64] = mem[64] + 96
    mem[_734 len 96] = code.data[9699 len 96]
    _735 = mem[64]
    mem[64] = mem[64] + 96
    mem[_735 len 96] = code.data[9699 len 96]
    _736 = mem[64]
    mem[64] = mem[64] + 192
    mem[_736] = mem[_93 + 44 len 20]
    mem[_736 + 32] = mem[_93 + 140 len 20]
    mem[_736 + 64] = mem[_93 + 332 len 20]
    mem[_736 + 96] = mem[_93 + 428 len 20]
    mem[_736 + 128] = mem[_93 + 108 len 20]
    mem[_736 + 160] = mem[_93 + 268 len 20]
    _743 = mem[64]
    mem[64] = mem[64] + 256
    mem[_743] = mem[_93 + 384]
    mem[_743 + 32] = mem[_93 + 512]
    mem[_743 + 64] = mem[_93 + 64]
    mem[_743 + 96] = mem[_93 + 352]
    mem[_743 + 128] = mem[_93 + 288]
    mem[_743 + 160] = mem[_93 + 224]
    mem[_743 + 192] = mem[_93 + 160]
    mem[_743 + 224] = mem[_93 + 480]
    _752 = mem[64]
    mem[64] = mem[64] + 32
    mem[_752] = mem[_93 + 448]
    _754 = mem[64]
    mem[64] = mem[64] + 96
    mem[_754] = mem[mem[_93 + 544] + 31 len 1]
    mem[_754 + 32] = mem[mem[_93 + 576] + 31 len 1]
    mem[_754 + 64] = mem[mem[_93 + 608] + 31 len 1]
    _761 = mem[64]
    mem[64] = mem[64] + 96
    mem[_761] = mem[mem[_93 + 544] + 32]
    mem[_761 + 32] = mem[mem[_93 + 576] + 32]
    mem[_761 + 64] = mem[mem[_93 + 608] + 32]
    _768 = mem[64]
    mem[64] = mem[64] + 96
    mem[_768] = mem[mem[_93 + 544] + 64]
    mem[_768 + 32] = mem[mem[_93 + 576] + 64]
    mem[_768 + 64] = mem[mem[_93 + 608] + 64]
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.0x79dd4b7 with:
         gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _777 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _778 = mem[_777]
    mem[mem[64]] = 0xe6488fc900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = this.address
    idx = 0
    s = _736
    t = mem[64] + 36
    while idx < 6:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 228 len 256] = mem[_743 len 256]
    mem[mem[64] + 484] = mem[_752]
    idx = 0
    s = _754
    t = mem[64] + 516
    while idx < 3:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 612 len 96] = mem[_761 len 96]
    mem[mem[64] + 708 len 96] = mem[_768 len 96]
    require ext_code.size(address(_778))
    call address(_778).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
         gas gas_remaining wei
        args address(this.address), mem[mem[64] + 36 len 768]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _873 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _875 = mem[_873]
    require mem[_873]
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtToken() with:
         gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _881 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _883 = mem[_881]
    mem[mem[64] + 4] = mem[_93 + 204 len 20]
    require ext_code.size(address(_883))
    call address(_883).0xa9059cbb with:
         gas gas_remaining wei
        args mem[mem[64] + 4], _875
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return _875
}



}
