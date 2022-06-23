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

function sub_50537acd(?) {
    require calldata.size - 4 >= 832
    require calldata.size - 548 >= 96
    require calldata.size - 644 >= 96
    require calldata.size - 740 >= 96
    return not arg1
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
    if arg5:
        return not arg5
    if arg2 <= block.timestamp:
        return (arg2 > block.timestamp)
    return (arg6 == sub_8ff876ddAddress)
}

function sub_6697366f(?) {
    require calldata.size - 4 >= 256
    require calldata.size - 4 >= 224
    require calldata.size - 36 >= 192
    require calldata.size - 36 >= 96
    require calldata.size - 132 >= 96
    if msg.sender == uint64(arg1) << 96:
        return 1
    if not stor4[uint64(arg1) << 96]:
        signer = erecover(sha3(arg2, arg4, sha3(this.address, arg3, arg2, uint64(arg4) << 96)), arg5 << 248, arg6, arg7) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        return (address(signer) == address(arg1))
    signer = erecover(sha3(uint32(arg2), Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg3, arg2, uint64(arg4) << 96)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (address(signer) == stor4[uint64(arg1) << 96])
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
        if arg13:
            emit 0x25eefca0 
            emit 0x3 
            return 0
        if arg3 <= block.timestamp:
            emit 0x25eefca0 
            emit 0x3 
            return 0
        if address(arg19) != sub_8ff876ddAddress:
            emit 0x25eefca0 
            emit 0x3 
            return 0
        if stor1[this.address][arg3][arg2][uint64(arg4) << 96]:
            emit 0x25eefca0 
            emit 0x0 
            return 0
        require sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96] + arg9 >= sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96]
        sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96] += arg9
        require ext_code.size(arg10)
        call arg10.0x23b872dd with:
             gas gas_remaining wei
            args arg1 << 192, address(this.address), arg9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.tokenTransferProxy() with:
             gas gas_remaining wei
        mem[ceil32(return_data.size) + 3488] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 3492] = this.address
        mem[(2 * ceil32(return_data.size)) + 3524] = address(ext_call.return_data[0])
        require ext_code.size(arg10)
        call arg10.0xdd62ed3e with:
             gas 8000 wei
            args address(this.address), address(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 3488] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg9 + arg13 >= arg9
        if ext_call.return_data[0] >= arg9 + arg13:
            mem[(4 * ceil32(return_data.size)) + 5024] = address(arg8)
            mem[(4 * ceil32(return_data.size)) + 5056] = address(arg11)
            mem[(4 * ceil32(return_data.size)) + 5088] = address(arg16)
            mem[(4 * ceil32(return_data.size)) + 5120] = address(arg19)
            mem[(4 * ceil32(return_data.size)) + 5152] = arg10
            mem[(4 * ceil32(return_data.size)) + 5184] = address(arg14)
            mem[(4 * ceil32(return_data.size)) + 5216] = arg18
            mem[(4 * ceil32(return_data.size)) + 5504] = 0
            mem[(4 * ceil32(return_data.size)) + 5536] = 0
            mem[(4 * ceil32(return_data.size)) + 5568] = 0
            mem[(4 * ceil32(return_data.size)) + 5600] = arg23
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.0x79dd4b7 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = (4 * ceil32(return_data.size)) + 5024
            t = (6 * ceil32(return_data.size)) + 5828
            while idx < 6:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            s = (4 * ceil32(return_data.size)) + 5504
            t = (6 * ceil32(return_data.size)) + 6308
            while idx < 3:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
                 gas gas_remaining wei
                args address(this.address), mem[(6 * ceil32(return_data.size)) + 5828 len 192], arg18, arg22, arg9, arg17, arg15, arg13, arg12, arg21 >> 1792, arg20, mem[(6 * ceil32(return_data.size)) + 6308 len 96], arg23, arg25, arg27 >> 512, arg24, arg26, arg28
        else:
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.tokenTransferProxy() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg10)
            call arg10.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg9 + arg13
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 5024] = address(arg8)
            mem[(7 * ceil32(return_data.size)) + 5056] = address(arg11)
            mem[(7 * ceil32(return_data.size)) + 5088] = address(arg16)
            mem[(7 * ceil32(return_data.size)) + 5120] = address(arg19)
            mem[(7 * ceil32(return_data.size)) + 5152] = arg10
            mem[(7 * ceil32(return_data.size)) + 5184] = address(arg14)
            mem[(7 * ceil32(return_data.size)) + 5216] = arg18
            mem[(7 * ceil32(return_data.size)) + 5248] = arg22
            mem[(7 * ceil32(return_data.size)) + 5280] = arg9
            mem[(7 * ceil32(return_data.size)) + 5312] = arg17
            mem[(7 * ceil32(return_data.size)) + 5344] = arg15
            mem[(7 * ceil32(return_data.size)) + 5376] = arg13
            mem[(7 * ceil32(return_data.size)) + 5408] = arg12
            mem[(7 * ceil32(return_data.size)) + 5440] = arg21
            mem[(7 * ceil32(return_data.size)) + 5472] = arg20
            mem[(7 * ceil32(return_data.size)) + 5504] = 0
            mem[(7 * ceil32(return_data.size)) + 5536] = 0
            mem[(7 * ceil32(return_data.size)) + 5568] = 0
            mem[(7 * ceil32(return_data.size)) + 5600] = arg23
            mem[(7 * ceil32(return_data.size)) + 5632] = arg25
            mem[(7 * ceil32(return_data.size)) + 5664] = arg27
            mem[(7 * ceil32(return_data.size)) + 5696] = arg24
            mem[(7 * ceil32(return_data.size)) + 5728] = arg26
            mem[(7 * ceil32(return_data.size)) + 5760] = arg28
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.0x79dd4b7 with:
                 gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 5792] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(8 * ceil32(return_data.size)) + 5792] = 0xe6488fc900000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 5796] = this.address
            idx = 0
            s = (7 * ceil32(return_data.size)) + 5024
            t = (8 * ceil32(return_data.size)) + 5828
            while idx < 6:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 6020 len 256] = mem[(7 * ceil32(return_data.size)) + 5216 len 256]
            mem[(8 * ceil32(return_data.size)) + 6276] = mem[(7 * ceil32(return_data.size)) + 5472]
            idx = 0
            s = (7 * ceil32(return_data.size)) + 5504
            t = (8 * ceil32(return_data.size)) + 6308
            while idx < 3:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 6404 len 96] = mem[(7 * ceil32(return_data.size)) + 5600 len 96]
            mem[(8 * ceil32(return_data.size)) + 6500 len 96] = mem[(7 * ceil32(return_data.size)) + 5696 len 96]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
                 gas gas_remaining wei
                args address(this.address), mem[(8 * ceil32(return_data.size)) + 5828 len 576], mem[(7 * ceil32(return_data.size)) + 5600 len 96], mem[(7 * ceil32(return_data.size)) + 5696 len 96]
    else:
        if not stor4[uint64(arg1) << 96]:
            signer = erecover(sha3(arg2, arg4, sha3(this.address, arg3, arg2, uint64(arg4) << 96)), arg5 << 248, arg6, arg7) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(signer) != address(arg1):
                emit 0x25eefca0 
                emit 0x2 
                return 0
        else:
            signer = erecover(sha3(uint32(arg2), Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg3, arg2, uint64(arg4) << 96)), arg5 << 248, arg6, arg7) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(signer) != stor4[uint64(arg1) << 96]:
                emit 0x25eefca0 
                emit 0x2 
                return 0
        require arg9 + sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96] >= arg9
        if arg9 + sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96] > arg2:
            emit 0x25eefca0 
            emit 0x3 
            return 0
        if arg13:
            emit 0x25eefca0 
            emit 0x3 
            return 0
        if arg3 <= block.timestamp:
            emit 0x25eefca0 
            emit 0x3 
            return 0
        if uint64(arg19) << 96 != sub_8ff876ddAddress:
            emit 0x25eefca0 
            emit 0x3 
            return 0
        if stor1[this.address][arg3][arg2][uint64(arg4) << 96]:
            emit 0x25eefca0 
            emit 0x0 
            return 0
        require sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96] + arg9 >= sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96]
        sub_f1c64a70[this.address][arg3][arg2][uint64(arg4) << 96] += arg9
        require ext_code.size(arg10)
        call arg10.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), address(this.address), arg9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.tokenTransferProxy() with:
             gas gas_remaining wei
        mem[ceil32(return_data.size) + 3584] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 3588] = this.address
        mem[(2 * ceil32(return_data.size)) + 3620] = address(ext_call.return_data[0])
        require ext_code.size(arg10)
        call arg10.0xdd62ed3e with:
             gas 8000 wei
            args address(this.address), address(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 3584] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg9 + arg13 >= arg9
        if ext_call.return_data[0] >= arg9 + arg13:
            mem[(4 * ceil32(return_data.size)) + 5120] = uint64(arg8) << 96
            mem[(4 * ceil32(return_data.size)) + 5152] = uint64(arg11) << 96
            mem[(4 * ceil32(return_data.size)) + 5184] = uint64(arg16) << 96
            mem[(4 * ceil32(return_data.size)) + 5216] = uint64(arg19) << 96
            mem[(4 * ceil32(return_data.size)) + 5248] = uint64(arg10) << 96
            mem[(4 * ceil32(return_data.size)) + 5280] = uint64(arg14) << 96
            mem[(4 * ceil32(return_data.size)) + 5312] = arg18
            mem[(4 * ceil32(return_data.size)) + 5600] = 0
            mem[(4 * ceil32(return_data.size)) + 5632] = 0
            mem[(4 * ceil32(return_data.size)) + 5664] = 0
            mem[(4 * ceil32(return_data.size)) + 5696] = arg23
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.0x79dd4b7 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = (4 * ceil32(return_data.size)) + 5120
            t = (6 * ceil32(return_data.size)) + 5924
            while idx < 6:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            s = (4 * ceil32(return_data.size)) + 5600
            t = (6 * ceil32(return_data.size)) + 6404
            while idx < 3:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
                 gas gas_remaining wei
                args address(this.address), mem[(6 * ceil32(return_data.size)) + 5924 len 192], arg18, arg22, arg9, arg17, arg15, arg13, arg12, arg21 >> 1792, arg20, mem[(6 * ceil32(return_data.size)) + 6404 len 96], arg27 >> 512, arg24, arg26, arg28
        else:
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.tokenTransferProxy() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg10)
            call arg10.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg9 + arg13
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 5120] = uint64(arg8) << 96
            mem[(7 * ceil32(return_data.size)) + 5152] = uint64(arg11) << 96
            mem[(7 * ceil32(return_data.size)) + 5184] = uint64(arg16) << 96
            mem[(7 * ceil32(return_data.size)) + 5216] = uint64(arg19) << 96
            mem[(7 * ceil32(return_data.size)) + 5248] = uint64(arg10) << 96
            mem[(7 * ceil32(return_data.size)) + 5280] = uint64(arg14) << 96
            mem[(7 * ceil32(return_data.size)) + 5312] = arg18
            mem[(7 * ceil32(return_data.size)) + 5344] = arg22
            mem[(7 * ceil32(return_data.size)) + 5376] = arg9
            mem[(7 * ceil32(return_data.size)) + 5408] = arg17
            mem[(7 * ceil32(return_data.size)) + 5440] = arg15
            mem[(7 * ceil32(return_data.size)) + 5472] = arg13
            mem[(7 * ceil32(return_data.size)) + 5504] = arg12
            mem[(7 * ceil32(return_data.size)) + 5536] = arg21
            mem[(7 * ceil32(return_data.size)) + 5568] = arg20
            mem[(7 * ceil32(return_data.size)) + 5600] = 0
            mem[(7 * ceil32(return_data.size)) + 5632] = 0
            mem[(7 * ceil32(return_data.size)) + 5664] = 0
            mem[(7 * ceil32(return_data.size)) + 5696] = arg23
            mem[(7 * ceil32(return_data.size)) + 5728] = arg25
            mem[(7 * ceil32(return_data.size)) + 5760] = arg27
            mem[(7 * ceil32(return_data.size)) + 5792] = arg24
            mem[(7 * ceil32(return_data.size)) + 5824] = arg26
            mem[(7 * ceil32(return_data.size)) + 5856] = arg28
            require ext_code.size(contractRegistryAddress)
            call contractRegistryAddress.0x79dd4b7 with:
                 gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 5888] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(8 * ceil32(return_data.size)) + 5888] = 0xe6488fc900000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 5892] = this.address
            idx = 0
            s = (7 * ceil32(return_data.size)) + 5120
            t = (8 * ceil32(return_data.size)) + 5924
            while idx < 6:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 6116 len 256] = mem[(7 * ceil32(return_data.size)) + 5312 len 256]
            mem[(8 * ceil32(return_data.size)) + 6372] = mem[(7 * ceil32(return_data.size)) + 5568]
            idx = 0
            s = (7 * ceil32(return_data.size)) + 5600
            t = (8 * ceil32(return_data.size)) + 6404
            while idx < 3:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 6500 len 96] = mem[(7 * ceil32(return_data.size)) + 5696 len 96]
            mem[(8 * ceil32(return_data.size)) + 6596 len 96] = mem[(7 * ceil32(return_data.size)) + 5792 len 96]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
                 gas gas_remaining wei
                args address(this.address), mem[(8 * ceil32(return_data.size)) + 5924 len 576], mem[(7 * ceil32(return_data.size)) + 5696 len 96], mem[(7 * ceil32(return_data.size)) + 5792 len 96]
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
        args address(arg1), ext_call.return_data[0]
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
        _136 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require calldata.size - s >= 224
        _138 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        mem[_138] = address(cd[s])
        require calldata.size + -s - 32 >= 192
        _139 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require calldata.size + -s - 32 >= 96
        _140 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        mem[_140] = cd[(s + 32)]
        mem[_140 + 32] = cd[(s + 64)]
        mem[_140 + 64] = address(cd[(s + 96)])
        mem[_139] = _140
        require calldata.size + -s - 128 >= 96
        _141 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        mem[_141] = uint8(cd[(s + 128)])
        mem[_141 + 32] = cd[(s + 160)]
        mem[_141 + 64] = cd[(s + 192)]
        mem[_139 + 32] = _141
        mem[_138 + 32] = _139
        mem[_136] = _138
        mem[_136 + 32] = cd[(s + 224)]
        mem[t] = _136
        idx = idx + 1
        s = s + 256
        t = t + 32
        continue 
    require calldata.size - 36 >= 832
    _137 = mem[64]
    require mem[64] + 640 <= test266151307() and mem[64] + 640 >= mem[64]
    mem[64] = mem[64] + 640
    mem[_137] = address(cd[36])
    mem[_137 + 32] = address(cd[68])
    mem[_137 + 64] = cd[100]
    mem[_137 + 96] = address(cd[132])
    mem[_137 + 128] = address(cd[164])
    mem[_137 + 160] = cd[196]
    mem[_137 + 192] = address(cd[228])
    mem[_137 + 224] = cd[260]
    mem[_137 + 256] = address(cd[292])
    mem[_137 + 288] = cd[324]
    mem[_137 + 320] = address(cd[356])
    mem[_137 + 352] = cd[388]
    mem[_137 + 384] = cd[420]
    mem[_137 + 416] = address(cd[452])
    mem[_137 + 448] = cd[484]
    mem[_137 + 480] = cd[516]
    mem[_137 + 512] = cd[548]
    require calldata.size - 580 >= 96
    _142 = mem[64]
    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
    mem[64] = mem[64] + 96
    mem[_142] = uint8(cd[580])
    mem[_142 + 32] = cd[612]
    mem[_142 + 64] = cd[644]
    mem[_137 + 544] = _142
    require calldata.size - 676 >= 96
    _143 = mem[64]
    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
    mem[64] = mem[64] + 96
    mem[_143] = uint8(cd[676])
    mem[_143 + 32] = cd[708]
    mem[_143 + 64] = cd[740]
    mem[_137 + 576] = _143
    require calldata.size - 772 >= 96
    _144 = mem[64]
    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
    mem[64] = mem[64] + 96
    mem[_144] = uint8(cd[772])
    mem[_144 + 32] = cd[804]
    mem[_144 + 64] = cd[836]
    mem[_137 + 608] = _144
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
    _760 = mem[96]
    idx = 0
    while uint8(idx) < _760:
        require uint8(idx) < mem[96]
        _766 = mem[(32 * uint8(idx)) + 128]
        _771 = mem[64]
        mem[64] = mem[64] + 224
        mem[_771] = 0
        _772 = mem[64]
        mem[64] = mem[64] + 192
        _773 = mem[64]
        mem[64] = mem[64] + 96
        mem[_773] = 0
        mem[_773 + 32] = 0
        mem[_773 + 64] = 0
        mem[_772] = _773
        _775 = mem[64]
        mem[64] = mem[64] + 96
        mem[_775] = 0
        mem[_775 + 32] = 0
        mem[_775 + 64] = 0
        mem[_772 + 32] = _775
        mem[_771 + 32] = _772
        _776 = mem[_766]
        if msg.sender == mem[mem[_766] + 12 len 20]:
            _838 = mem[64]
            mem[64] = mem[64] + 224
            mem[_838] = 0
            _839 = mem[64]
            mem[64] = mem[64] + 192
            _841 = mem[64]
            mem[64] = mem[64] + 96
            mem[_841] = 0
            mem[_841 + 32] = 0
            mem[_841 + 64] = 0
            mem[_839] = _841
            _843 = mem[64]
            mem[64] = mem[64] + 96
            mem[_843] = 0
            mem[_843 + 32] = 0
            mem[_843 + 64] = 0
            mem[_839 + 32] = _843
            mem[_838 + 32] = _839
            _845 = mem[_766]
            _846 = mem[_766 + 32]
            _849 = mem[mem[mem[mem[_766] + 32]] + 32]
            _852 = mem[mem[mem[mem[_766] + 32]]]
            _855 = mem[mem[mem[mem[_766] + 32]] + 64]
            mem[mem[64]] = address(this.address)
            mem[mem[64] + 20] = _849
            mem[mem[64] + 52] = _852
            mem[mem[64] + 84] = address(_855)
            mem[0] = sha3(this.address, _849, _852, address(_855))
            mem[32] = 0
            require _846 + sub_f1c64a70[this.address][_849][_852][address(_855)] >= _846
            if _846 + sub_f1c64a70[this.address][_849][_852][address(_855)] > mem[mem[mem[_845 + 32]]]:
                emit 0x25eefca0 
                emit 0x3 
                revert
            if mem[_137 + 224]:
                emit 0x25eefca0 
                emit 0x3 
                revert
            if mem[mem[mem[mem[_766] + 32]] + 32] <= block.timestamp:
                emit 0x25eefca0 
                emit 0x3 
                revert
            if mem[_137 + 428 len 20] != sub_8ff876ddAddress:
                emit 0x25eefca0 
                emit 0x3 
                revert
            _917 = mem[mem[mem[mem[_766] + 32]] + 32]
            _920 = mem[mem[mem[mem[_766] + 32]]]
            _923 = mem[mem[mem[mem[_766] + 32]] + 64]
            mem[mem[64]] = address(this.address)
            mem[mem[64] + 20] = _917
            mem[mem[64] + 52] = _920
            mem[mem[64] + 84] = address(_923)
            mem[0] = sha3(this.address, _917, _920, address(_923))
            mem[32] = 1
            if stor1[this.address][_917][_920][address(_923)]:
                emit 0x25eefca0 
                emit 0x0 
                revert
            _971 = mem[mem[mem[mem[_766] + 32]] + 32]
            _974 = mem[mem[mem[mem[_766] + 32]]]
            _977 = mem[mem[mem[mem[_766] + 32]] + 64]
            mem[mem[64]] = address(this.address)
            mem[mem[64] + 20] = _971
            mem[mem[64] + 52] = _974
            mem[mem[64] + 84] = address(_977)
            _983 = mem[_766 + 32]
            require sub_f1c64a70[this.address][_971][_974][address(_977)] + mem[_766 + 32] >= sub_f1c64a70[this.address][_971][_974][address(_977)]
            mem[0] = sha3(this.address, _971, _974, address(_977))
            mem[32] = 0
            sub_f1c64a70[this.address][_971][_974][address(_977)] += _983
            _1029 = mem[_137 + 96]
            _1032 = mem[_766 + 32]
            mem[mem[64] + 4] = mem[mem[_766] + 12 len 20]
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _1032
            require ext_code.size(address(_1029))
            call address(_1029).0x23b872dd with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(this.address), _1032
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1097 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1097]
        else:
            mem[0] = mem[mem[_766] + 12 len 20]
            mem[32] = 4
            if not stor4[mem[0]]:
                _780 = mem[_776]
                _786 = mem[mem[mem[_776 + 32]] + 32]
                _789 = mem[mem[mem[_776 + 32]]]
                _792 = mem[mem[mem[_776 + 32]] + 64]
                mem[mem[64]] = address(this.address)
                mem[mem[64] + 20] = _786
                mem[mem[64] + 52] = _789
                mem[mem[64] + 84] = address(_792)
                _809 = mem[mem[_776 + 32] + 32]
                _812 = mem[64]
                mem[64] = mem[64] + 64
                mem[_812] = 28
                mem[_812 + 32] = '\x19Ethereum Signed Message:\n32'
                _813 = mem[64]
                t = _812 + 32
                u = mem[64]
                s = mem[_812]
                while s >= 32:
                    mem[u] = mem[t]
                    _760 = mem[96]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_812])] = mem[_812 + floor32(mem[_812]) + -(mem[_812] % 32) + 64 len mem[_812] % 32] or Mask(8 * -(mem[_812] % 32) + 32, -(8 * -(mem[_812] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_812])])
                mem[_813 + 28] = sha3(this.address, _786, _789, address(_792))
                _1209 = sha3(mem[mem[64] len _813 + -mem[64] + 60])
                _1210 = mem[_809]
                _1211 = mem[_809 + 32]
                _1212 = mem[_809 + 64]
                _1213 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1213 + 64] = uint8(_1210)
                mem[_1213 + 96] = _1211
                mem[_1213 + 128] = _1212
                signer = erecover(_1209, _1210 << 248, _1211, _1212) 
                mem[_1213] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) != address(_780):
                    emit 0x25eefca0 
                    emit 0x2 
                    revert
                mem[_1213 + 32] = 0
                mem[_1213 + 448] = 0
                mem[_1213 + 480] = 0
                mem[_1213 + 512] = 0
                mem[_1213 + 256] = _1213 + 448
                mem[64] = _1213 + 640
                mem[_1213 + 544] = 0
                mem[_1213 + 576] = 0
                mem[_1213 + 608] = 0
                mem[_1213 + 288] = _1213 + 544
                mem[_1213 + 64] = _1213 + 256
                _1246 = mem[_766]
                _1247 = mem[_766 + 32]
                _1252 = mem[mem[mem[mem[_766] + 32]] + 32]
                _1255 = mem[mem[mem[mem[_766] + 32]]]
                _1258 = mem[mem[mem[mem[_766] + 32]] + 64]
                mem[_1213 + 640] = address(this.address)
                mem[_1213 + 660] = _1252
                mem[_1213 + 692] = _1255
                mem[_1213 + 724] = address(_1258)
                mem[0] = sha3(this.address, _1252, _1255, address(_1258))
                mem[32] = 0
                require _1247 + sub_f1c64a70[this.address][_1252][_1255][address(_1258)] >= _1247
                if _1247 + sub_f1c64a70[this.address][_1252][_1255][address(_1258)] > mem[mem[mem[_1246 + 32]]]:
                    emit 0x25eefca0 
                    emit 0x3 
                    revert
                if mem[_137 + 224]:
                    emit 0x25eefca0 
                    emit 0x3 
                    revert
                if mem[mem[mem[mem[_766] + 32]] + 32] <= block.timestamp:
                    emit 0x25eefca0 
                    emit 0x3 
                    revert
                if mem[_137 + 428 len 20] != sub_8ff876ddAddress:
                    emit 0x25eefca0 
                    emit 0x3 
                    revert
                _1314 = mem[mem[mem[mem[_766] + 32]] + 32]
                _1317 = mem[mem[mem[mem[_766] + 32]]]
                _1320 = mem[mem[mem[mem[_766] + 32]] + 64]
                mem[_1213 + 640] = address(this.address)
                mem[_1213 + 660] = _1314
                mem[_1213 + 692] = _1317
                mem[_1213 + 724] = address(_1320)
                mem[0] = sha3(this.address, _1314, _1317, address(_1320))
                mem[32] = 1
                if stor1[this.address][_1314][_1317][address(_1320)]:
                    emit 0x25eefca0 
                    emit 0x0 
                    revert
                _1346 = mem[mem[mem[mem[_766] + 32]] + 32]
                _1349 = mem[mem[mem[mem[_766] + 32]]]
                _1352 = mem[mem[mem[mem[_766] + 32]] + 64]
                mem[_1213 + 640] = address(this.address)
                mem[_1213 + 660] = _1346
                mem[_1213 + 692] = _1349
                mem[_1213 + 724] = address(_1352)
                _1368 = mem[_766 + 32]
                require sub_f1c64a70[this.address][_1346][_1349][address(_1352)] + mem[_766 + 32] >= sub_f1c64a70[this.address][_1346][_1349][address(_1352)]
                mem[0] = sha3(this.address, _1346, _1349, address(_1352))
                mem[32] = 0
                sub_f1c64a70[this.address][_1346][_1349][address(_1352)] += _1368
                _1373 = mem[_137 + 96]
                _1375 = mem[mem[_766]]
                _1376 = mem[_766 + 32]
                mem[_1213 + 644] = mem[mem[_766] + 12 len 20]
                mem[_1213 + 676] = this.address
                mem[_1213 + 708] = _1376
                require ext_code.size(address(_1373))
                call address(_1373).0x23b872dd with:
                     gas gas_remaining wei
                    args address(_1375), address(this.address), _1376
                mem[_1213 + 640] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1213 + ceil32(return_data.size) + 640
            else:
                mem[0] = mem[_776 + 12 len 20]
                mem[32] = 4
                _782 = sha3(mem[0], 4)
                _798 = mem[mem[mem[_776 + 32]] + 32]
                _801 = mem[mem[mem[_776 + 32]]]
                _804 = mem[mem[mem[_776 + 32]] + 64]
                mem[mem[64]] = address(this.address)
                mem[mem[64] + 20] = _798
                mem[mem[64] + 52] = _801
                mem[mem[64] + 84] = address(_804)
                _811 = mem[mem[_776 + 32] + 32]
                _815 = mem[64]
                mem[64] = mem[64] + 64
                mem[_815] = 28
                mem[_815 + 32] = '\x19Ethereum Signed Message:\n32'
                _816 = mem[64]
                t = _815 + 32
                u = mem[64]
                s = mem[_815]
                while s >= 32:
                    mem[u] = mem[t]
                    _760 = mem[96]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_815])] = mem[_815 + floor32(mem[_815]) + -(mem[_815] % 32) + 64 len mem[_815] % 32] or Mask(8 * -(mem[_815] % 32) + 32, -(8 * -(mem[_815] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_815])])
                mem[_816 + 28] = sha3(this.address, _798, _801, address(_804))
                _1219 = sha3(mem[mem[64] len _816 + -mem[64] + 60])
                _1220 = mem[_811]
                _1221 = mem[_811 + 32]
                _1222 = mem[_811 + 64]
                _1223 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1223 + 64] = uint8(_1220)
                mem[_1223 + 96] = _1221
                mem[_1223 + 128] = _1222
                signer = erecover(_1219, _1220 << 248, _1221, _1222) 
                mem[_1223] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) != stor[_782]:
                    emit 0x25eefca0 
                    emit 0x2 
                    revert
                mem[_1223 + 32] = 0
                mem[_1223 + 448] = 0
                mem[_1223 + 480] = 0
                mem[_1223 + 512] = 0
                mem[_1223 + 256] = _1223 + 448
                mem[64] = _1223 + 640
                mem[_1223 + 544] = 0
                mem[_1223 + 576] = 0
                mem[_1223 + 608] = 0
                mem[_1223 + 288] = _1223 + 544
                mem[_1223 + 64] = _1223 + 256
                _1248 = mem[_766]
                _1249 = mem[_766 + 32]
                _1264 = mem[mem[mem[mem[_766] + 32]] + 32]
                _1267 = mem[mem[mem[mem[_766] + 32]]]
                _1270 = mem[mem[mem[mem[_766] + 32]] + 64]
                mem[_1223 + 640] = address(this.address)
                mem[_1223 + 660] = _1264
                mem[_1223 + 692] = _1267
                mem[_1223 + 724] = address(_1270)
                mem[0] = sha3(this.address, _1264, _1267, address(_1270))
                mem[32] = 0
                require _1249 + sub_f1c64a70[this.address][_1264][_1267][address(_1270)] >= _1249
                if _1249 + sub_f1c64a70[this.address][_1264][_1267][address(_1270)] > mem[mem[mem[_1248 + 32]]]:
                    emit 0x25eefca0 
                    emit 0x3 
                    revert
                if mem[_137 + 224]:
                    emit 0x25eefca0 
                    emit 0x3 
                    revert
                if mem[mem[mem[mem[_766] + 32]] + 32] <= block.timestamp:
                    emit 0x25eefca0 
                    emit 0x3 
                    revert
                if mem[_137 + 428 len 20] != sub_8ff876ddAddress:
                    emit 0x25eefca0 
                    emit 0x3 
                    revert
                _1326 = mem[mem[mem[mem[_766] + 32]] + 32]
                _1329 = mem[mem[mem[mem[_766] + 32]]]
                _1332 = mem[mem[mem[mem[_766] + 32]] + 64]
                mem[_1223 + 640] = address(this.address)
                mem[_1223 + 660] = _1326
                mem[_1223 + 692] = _1329
                mem[_1223 + 724] = address(_1332)
                mem[0] = sha3(this.address, _1326, _1329, address(_1332))
                mem[32] = 1
                if stor1[this.address][_1326][_1329][address(_1332)]:
                    emit 0x25eefca0 
                    emit 0x0 
                    revert
                _1358 = mem[mem[mem[mem[_766] + 32]] + 32]
                _1361 = mem[mem[mem[mem[_766] + 32]]]
                _1364 = mem[mem[mem[mem[_766] + 32]] + 64]
                mem[_1223 + 640] = address(this.address)
                mem[_1223 + 660] = _1358
                mem[_1223 + 692] = _1361
                mem[_1223 + 724] = address(_1364)
                _1370 = mem[_766 + 32]
                require sub_f1c64a70[this.address][_1358][_1361][address(_1364)] + mem[_766 + 32] >= sub_f1c64a70[this.address][_1358][_1361][address(_1364)]
                mem[0] = sha3(this.address, _1358, _1361, address(_1364))
                mem[32] = 0
                sub_f1c64a70[this.address][_1358][_1361][address(_1364)] += _1370
                _1378 = mem[_137 + 96]
                _1380 = mem[mem[_766]]
                _1381 = mem[_766 + 32]
                mem[_1223 + 644] = mem[mem[_766] + 12 len 20]
                mem[_1223 + 676] = this.address
                mem[_1223 + 708] = _1381
                require ext_code.size(address(_1378))
                call address(_1378).0x23b872dd with:
                     gas gas_remaining wei
                    args address(_1380), address(this.address), _1381
                mem[_1223 + 640] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1223 + ceil32(return_data.size) + 640
            require return_data.size >= 32
            require ext_call.return_data[0]
        _760 = mem[96]
        idx = idx + 1
        continue 
    require 0 < mem[96]
    _765 = mem[mem[mem[128]]]
    _767 = mem[_137 + 96]
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.tokenTransferProxy() with:
         gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _770 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _774 = mem[_770]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = address(_774)
    require ext_code.size(address(_767))
    call address(_767).0xdd62ed3e with:
         gas 8000 wei
        args address(this.address), address(_774)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _842 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _863 = mem[_137 + 224]
    _864 = mem[_137 + 64]
    require mem[_137 + 64] + mem[_137 + 224] >= mem[_137 + 64]
    if mem[_842] >= mem[_137 + 64] + mem[_137 + 224]:
        _875 = mem[64]
        mem[64] = mem[64] + 192
        mem[_875 len 192] = code.data[11038 len 192]
        _887 = mem[64]
        mem[64] = mem[64] + 256
        mem[_887 len 256] = code.data[11038 len 256]
        _891 = mem[64]
        mem[64] = mem[64] + 32
        mem[_891] = code.data[11038 len 32]
        _893 = mem[64]
        mem[64] = mem[64] + 96
        mem[_893 len 96] = code.data[11038 len 96]
        _898 = mem[64]
        mem[64] = mem[64] + 96
        mem[_898 len 96] = code.data[11038 len 96]
        _906 = mem[64]
        mem[64] = mem[64] + 96
        mem[_906 len 96] = code.data[11038 len 96]
        _909 = mem[64]
        mem[64] = mem[64] + 192
        mem[_909 len 192] = code.data[11038 len 192]
        _927 = mem[64]
        mem[64] = mem[64] + 256
        mem[_927 len 256] = code.data[11038 len 256]
        _961 = mem[64]
        mem[64] = mem[64] + 32
        mem[_961] = code.data[11038 len 32]
        _964 = mem[64]
        mem[64] = mem[64] + 96
        mem[_964 len 96] = code.data[11038 len 96]
        _967 = mem[64]
        mem[64] = mem[64] + 96
        mem[_967 len 96] = code.data[11038 len 96]
        _985 = mem[64]
        mem[64] = mem[64] + 96
        mem[_985 len 96] = code.data[11038 len 96]
        _986 = mem[64]
        mem[64] = mem[64] + 192
        mem[_986] = mem[_137 + 44 len 20]
        mem[_986 + 32] = mem[_137 + 140 len 20]
        mem[_986 + 64] = mem[_137 + 332 len 20]
        mem[_986 + 96] = mem[_137 + 428 len 20]
        mem[_986 + 128] = mem[_137 + 108 len 20]
        mem[_986 + 160] = mem[_137 + 268 len 20]
        _993 = mem[64]
        mem[64] = mem[64] + 256
        mem[_993] = mem[_137 + 384]
        mem[_993 + 32] = mem[_137 + 512]
        mem[_993 + 64] = mem[_137 + 64]
        mem[_993 + 96] = mem[_137 + 352]
        mem[_993 + 128] = mem[_137 + 288]
        mem[_993 + 160] = mem[_137 + 224]
        mem[_993 + 192] = mem[_137 + 160]
        mem[_993 + 224] = mem[_137 + 480]
        _1002 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1002] = mem[_137 + 448]
        _1004 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1004] = mem[mem[_137 + 544] + 31 len 1]
        mem[_1004 + 32] = mem[mem[_137 + 576] + 31 len 1]
        mem[_1004 + 64] = mem[mem[_137 + 608] + 31 len 1]
        _1011 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1011] = mem[mem[_137 + 544] + 32]
        mem[_1011 + 32] = mem[mem[_137 + 576] + 32]
        mem[_1011 + 64] = mem[mem[_137 + 608] + 32]
        _1018 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1018] = mem[mem[_137 + 544] + 64]
        mem[_1018 + 32] = mem[mem[_137 + 576] + 64]
        mem[_1018 + 64] = mem[mem[_137 + 608] + 64]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.0x79dd4b7 with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1046 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1051 = mem[_1046]
        mem[mem[64]] = 0xe6488fc900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        idx = 0
        s = _986
        t = mem[64] + 36
        while idx < 6:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 228 len 256] = mem[_993 len 256]
        mem[mem[64] + 484] = mem[_1002]
        idx = 0
        s = _1004
        t = mem[64] + 516
        while idx < 3:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 612 len 96] = mem[_1011 len 96]
        mem[mem[64] + 708 len 96] = mem[_1018 len 96]
        require ext_code.size(address(_1051))
        call address(_1051).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
             gas gas_remaining wei
            args address(this.address), mem[mem[64] + 36 len 768]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1410 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1412 = mem[_1410]
        require mem[_1410]
        require ext_code.size(contractRegistryAddress)
        call contractRegistryAddress.debtToken() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1418 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(mem[_1418 + 12 len 20])
        call mem[_1418 + 12 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args address(_765), _1412
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return _1412
    _872 = mem[_137 + 96]
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.tokenTransferProxy() with:
         gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _876 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = mem[_876 + 12 len 20]
    mem[mem[64] + 36] = _864 + _863
    require ext_code.size(address(_872))
    call address(_872).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], _864 + _863
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _968 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_968]
    _1058 = mem[64]
    mem[64] = mem[64] + 192
    mem[_1058 len 192] = code.data[11038 len 192]
    _1064 = mem[64]
    mem[64] = mem[64] + 256
    mem[_1064 len 256] = code.data[11038 len 256]
    _1065 = mem[64]
    mem[64] = mem[64] + 32
    mem[_1065] = code.data[11038 len 32]
    _1068 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1068 len 96] = code.data[11038 len 96]
    _1096 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1096 len 96] = code.data[11038 len 96]
    _1102 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1102 len 96] = code.data[11038 len 96]
    _1106 = mem[64]
    mem[64] = mem[64] + 192
    mem[_1106 len 192] = code.data[11038 len 192]
    _1136 = mem[64]
    mem[64] = mem[64] + 256
    mem[_1136 len 256] = code.data[11038 len 256]
    _1137 = mem[64]
    mem[64] = mem[64] + 32
    mem[_1137] = code.data[11038 len 32]
    _1150 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1150 len 96] = code.data[11038 len 96]
    _1151 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1151 len 96] = code.data[11038 len 96]
    _1152 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1152 len 96] = code.data[11038 len 96]
    _1153 = mem[64]
    mem[64] = mem[64] + 192
    mem[_1153] = mem[_137 + 44 len 20]
    mem[_1153 + 32] = mem[_137 + 140 len 20]
    mem[_1153 + 64] = mem[_137 + 332 len 20]
    mem[_1153 + 96] = mem[_137 + 428 len 20]
    mem[_1153 + 128] = mem[_137 + 108 len 20]
    mem[_1153 + 160] = mem[_137 + 268 len 20]
    _1160 = mem[64]
    mem[64] = mem[64] + 256
    mem[_1160] = mem[_137 + 384]
    mem[_1160 + 32] = mem[_137 + 512]
    mem[_1160 + 64] = mem[_137 + 64]
    mem[_1160 + 96] = mem[_137 + 352]
    mem[_1160 + 128] = mem[_137 + 288]
    mem[_1160 + 160] = mem[_137 + 224]
    mem[_1160 + 192] = mem[_137 + 160]
    mem[_1160 + 224] = mem[_137 + 480]
    _1169 = mem[64]
    mem[64] = mem[64] + 32
    mem[_1169] = mem[_137 + 448]
    _1171 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1171] = mem[mem[_137 + 544] + 31 len 1]
    mem[_1171 + 32] = mem[mem[_137 + 576] + 31 len 1]
    mem[_1171 + 64] = mem[mem[_137 + 608] + 31 len 1]
    _1178 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1178] = mem[mem[_137 + 544] + 32]
    mem[_1178 + 32] = mem[mem[_137 + 576] + 32]
    mem[_1178 + 64] = mem[mem[_137 + 608] + 32]
    _1185 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1185] = mem[mem[_137 + 544] + 64]
    mem[_1185 + 32] = mem[mem[_137 + 576] + 64]
    mem[_1185 + 64] = mem[mem[_137 + 608] + 64]
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.0x79dd4b7 with:
         gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1194 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1195 = mem[_1194]
    mem[mem[64]] = 0xe6488fc900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = this.address
    idx = 0
    s = _1153
    t = mem[64] + 36
    while idx < 6:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 228 len 256] = mem[_1160 len 256]
    mem[mem[64] + 484] = mem[_1169]
    idx = 0
    s = _1171
    t = mem[64] + 516
    while idx < 3:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 612 len 96] = mem[_1178 len 96]
    mem[mem[64] + 708 len 96] = mem[_1185 len 96]
    require ext_code.size(address(_1195))
    call address(_1195).fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7) with:
         gas gas_remaining wei
        args address(this.address), mem[mem[64] + 36 len 768]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1411 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1413 = mem[_1411]
    require mem[_1411]
    require ext_code.size(contractRegistryAddress)
    call contractRegistryAddress.debtToken() with:
         gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1419 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require ext_code.size(mem[_1419 + 12 len 20])
    call mem[_1419 + 12 len 20].0xa9059cbb with:
         gas gas_remaining wei
        args address(_765), _1413
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return _1413
}



}
