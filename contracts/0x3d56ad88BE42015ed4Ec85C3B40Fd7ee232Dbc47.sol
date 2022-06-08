contract main {




// =====================  Runtime code  =====================


#
#  - sub_da3e3865(?)
#
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



}
