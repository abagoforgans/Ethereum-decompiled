contract main {




// =====================  Runtime code  =====================


const EXTERNAL_QUERY_GAS_LIMIT = 8000


mapping of uint256 sub_f1c64a70;
mapping of uint8 stor1;
address contractRegistryAddress;
address sub_8ff876ddAddress;
mapping of address stor4;

function sub_1a3b7e3e(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_8ff876dd(?) {
    return sub_8ff876ddAddress
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

function sub_45612bee(?) {
    require calldata.size - 4 >= 32
    stor4[address(msg.sender)] = arg1
}

function sub_64858aad(?) {
    require calldata.size - 4 >= 224
    require calldata.size - 36 >= 192
    require calldata.size - 36 >= 96
    require calldata.size - 132 >= 96
    return sha3(this.address, arg2, arg1, uint64(arg3) << 96)
}

function sub_1e932e03(?) {
    require calldata.size - 4 >= 224
    require calldata.size - 36 >= 192
    require calldata.size - 36 >= 96
    require calldata.size - 132 >= 96
    if arg1 != msg.sender:
        return 0
    stor1[this.address][arg3][arg2][uint64(arg4) << 96] = 1
    emit 0x320c5376: arg1, sha3(this.address, arg3, arg2, uint64(arg4) << 96)
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

function sub_fdcaf006(?) {
    require calldata.size - 4 >= 1088
    require calldata.size - 4 >= 256
    require calldata.size - 4 >= 224
    require calldata.size - 36 >= 192
    require calldata.size - 36 >= 96
    require calldata.size - 132 >= 96
    require calldata.size - 260 >= 832
    require calldata.size - 804 >= 96
    require calldata.size - 900 >= 96
    require calldata.size - 996 >= 96
    return (arg1 > block.timestamp)
}

function sub_509bab74(?) {
    require calldata.size - 4 >= 1088
    require calldata.size - 4 >= 256
    require calldata.size - 4 >= 224
    require calldata.size - 36 >= 192
    require calldata.size - 36 >= 96
    require calldata.size - 132 >= 96
    require calldata.size - 260 >= 832
    require calldata.size - 804 >= 96
    require calldata.size - 900 >= 96
    require calldata.size - 996 >= 96
    return (arg1 == sub_8ff876ddAddress)
}

function sub_b60ad086(?) {
    require calldata.size - 4 >= 1088
    require calldata.size - 4 >= 256
    require calldata.size - 4 >= 224
    require calldata.size - 36 >= 192
    require calldata.size - 36 >= 96
    require calldata.size - 132 >= 96
    require calldata.size - 260 >= 832
    require calldata.size - 804 >= 96
    require calldata.size - 900 >= 96
    require calldata.size - 996 >= 96
    return (uint64(arg1) << 96 == uint64(arg2) << 96)
}

function sub_9c4d3e71(?) {
    require calldata.size - 4 >= 1088
    require calldata.size - 4 >= 256
    require calldata.size - 4 >= 224
    require calldata.size - 36 >= 192
    require calldata.size - 36 >= 96
    require calldata.size - 132 >= 96
    require calldata.size - 260 >= 832
    require calldata.size - 804 >= 96
    require calldata.size - 900 >= 96
    require calldata.size - 996 >= 96
    require arg4 + sub_f1c64a70[this.address][arg2][arg1][uint64(arg3) << 96] >= arg4
    return arg4 + sub_f1c64a70[this.address][arg2][arg1][uint64(arg3) << 96] <= arg1
}

function sub_6697366f(?) {
    require calldata.size - 4 >= 256
    require calldata.size - 4 >= 224
    require calldata.size - 36 >= 192
    require calldata.size - 36 >= 96
    require calldata.size - 132 >= 96
    if msg.sender == uint64(arg1) << 96:
        return 1
    signer = erecover(sha3(arg2, Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg3, arg2, uint64(arg4) << 96)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if stor4[uint64(arg1) << 96] != msg.sender:
        return (address(signer) == address(arg1))
    return (address(signer) == stor4[uint64(arg1) << 96])
}

function sub_de014b11(?) {
    require calldata.size - 4 >= 1088
    require calldata.size - 4 >= 256
    require calldata.size - 4 >= 224
    require calldata.size - 36 >= 192
    require calldata.size - 36 >= 96
    require calldata.size - 132 >= 96
    require calldata.size - 260 >= 832
    require calldata.size - 804 >= 96
    require calldata.size - 900 >= 96
    require calldata.size - 996 >= 96
    require arg4 + sub_f1c64a70[this.address][arg2][arg1][uint64(arg3) << 96] >= arg4
    if arg4 + sub_f1c64a70[this.address][arg2][arg1][uint64(arg3) << 96] > arg1:
        return arg4 + sub_f1c64a70[this.address][arg2][arg1][uint64(arg3) << 96] <= arg1
    if arg2 <= block.timestamp:
        return (arg2 > block.timestamp)
    return (arg5 == sub_8ff876ddAddress)
}

function sub_54d7f51d(?) {
    require calldata.size - 4 >= 1056
    require calldata.size - 4 >= 224
    require calldata.size - 36 >= 192
    require calldata.size - 36 >= 96
    require calldata.size - 132 >= 96
    require calldata.size - 228 >= 832
    require calldata.size - 772 >= 96
    require calldata.size - 868 >= 96
    require calldata.size - 964 >= 96
    if msg.sender == uint64(arg1) << 96:
        require arg9 + sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96] >= arg9
        if arg9 + sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96] > arg2:
            emit 0x25eefca0 
            emit 0x3 
            return 0
        if arg3 <= block.timestamp:
            emit 0x25eefca0 
            emit 0x3 
            return 0
        if address(arg20) != sub_8ff876ddAddress:
            emit 0x25eefca0 
            emit 0x3 
            return 0
        if stor1[this.address][arg3][arg2][uint64(arg4) << 96]:
            emit 0x25eefca0 
            emit 0x0 
            return 0
        require sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96] + arg9 >= sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96]
        sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96] += arg9
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.tokenTransferProxy() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 3492] = address(arg10)
        mem[ceil32(return_data.size) + 3524] = arg13
        mem[ceil32(return_data.size) + 3556] = this.address
        mem[ceil32(return_data.size) + 3588] = arg9
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x15dacbea with:
             gas gas_remaining wei
            args address(arg10), address(arg13), address(this.address), arg9
        mem[ceil32(return_data.size) + 3488] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.tokenTransferProxy() with:
             gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 3488] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 3492] = this.address
        mem[(4 * ceil32(return_data.size)) + 3524] = address(ext_call.return_data[0])
        require ext_code.size(address(arg10))
        call address(arg10).0xdd62ed3e with:
             gas 8000 wei
            args address(this.address), address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 3488] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg9 + arg14 >= arg9
        if ext_call.return_data[0] >= arg9 + arg14:
            mem[(6 * ceil32(return_data.size)) + 5024] = address(arg8)
            mem[(6 * ceil32(return_data.size)) + 5056] = address(arg11)
            mem[(6 * ceil32(return_data.size)) + 5088] = address(arg17)
            mem[(6 * ceil32(return_data.size)) + 5120] = address(arg20)
            mem[(6 * ceil32(return_data.size)) + 5152] = address(arg10)
            mem[(6 * ceil32(return_data.size)) + 5184] = address(arg15)
            mem[(6 * ceil32(return_data.size)) + 5216] = arg19
            mem[(6 * ceil32(return_data.size)) + 5504] = 0
            mem[(6 * ceil32(return_data.size)) + 5536] = 0
            mem[(6 * ceil32(return_data.size)) + 5568] = 0
            mem[(6 * ceil32(return_data.size)) + 5600] = arg24
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.0x79dd4b7 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = (6 * ceil32(return_data.size)) + 5024
            t = (7 * ceil32(return_data.size)) + 5828
            while idx < 6:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            s = (6 * ceil32(return_data.size)) + 5504
            t = (7 * ceil32(return_data.size)) + 6308
            while idx < 3:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
                 gas gas_remaining wei
                args address(this.address), mem[(7 * ceil32(return_data.size)) + 5828 len 192], arg19, arg23, arg9, arg18, arg16, arg14, arg12, arg22 >> 1792, arg21, mem[(7 * ceil32(return_data.size)) + 6308 len 96], arg24, arg26, arg28 >> 512, arg25, arg27, arg29
        else:
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.tokenTransferProxy() with:
                 gas gas_remaining wei
            mem[(6 * ceil32(return_data.size)) + 3488] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 3492] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 3524] = arg9 + arg14
            require ext_code.size(address(arg10))
            call address(arg10).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg9 + arg14
            mem[(7 * ceil32(return_data.size)) + 3488] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 5024] = address(arg8)
            mem[(8 * ceil32(return_data.size)) + 5056] = address(arg11)
            mem[(8 * ceil32(return_data.size)) + 5088] = address(arg17)
            mem[(8 * ceil32(return_data.size)) + 5120] = address(arg20)
            mem[(8 * ceil32(return_data.size)) + 5152] = address(arg10)
            mem[(8 * ceil32(return_data.size)) + 5184] = address(arg15)
            mem[(8 * ceil32(return_data.size)) + 5216] = arg19
            mem[(8 * ceil32(return_data.size)) + 5504] = 0
            mem[(8 * ceil32(return_data.size)) + 5536] = 0
            mem[(8 * ceil32(return_data.size)) + 5568] = 0
            mem[(8 * ceil32(return_data.size)) + 5600] = arg24
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.0x79dd4b7 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = (8 * ceil32(return_data.size)) + 5024
            t = (10 * ceil32(return_data.size)) + 5828
            while idx < 6:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            s = (8 * ceil32(return_data.size)) + 5504
            t = (10 * ceil32(return_data.size)) + 6308
            while idx < 3:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
                 gas gas_remaining wei
                args address(this.address), mem[(10 * ceil32(return_data.size)) + 5828 len 192], arg19, arg23, arg9, arg18, arg16, arg14, arg12, arg22 >> 1792, arg21, mem[(10 * ceil32(return_data.size)) + 6308 len 96], arg24, arg26, arg28 >> 512, arg25, arg27, arg29
    else:
        signer = erecover(sha3(arg2, Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg3, arg2, uint64(arg4) << 96)), arg5 << 248, arg6, arg7) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if stor4[uint64(arg1) << 96] != msg.sender:
            if address(signer) != address(arg1):
                emit 0x25eefca0 
                emit 0x2 
                return 0
        else:
            if address(signer) != stor4[uint64(arg1) << 96]:
                emit 0x25eefca0 
                emit 0x2 
                return 0
        require arg9 + sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96] >= arg9
        if arg9 + sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96] > arg2:
            emit 0x25eefca0 
            emit 0x3 
            return 0
        if arg3 <= block.timestamp:
            emit 0x25eefca0 
            emit 0x3 
            return 0
        if uint64(arg20) << 96 != sub_8ff876ddAddress:
            emit 0x25eefca0 
            emit 0x3 
            return 0
        if stor1[this.address][arg3][arg2][uint64(arg4) << 96]:
            emit 0x25eefca0 
            emit 0x0 
            return 0
        require sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96] + arg9 >= sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96]
        sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96] += arg9
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.tokenTransferProxy() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 3588] = uint64(arg10) << 96
        mem[ceil32(return_data.size) + 3620] = arg13
        mem[ceil32(return_data.size) + 3652] = this.address
        mem[ceil32(return_data.size) + 3684] = arg9
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x15dacbea with:
             gas gas_remaining wei
            args arg10 << 192, address(arg13), address(this.address), arg9
        mem[ceil32(return_data.size) + 3584] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.tokenTransferProxy() with:
             gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 3584] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 3588] = this.address
        mem[(4 * ceil32(return_data.size)) + 3620] = address(ext_call.return_data[0])
        require ext_code.size(address(arg10))
        call address(arg10).0xdd62ed3e with:
             gas 8000 wei
            args address(this.address), address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 3584] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg9 + arg14 >= arg9
        if ext_call.return_data[0] >= arg9 + arg14:
            mem[(6 * ceil32(return_data.size)) + 5120] = uint64(arg8) << 96
            mem[(6 * ceil32(return_data.size)) + 5152] = uint64(arg11) << 96
            mem[(6 * ceil32(return_data.size)) + 5184] = uint64(arg17) << 96
            mem[(6 * ceil32(return_data.size)) + 5216] = uint64(arg20) << 96
            mem[(6 * ceil32(return_data.size)) + 5248] = uint64(arg10) << 96
            mem[(6 * ceil32(return_data.size)) + 5280] = uint64(arg15) << 96
            mem[(6 * ceil32(return_data.size)) + 5312] = arg19
            mem[(6 * ceil32(return_data.size)) + 5600] = 0
            mem[(6 * ceil32(return_data.size)) + 5632] = 0
            mem[(6 * ceil32(return_data.size)) + 5664] = 0
            mem[(6 * ceil32(return_data.size)) + 5696] = arg24
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.0x79dd4b7 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = (6 * ceil32(return_data.size)) + 5120
            t = (7 * ceil32(return_data.size)) + 5924
            while idx < 6:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            s = (6 * ceil32(return_data.size)) + 5600
            t = (7 * ceil32(return_data.size)) + 6404
            while idx < 3:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
                 gas gas_remaining wei
                args address(this.address), mem[(7 * ceil32(return_data.size)) + 5924 len 192], arg19, arg23, arg9, arg18, arg16, arg14, arg12, arg22 >> 1792, arg21, mem[(7 * ceil32(return_data.size)) + 6404 len 96], arg28 >> 512, arg25, arg27, arg29
        else:
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.tokenTransferProxy() with:
                 gas gas_remaining wei
            mem[(6 * ceil32(return_data.size)) + 3584] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 3588] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 3620] = arg9 + arg14
            require ext_code.size(address(arg10))
            call address(arg10).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg9 + arg14
            mem[(7 * ceil32(return_data.size)) + 3584] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 5120] = uint64(arg8) << 96
            mem[(8 * ceil32(return_data.size)) + 5152] = uint64(arg11) << 96
            mem[(8 * ceil32(return_data.size)) + 5184] = uint64(arg17) << 96
            mem[(8 * ceil32(return_data.size)) + 5216] = uint64(arg20) << 96
            mem[(8 * ceil32(return_data.size)) + 5248] = uint64(arg10) << 96
            mem[(8 * ceil32(return_data.size)) + 5280] = uint64(arg15) << 96
            mem[(8 * ceil32(return_data.size)) + 5312] = arg19
            mem[(8 * ceil32(return_data.size)) + 5600] = 0
            mem[(8 * ceil32(return_data.size)) + 5632] = 0
            mem[(8 * ceil32(return_data.size)) + 5664] = 0
            mem[(8 * ceil32(return_data.size)) + 5696] = arg24
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.0x79dd4b7 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = (8 * ceil32(return_data.size)) + 5120
            t = (10 * ceil32(return_data.size)) + 5924
            while idx < 6:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            s = (8 * ceil32(return_data.size)) + 5600
            t = (10 * ceil32(return_data.size)) + 6404
            while idx < 3:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
                 gas gas_remaining wei
                args address(this.address), mem[(10 * ceil32(return_data.size)) + 5924 len 192], arg19, arg23, arg9, arg18, arg16, arg14, arg12, arg22 >> 1792, arg21, mem[(10 * ceil32(return_data.size)) + 6404 len 96], arg28 >> 512, arg25, arg27, arg29
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
        args address(arg13), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}

function sub_da3e3865(?) {
    require calldata.size - 4 >= 864
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (256 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 256
        _141 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require calldata.size - s >= 224
        _143 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        mem[_143] = address(cd[s])
        require calldata.size + -s - 32 >= 192
        _144 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require calldata.size + -s - 32 >= 96
        _145 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        mem[_145] = cd[(s + 32)]
        mem[_145 + 32] = cd[(s + 64)]
        mem[_145 + 64] = address(cd[(s + 96)])
        mem[_144] = _145
        require calldata.size + -s - 128 >= 96
        _146 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        mem[_146] = uint8(cd[(s + 128)])
        mem[_146 + 32] = cd[(s + 160)]
        mem[_146 + 64] = cd[(s + 192)]
        mem[_144 + 32] = _146
        mem[_143 + 32] = _144
        mem[_141] = _143
        mem[_141 + 32] = cd[(s + 224)]
        mem[t] = _141
        idx = idx + 1
        s = s + 256
        t = t + 32
        continue 
    require calldata.size - 36 >= 832
    _142 = mem[64]
    require mem[64] + 640 <= test266151307() and mem[64] + 640 >= mem[64]
    mem[64] = mem[64] + 640
    mem[_142] = address(cd[36])
    mem[_142 + 32] = address(cd[68])
    mem[_142 + 64] = cd[100]
    mem[_142 + 96] = address(cd[132])
    mem[_142 + 128] = address(cd[164])
    mem[_142 + 160] = cd[196]
    mem[_142 + 192] = address(cd[228])
    mem[_142 + 224] = cd[260]
    mem[_142 + 256] = address(cd[292])
    mem[_142 + 288] = cd[324]
    mem[_142 + 320] = address(cd[356])
    mem[_142 + 352] = cd[388]
    mem[_142 + 384] = cd[420]
    mem[_142 + 416] = address(cd[452])
    mem[_142 + 448] = cd[484]
    mem[_142 + 480] = cd[516]
    mem[_142 + 512] = cd[548]
    require calldata.size - 580 >= 96
    _147 = mem[64]
    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
    mem[64] = mem[64] + 96
    mem[_147] = uint8(cd[580])
    mem[_147 + 32] = cd[612]
    mem[_147 + 64] = cd[644]
    mem[_142 + 544] = _147
    require calldata.size - 676 >= 96
    _148 = mem[64]
    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
    mem[64] = mem[64] + 96
    mem[_148] = uint8(cd[676])
    mem[_148 + 32] = cd[708]
    mem[_148 + 64] = cd[740]
    mem[_142 + 576] = _148
    require calldata.size - 772 >= 96
    _149 = mem[64]
    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
    mem[64] = mem[64] + 96
    mem[_149] = uint8(cd[772])
    mem[_149 + 32] = cd[804]
    mem[_149 + 64] = cd[836]
    mem[_142 + 608] = _149
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
    _777 = mem[96]
    idx = 0
    while uint8(idx) < _777:
        require uint8(idx) < mem[96]
        _783 = mem[(32 * uint8(idx)) + 128]
        _788 = mem[64]
        mem[64] = mem[64] + 224
        mem[_788] = 0
        _789 = mem[64]
        mem[64] = mem[64] + 192
        _790 = mem[64]
        mem[64] = mem[64] + 96
        mem[_790] = 0
        mem[_790 + 32] = 0
        mem[_790 + 64] = 0
        mem[_789] = _790
        _792 = mem[64]
        mem[64] = mem[64] + 96
        mem[_792] = 0
        mem[_792 + 32] = 0
        mem[_792 + 64] = 0
        mem[_789 + 32] = _792
        mem[_788 + 32] = _789
        _793 = mem[_783]
        if msg.sender == mem[mem[_783] + 12 len 20]:
            _855 = mem[64]
            mem[64] = mem[64] + 224
            mem[_855] = 0
            _856 = mem[64]
            mem[64] = mem[64] + 192
            _858 = mem[64]
            mem[64] = mem[64] + 96
            mem[_858] = 0
            mem[_858 + 32] = 0
            mem[_858 + 64] = 0
            mem[_856] = _858
            _860 = mem[64]
            mem[64] = mem[64] + 96
            mem[_860] = 0
            mem[_860 + 32] = 0
            mem[_860 + 64] = 0
            mem[_856 + 32] = _860
            mem[_855 + 32] = _856
            _862 = mem[_783]
            _863 = mem[_783 + 32]
            _866 = mem[mem[mem[mem[_783] + 32]] + 32]
            _869 = mem[mem[mem[mem[_783] + 32]]]
            _872 = mem[mem[mem[mem[_783] + 32]] + 64]
            mem[mem[64]] = address(this.address)
            mem[mem[64] + 20] = _866
            mem[mem[64] + 52] = _869
            mem[mem[64] + 84] = address(_872)
            mem[0] = sha3(this.address, _866, _869, address(_872))
            mem[32] = 0
            require _863 + sub_f1c64a70[this.address][_866][_869][address(_872)] >= _863
            if _863 + sub_f1c64a70[this.address][_866][_869][address(_872)] > mem[mem[mem[_862 + 32]]]:
                emit 0x25eefca0 
                emit 0x3 
                revert
            if mem[mem[mem[mem[_783] + 32]] + 32] <= block.timestamp:
                emit 0x25eefca0 
                emit 0x3 
                revert
            if mem[_142 + 428 len 20] != sub_8ff876ddAddress:
                emit 0x25eefca0 
                emit 0x3 
                revert
            _924 = mem[mem[mem[mem[_783] + 32]] + 32]
            _927 = mem[mem[mem[mem[_783] + 32]]]
            _930 = mem[mem[mem[mem[_783] + 32]] + 64]
            mem[mem[64]] = address(this.address)
            mem[mem[64] + 20] = _924
            mem[mem[64] + 52] = _927
            mem[mem[64] + 84] = address(_930)
            mem[0] = sha3(this.address, _924, _927, address(_930))
            mem[32] = 1
            if stor1[this.address][_924][_927][address(_930)]:
                emit 0x25eefca0 
                emit 0x0 
                revert
            _981 = mem[mem[mem[mem[_783] + 32]] + 32]
            _984 = mem[mem[mem[mem[_783] + 32]]]
            _987 = mem[mem[mem[mem[_783] + 32]] + 64]
            mem[mem[64]] = address(this.address)
            mem[mem[64] + 20] = _981
            mem[mem[64] + 52] = _984
            mem[mem[64] + 84] = address(_987)
            _991 = mem[_783 + 32]
            require sub_f1c64a70[this.address][_981][_984][address(_987)] + mem[_783 + 32] >= sub_f1c64a70[this.address][_981][_984][address(_987)]
            mem[0] = sha3(this.address, _981, _984, address(_987))
            mem[32] = 0
            sub_f1c64a70[this.address][_981][_984][address(_987)] += _991
            _998 = mem[_142 + 96]
            _999 = mem[_142 + 192]
            _1000 = mem[_783 + 32]
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.tokenTransferProxy() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1052 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1062 = mem[_1052]
            mem[mem[64] + 4] = address(_998)
            mem[mem[64] + 36] = address(_999)
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = _1000
            require ext_code.size(address(_1062))
            call address(_1062).0x15dacbea with:
                 gas gas_remaining wei
                args address(_998), address(_999), address(this.address), _1000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1164 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1164]
        else:
            mem[0] = mem[mem[_783] + 12 len 20]
            mem[32] = 4
            if stor4[mem[0]] != msg.sender:
                _797 = mem[_793]
                _803 = mem[mem[mem[_793 + 32]] + 32]
                _806 = mem[mem[mem[_793 + 32]]]
                _809 = mem[mem[mem[_793 + 32]] + 64]
                mem[mem[64]] = address(this.address)
                mem[mem[64] + 20] = _803
                mem[mem[64] + 52] = _806
                mem[mem[64] + 84] = address(_809)
                _826 = mem[mem[_793 + 32] + 32]
                _829 = mem[64]
                mem[64] = mem[64] + 64
                mem[_829] = 28
                mem[_829 + 32] = '\x19Ethereum Signed Message:\n32'
                _830 = mem[64]
                t = _829 + 32
                u = mem[64]
                s = mem[_829]
                while s >= 32:
                    mem[u] = mem[t]
                    _777 = mem[96]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_829])] = mem[_829 + floor32(mem[_829]) + -(mem[_829] % 32) + 64 len mem[_829] % 32] or Mask(8 * -(mem[_829] % 32) + 32, -(8 * -(mem[_829] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_829])])
                mem[_830 + 28] = sha3(this.address, _803, _806, address(_809))
                _1226 = sha3(mem[mem[64] len _830 + -mem[64] + 60])
                _1227 = mem[_826]
                _1228 = mem[_826 + 32]
                _1229 = mem[_826 + 64]
                _1230 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1230 + 64] = uint8(_1227)
                mem[_1230 + 96] = _1228
                mem[_1230 + 128] = _1229
                signer = erecover(_1226, _1227 << 248, _1228, _1229) 
                mem[_1230] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) != address(_797):
                    emit 0x25eefca0 
                    emit 0x2 
                    revert
                mem[_1230 + 32] = 0
                mem[_1230 + 448] = 0
                mem[_1230 + 480] = 0
                mem[_1230 + 512] = 0
                mem[_1230 + 256] = _1230 + 448
                mem[64] = _1230 + 640
                mem[_1230 + 544] = 0
                mem[_1230 + 576] = 0
                mem[_1230 + 608] = 0
                mem[_1230 + 288] = _1230 + 544
                mem[_1230 + 64] = _1230 + 256
                _1263 = mem[_783]
                _1264 = mem[_783 + 32]
                _1269 = mem[mem[mem[mem[_783] + 32]] + 32]
                _1272 = mem[mem[mem[mem[_783] + 32]]]
                _1275 = mem[mem[mem[mem[_783] + 32]] + 64]
                mem[_1230 + 640] = address(this.address)
                mem[_1230 + 660] = _1269
                mem[_1230 + 692] = _1272
                mem[_1230 + 724] = address(_1275)
                mem[0] = sha3(this.address, _1269, _1272, address(_1275))
                mem[32] = 0
                require _1264 + sub_f1c64a70[this.address][_1269][_1272][address(_1275)] >= _1264
                if _1264 + sub_f1c64a70[this.address][_1269][_1272][address(_1275)] > mem[mem[mem[_1263 + 32]]]:
                    emit 0x25eefca0 
                    emit 0x3 
                    revert
                if mem[mem[mem[mem[_783] + 32]] + 32] <= block.timestamp:
                    emit 0x25eefca0 
                    emit 0x3 
                    revert
                if mem[_142 + 428 len 20] != sub_8ff876ddAddress:
                    emit 0x25eefca0 
                    emit 0x3 
                    revert
                _1325 = mem[mem[mem[mem[_783] + 32]] + 32]
                _1328 = mem[mem[mem[mem[_783] + 32]]]
                _1331 = mem[mem[mem[mem[_783] + 32]] + 64]
                mem[_1230 + 640] = address(this.address)
                mem[_1230 + 660] = _1325
                mem[_1230 + 692] = _1328
                mem[_1230 + 724] = address(_1331)
                mem[0] = sha3(this.address, _1325, _1328, address(_1331))
                mem[32] = 1
                if stor1[this.address][_1325][_1328][address(_1331)]:
                    emit 0x25eefca0 
                    emit 0x0 
                    revert
                _1357 = mem[mem[mem[mem[_783] + 32]] + 32]
                _1360 = mem[mem[mem[mem[_783] + 32]]]
                _1363 = mem[mem[mem[mem[_783] + 32]] + 64]
                mem[_1230 + 640] = address(this.address)
                mem[_1230 + 660] = _1357
                mem[_1230 + 692] = _1360
                mem[_1230 + 724] = address(_1363)
                _1379 = mem[_783 + 32]
                require sub_f1c64a70[this.address][_1357][_1360][address(_1363)] + mem[_783 + 32] >= sub_f1c64a70[this.address][_1357][_1360][address(_1363)]
                mem[0] = sha3(this.address, _1357, _1360, address(_1363))
                mem[32] = 0
                sub_f1c64a70[this.address][_1357][_1360][address(_1363)] += _1379
                _1384 = mem[_142 + 96]
                _1385 = mem[_142 + 192]
                _1386 = mem[_783 + 32]
                require ext_code.size(contractRegistryAddress)
                call contractRegistryAddress.tokenTransferProxy() with:
                     gas gas_remaining wei
                mem[_1230 + 640] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_1230 + ceil32(return_data.size) + 644] = address(_1384)
                mem[_1230 + ceil32(return_data.size) + 676] = address(_1385)
                mem[_1230 + ceil32(return_data.size) + 708] = this.address
                mem[_1230 + ceil32(return_data.size) + 740] = _1386
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x15dacbea with:
                     gas gas_remaining wei
                    args address(_1384), address(_1385), address(this.address), _1386
                mem[_1230 + ceil32(return_data.size) + 640] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1230 + (2 * ceil32(return_data.size)) + 640
            else:
                mem[0] = mem[_793 + 12 len 20]
                mem[32] = 4
                _799 = sha3(mem[0], 4)
                _815 = mem[mem[mem[_793 + 32]] + 32]
                _818 = mem[mem[mem[_793 + 32]]]
                _821 = mem[mem[mem[_793 + 32]] + 64]
                mem[mem[64]] = address(this.address)
                mem[mem[64] + 20] = _815
                mem[mem[64] + 52] = _818
                mem[mem[64] + 84] = address(_821)
                _828 = mem[mem[_793 + 32] + 32]
                _832 = mem[64]
                mem[64] = mem[64] + 64
                mem[_832] = 28
                mem[_832 + 32] = '\x19Ethereum Signed Message:\n32'
                _833 = mem[64]
                t = _832 + 32
                u = mem[64]
                s = mem[_832]
                while s >= 32:
                    mem[u] = mem[t]
                    _777 = mem[96]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_832])] = mem[_832 + floor32(mem[_832]) + -(mem[_832] % 32) + 64 len mem[_832] % 32] or Mask(8 * -(mem[_832] % 32) + 32, -(8 * -(mem[_832] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_832])])
                mem[_833 + 28] = sha3(this.address, _815, _818, address(_821))
                _1236 = sha3(mem[mem[64] len _833 + -mem[64] + 60])
                _1237 = mem[_828]
                _1238 = mem[_828 + 32]
                _1239 = mem[_828 + 64]
                _1240 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1240 + 64] = uint8(_1237)
                mem[_1240 + 96] = _1238
                mem[_1240 + 128] = _1239
                signer = erecover(_1236, _1237 << 248, _1238, _1239) 
                mem[_1240] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) != stor[_799]:
                    emit 0x25eefca0 
                    emit 0x2 
                    revert
                mem[_1240 + 32] = 0
                mem[_1240 + 448] = 0
                mem[_1240 + 480] = 0
                mem[_1240 + 512] = 0
                mem[_1240 + 256] = _1240 + 448
                mem[64] = _1240 + 640
                mem[_1240 + 544] = 0
                mem[_1240 + 576] = 0
                mem[_1240 + 608] = 0
                mem[_1240 + 288] = _1240 + 544
                mem[_1240 + 64] = _1240 + 256
                _1265 = mem[_783]
                _1266 = mem[_783 + 32]
                _1281 = mem[mem[mem[mem[_783] + 32]] + 32]
                _1284 = mem[mem[mem[mem[_783] + 32]]]
                _1287 = mem[mem[mem[mem[_783] + 32]] + 64]
                mem[_1240 + 640] = address(this.address)
                mem[_1240 + 660] = _1281
                mem[_1240 + 692] = _1284
                mem[_1240 + 724] = address(_1287)
                mem[0] = sha3(this.address, _1281, _1284, address(_1287))
                mem[32] = 0
                require _1266 + sub_f1c64a70[this.address][_1281][_1284][address(_1287)] >= _1266
                if _1266 + sub_f1c64a70[this.address][_1281][_1284][address(_1287)] > mem[mem[mem[_1265 + 32]]]:
                    emit 0x25eefca0 
                    emit 0x3 
                    revert
                if mem[mem[mem[mem[_783] + 32]] + 32] <= block.timestamp:
                    emit 0x25eefca0 
                    emit 0x3 
                    revert
                if mem[_142 + 428 len 20] != sub_8ff876ddAddress:
                    emit 0x25eefca0 
                    emit 0x3 
                    revert
                _1337 = mem[mem[mem[mem[_783] + 32]] + 32]
                _1340 = mem[mem[mem[mem[_783] + 32]]]
                _1343 = mem[mem[mem[mem[_783] + 32]] + 64]
                mem[_1240 + 640] = address(this.address)
                mem[_1240 + 660] = _1337
                mem[_1240 + 692] = _1340
                mem[_1240 + 724] = address(_1343)
                mem[0] = sha3(this.address, _1337, _1340, address(_1343))
                mem[32] = 1
                if stor1[this.address][_1337][_1340][address(_1343)]:
                    emit 0x25eefca0 
                    emit 0x0 
                    revert
                _1369 = mem[mem[mem[mem[_783] + 32]] + 32]
                _1372 = mem[mem[mem[mem[_783] + 32]]]
                _1375 = mem[mem[mem[mem[_783] + 32]] + 64]
                mem[_1240 + 640] = address(this.address)
                mem[_1240 + 660] = _1369
                mem[_1240 + 692] = _1372
                mem[_1240 + 724] = address(_1375)
                _1381 = mem[_783 + 32]
                require sub_f1c64a70[this.address][_1369][_1372][address(_1375)] + mem[_783 + 32] >= sub_f1c64a70[this.address][_1369][_1372][address(_1375)]
                mem[0] = sha3(this.address, _1369, _1372, address(_1375))
                mem[32] = 0
                sub_f1c64a70[this.address][_1369][_1372][address(_1375)] += _1381
                _1388 = mem[_142 + 96]
                _1389 = mem[_142 + 192]
                _1390 = mem[_783 + 32]
                require ext_code.size(contractRegistryAddress)
                call contractRegistryAddress.tokenTransferProxy() with:
                     gas gas_remaining wei
                mem[_1240 + 640] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_1240 + ceil32(return_data.size) + 644] = address(_1388)
                mem[_1240 + ceil32(return_data.size) + 676] = address(_1389)
                mem[_1240 + ceil32(return_data.size) + 708] = this.address
                mem[_1240 + ceil32(return_data.size) + 740] = _1390
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x15dacbea with:
                     gas gas_remaining wei
                    args address(_1388), address(_1389), address(this.address), _1390
                mem[_1240 + ceil32(return_data.size) + 640] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1240 + (2 * ceil32(return_data.size)) + 640
            require return_data.size >= 32
            require ext_call.return_data[0]
        _777 = mem[96]
        idx = idx + 1
        continue 
    require 0 < mem[96]
    _784 = mem[_142 + 96]
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.tokenTransferProxy() with:
         gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _787 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _791 = mem[_787]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = address(_791)
    require ext_code.size(address(_784))
    call address(_784).0xdd62ed3e with:
         gas 8000 wei
        args address(this.address), address(_791)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _859 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _880 = mem[_142 + 224]
    _881 = mem[_142 + 64]
    require mem[_142 + 64] + mem[_142 + 224] >= mem[_142 + 64]
    if mem[_859] >= mem[_142 + 64] + mem[_142 + 224]:
        _897 = mem[64]
        mem[64] = mem[64] + 192
        mem[_897 len 192] = code.data[11094 len 192]
        _904 = mem[64]
        mem[64] = mem[64] + 256
        mem[_904 len 256] = code.data[11094 len 256]
        _908 = mem[64]
        mem[64] = mem[64] + 32
        mem[_908] = code.data[11094 len 32]
        _911 = mem[64]
        mem[64] = mem[64] + 96
        mem[_911 len 96] = code.data[11094 len 96]
        _914 = mem[64]
        mem[64] = mem[64] + 96
        mem[_914 len 96] = code.data[11094 len 96]
        _921 = mem[64]
        mem[64] = mem[64] + 96
        mem[_921 len 96] = code.data[11094 len 96]
        _937 = mem[64]
        mem[64] = mem[64] + 192
        mem[_937 len 192] = code.data[11094 len 192]
        _944 = mem[64]
        mem[64] = mem[64] + 256
        mem[_944 len 256] = code.data[11094 len 256]
        _978 = mem[64]
        mem[64] = mem[64] + 32
        mem[_978] = code.data[11094 len 32]
        _993 = mem[64]
        mem[64] = mem[64] + 96
        mem[_993 len 96] = code.data[11094 len 96]
        _995 = mem[64]
        mem[64] = mem[64] + 96
        mem[_995 len 96] = code.data[11094 len 96]
        _1011 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1011 len 96] = code.data[11094 len 96]
        _1012 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1012] = mem[_142 + 44 len 20]
        mem[_1012 + 32] = mem[_142 + 140 len 20]
        mem[_1012 + 64] = mem[_142 + 332 len 20]
        mem[_1012 + 96] = mem[_142 + 428 len 20]
        mem[_1012 + 128] = mem[_142 + 108 len 20]
        mem[_1012 + 160] = mem[_142 + 268 len 20]
        _1019 = mem[64]
        mem[64] = mem[64] + 256
        mem[_1019] = mem[_142 + 384]
        mem[_1019 + 32] = mem[_142 + 512]
        mem[_1019 + 64] = mem[_142 + 64]
        mem[_1019 + 96] = mem[_142 + 352]
        mem[_1019 + 128] = mem[_142 + 288]
        mem[_1019 + 160] = mem[_142 + 224]
        mem[_1019 + 192] = mem[_142 + 160]
        mem[_1019 + 224] = mem[_142 + 480]
        _1028 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1028] = mem[_142 + 448]
        _1030 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1030] = mem[mem[_142 + 544] + 31 len 1]
        mem[_1030 + 32] = mem[mem[_142 + 576] + 31 len 1]
        mem[_1030 + 64] = mem[mem[_142 + 608] + 31 len 1]
        _1037 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1037] = mem[mem[_142 + 544] + 32]
        mem[_1037 + 32] = mem[mem[_142 + 576] + 32]
        mem[_1037 + 64] = mem[mem[_142 + 608] + 32]
        _1044 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1044] = mem[mem[_142 + 544] + 64]
        mem[_1044 + 32] = mem[mem[_142 + 576] + 64]
        mem[_1044 + 64] = mem[mem[_142 + 608] + 64]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.0x79dd4b7 with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1061 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1067 = mem[_1061]
        mem[mem[64]] = 0xe6488fc900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        idx = 0
        s = _1012
        t = mem[64] + 36
        while idx < 6:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 228 len 256] = mem[_1019 len 256]
        mem[mem[64] + 484] = mem[_1028]
        idx = 0
        s = _1030
        t = mem[64] + 516
        while idx < 3:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 612 len 96] = mem[_1037 len 96]
        mem[mem[64] + 708 len 96] = mem[_1044 len 96]
        require ext_code.size(address(_1067))
        call address(_1067).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
             gas gas_remaining wei
            args address(this.address), mem[mem[64] + 36 len 768]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1427 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1429 = mem[_1427]
        require mem[_1427]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.debtToken() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1435 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1437 = mem[_1435]
        mem[mem[64] + 4] = mem[_142 + 204 len 20]
        require ext_code.size(address(_1437))
        call address(_1437).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _1429
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return _1429
    _892 = mem[_142 + 96]
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.tokenTransferProxy() with:
         gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _898 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = mem[_898 + 12 len 20]
    mem[mem[64] + 36] = _881 + _880
    require ext_code.size(address(_892))
    call address(_892).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], _881 + _880
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _996 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_996]
    _1073 = mem[64]
    mem[64] = mem[64] + 192
    mem[_1073 len 192] = code.data[11094 len 192]
    _1077 = mem[64]
    mem[64] = mem[64] + 256
    mem[_1077 len 256] = code.data[11094 len 256]
    _1104 = mem[64]
    mem[64] = mem[64] + 32
    mem[_1104] = code.data[11094 len 32]
    _1109 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1109 len 96] = code.data[11094 len 96]
    _1110 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1110 len 96] = code.data[11094 len 96]
    _1137 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1137 len 96] = code.data[11094 len 96]
    _1142 = mem[64]
    mem[64] = mem[64] + 192
    mem[_1142 len 192] = code.data[11094 len 192]
    _1156 = mem[64]
    mem[64] = mem[64] + 256
    mem[_1156 len 256] = code.data[11094 len 256]
    _1159 = mem[64]
    mem[64] = mem[64] + 32
    mem[_1159] = code.data[11094 len 32]
    _1161 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1161 len 96] = code.data[11094 len 96]
    _1165 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1165 len 96] = code.data[11094 len 96]
    _1167 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1167 len 96] = code.data[11094 len 96]
    _1168 = mem[64]
    mem[64] = mem[64] + 192
    mem[_1168] = mem[_142 + 44 len 20]
    mem[_1168 + 32] = mem[_142 + 140 len 20]
    mem[_1168 + 64] = mem[_142 + 332 len 20]
    mem[_1168 + 96] = mem[_142 + 428 len 20]
    mem[_1168 + 128] = mem[_142 + 108 len 20]
    mem[_1168 + 160] = mem[_142 + 268 len 20]
    _1175 = mem[64]
    mem[64] = mem[64] + 256
    mem[_1175] = mem[_142 + 384]
    mem[_1175 + 32] = mem[_142 + 512]
    mem[_1175 + 64] = mem[_142 + 64]
    mem[_1175 + 96] = mem[_142 + 352]
    mem[_1175 + 128] = mem[_142 + 288]
    mem[_1175 + 160] = mem[_142 + 224]
    mem[_1175 + 192] = mem[_142 + 160]
    mem[_1175 + 224] = mem[_142 + 480]
    _1184 = mem[64]
    mem[64] = mem[64] + 32
    mem[_1184] = mem[_142 + 448]
    _1186 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1186] = mem[mem[_142 + 544] + 31 len 1]
    mem[_1186 + 32] = mem[mem[_142 + 576] + 31 len 1]
    mem[_1186 + 64] = mem[mem[_142 + 608] + 31 len 1]
    _1193 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1193] = mem[mem[_142 + 544] + 32]
    mem[_1193 + 32] = mem[mem[_142 + 576] + 32]
    mem[_1193 + 64] = mem[mem[_142 + 608] + 32]
    _1200 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1200] = mem[mem[_142 + 544] + 64]
    mem[_1200 + 32] = mem[mem[_142 + 576] + 64]
    mem[_1200 + 64] = mem[mem[_142 + 608] + 64]
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.0x79dd4b7 with:
         gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1211 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1212 = mem[_1211]
    mem[mem[64]] = 0xe6488fc900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = this.address
    idx = 0
    s = _1168
    t = mem[64] + 36
    while idx < 6:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 228 len 256] = mem[_1175 len 256]
    mem[mem[64] + 484] = mem[_1184]
    idx = 0
    s = _1186
    t = mem[64] + 516
    while idx < 3:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 612 len 96] = mem[_1193 len 96]
    mem[mem[64] + 708 len 96] = mem[_1200 len 96]
    require ext_code.size(address(_1212))
    call address(_1212).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
         gas gas_remaining wei
        args address(this.address), mem[mem[64] + 36 len 768]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1428 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1430 = mem[_1428]
    require mem[_1428]
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtToken() with:
         gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1436 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1438 = mem[_1436]
    mem[mem[64] + 4] = mem[_142 + 204 len 20]
    require ext_code.size(address(_1438))
    call address(_1438).0xa9059cbb with:
         gas gas_remaining wei
        args mem[mem[64] + 4], _1430
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return _1430
}



}
