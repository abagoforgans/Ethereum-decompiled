contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 22936]




// =====================  Runtime code  =====================


#
#  - gumXZCZ()
#  - sub_0000006c(?)
#  - sub_00000094(?)
#  - sub_0000012e(?)
#  - sub_00000134(?)
#  - sub_00000151(?)
#
const sub_a3afda1a(?) = 0x14fbca95be7e99c15cc2996c6c9d841e54b79425

const sub_f0ca6b15(?) = 0x12459c951127e0c374ff9105dda097662a027093


mapping of uint8 stor0;
array of uint256 stor3735936685;

function sub_0361b39c(?) {
    return bool(stor0[arg1])
}

function deposit() payable {
  stop
}

function _fallback() payable {
  stop
}

function sub_23882c6c(?) {
    if msg.sender != 0x67d1f31eeef182cfb40c0719a8c0000fa7ddcaa9:
        require 0x6bc8f4b5ac7ea547fc6e5b1eb471e6ad94650e75 == msg.sender
    stor0[address(arg1)] = 1
}

function sub_4c7d37d6(?) {
    require stor0[address(msg.sender)]
    require ext_code.size(0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce3)
    call 0x00c0829421c1d260bd3cb3e0f06cfe2d52db2ce3.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function sub_84a9a3f3(?) {
    require stor0[address(msg.sender)]
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function unwrapWETH(uint256 arg1) {
    require stor0[address(msg.sender)]
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_b9047682(?) {
    require stor0[address(msg.sender)]
    require ext_code.size(0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce3)
    call 0x00c0829421c1d260bd3cb3e0f06cfe2d52db2ce3.withdrawTo(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), arg1
    require ext_call.success
}

function sub_9c99cd9b(?) {
    require stor0[address(msg.sender)]
    require ext_code.size(arg1)
    if arg2:
        call arg1.withdrawToken(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args address(arg2), arg3
    else:
        call arg1.0x2e1a7d4d with:
             gas gas_remaining - 710 wei
            args arg3
    require ext_call.success
}

function sub_6a1c7a92(?) {
    require stor0[address(msg.sender)]
    require ext_code.size(arg1)
    if arg2:
        call arg1.depositToken(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args address(arg2), arg3
    else:
        call arg1.0xd0e30db0 with:
           value arg3 wei
             gas gas_remaining - 9710 wei
    require ext_call.success
}

function sub_0e104e37(?) {
    require arg1 + 3735936685 >= 3735936685
    if not storDEAD[arg1]:
        s = storDEAD[arg1]
        idx = arg1 + 3735936684
        while idx >= 3735936685:
            if not stor[idx]:
                s = stor[idx]
                idx = idx - 1
                continue 
            return (idx - 3735936684)
    else:
        s = storDEAD[arg1]
        idx = arg1 + 3735936686
        while idx < 0x100000000000000000000000000000000:
            if stor[idx]:
                s = stor[idx]
                idx = idx + 1
                continue 
            return (idx - 3735936685)
    return 0
}

function withdraw(address arg1, uint256 arg2) {
    if msg.sender != 0x67d1f31eeef182cfb40c0719a8c0000fa7ddcaa9:
        require 0x6bc8f4b5ac7ea547fc6e5b1eb471e6ad94650e75 == msg.sender
    if not arg1:
        if arg2 >= eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            call msg.sender with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        if arg2 >= ext_call.return_data[0]:
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0]
        else:
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2
    require ext_call.success
}

function sub_372d94c5(?) {
    require arg2 > 0
    require arg1 + 3735936685 >= 3735936685
    if not storDEAD[arg1]:
        s = storDEAD[arg1]
        idx = arg1 + 3735936684
        while idx >= 3735936685:
            if not stor[idx]:
                s = stor[idx]
                idx = idx - 1
                continue 
            require arg2 > 0
            require arg2 > 0
            s = idx + 1
            while s < idx + arg2 + 1:
                stor[s] = 1
                s = s + 1
                continue 
            return (arg2 + idx - 3735936684)
    else:
        s = storDEAD[arg1]
        idx = arg1 + 3735936686
        while idx < 0x100000000000000000000000000000000:
            if stor[idx]:
                s = stor[idx]
                idx = idx + 1
                continue 
            require arg2 > 0
            require idx + arg2 > idx
            s = idx
            while s < idx + arg2:
                stor[s] = 1
                s = s + 1
                continue 
            return (arg2 + idx - 3735936685)
    require arg2 > 0
    require arg2 + 3735936685 > 3735936685
    idx = 3735936685
    while idx < arg2 + 3735936685:
        stor[idx] = 1
        idx = idx + 1
        continue 
    return arg2
}

function approveAll(address arg1) {
    require stor0[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819, 0x1000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_code.size(0x590000000000000000000000001f573d6fb3f13d689ff844b4ce37794d79a7ff)
    call ????????????????????????????????????????.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), 0x1000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 0x14fbca95be7e99c15cc2996c6c9d841e54b79425, 0x1000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_code.size(0x12459c951127e0c374ff9105dda097662a027093)
    call 0x12459c951127e0c374ff9105dda097662a027093.TOKEN_TRANSFER_PROXY_CONTRACT() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), 0x1000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
}

function sub_00000034(?) {
    require stor0[address(msg.sender)]
    require ext_code.size(0x12459c951127e0c374ff9105dda097662a027093)
    call 0x12459c951127e0c374ff9105dda097662a027093.getUnavailableTakerTokenAmount(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args sha3(1316630630127624387, Mask(160, 96, call.data[292]) >> 96, 0, 13847067169082572429, address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor Mask(160, 96, call.data[260]) >> 96), address(0xa258b39954cef5cb142fd567a46cddb31a670124 xor Mask(160, 96, call.data[388]) >> 96), call.data[292] << 160, call.data[260] << 160, Mask(96, 100, call.data[228]) << 60, call.data[388] << 160, Mask(60, 196, call.data[228]), call.data[420])
    require ext_call.success
    if call.data[280 len 12] - ext_call.return_data[0] < Mask(96, 4, call.data[228]) >> 4:
        if Mask(1, 6, arg1):
            idx = 1
            while idx <= 3:
                stor[uint16(arg1) + -idx + 3735936685] = 0
                idx = idx + 1
                continue 
            return 0
        else:
            return 0
    require ext_code.size(0x12459c951127e0c374ff9105dda097662a027093)
    call 0x12459c951127e0c374ff9105dda097662a027093.getUnavailableTakerTokenAmount(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args sha3(1316630630127624387, Mask(160, 96, call.data[68]) >> 96, 0, address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor Mask(160, 96, call.data[36]) >> 96), 13847067169082572429, address(0xa258b39954cef5cb142fd567a46cddb31a670124 xor Mask(160, 96, call.data[164]) >> 96), call.data[68] << 160, call.data[36] << 160, Mask(96, 100, call.data[4]) << 60, call.data[164] << 160, Mask(60, 196, call.data[4]), call.data[196])
    require ext_call.success
    if Mask(96, 0, call.data[36]) - ext_call.return_data[0] < Mask(96, 4, call.data[4]) >> 4:
        if Mask(1, 6, arg1):
            idx = 1
            while idx <= 3:
                stor[uint16(arg1) + -idx + 3735936685] = 0
                idx = idx + 1
                continue 
            return 0
        else:
            return 0
    if Mask(1, 1, arg1):
        require stor0[address(msg.sender)]
        require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
        call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0xd0e30db0 with:
           value Mask(96, 4, call.data[4]) >> 4 wei
             gas gas_remaining - 9710 wei
        require ext_call.success
    if Mask(1, 5, arg1):
        require block.gas_limit < 10 * 10^6
    require ext_code.size(0x12459c951127e0c374ff9105dda097662a027093)
    call 0x12459c951127e0c374ff9105dda097662a027093.fillOrder(address[5] arg1, uint256[6] arg2, uint256 arg3, bool arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
         gas gas_remaining - 710 wei
        args call.data[68 len 20], 0, address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor call.data[36 len 20]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(0xa258b39954cef5cb142fd567a46cddb31a670124 xor call.data[164 len 20]) >> 1024, call.data[196] >> 1280, Mask(96, 4, call.data[4]) << 156, 1, bool(call.data[4]) + 27 << 248, call.data[100], call.data[132]
    require ext_call.success
    require ext_call.return_data[0] >= Mask(96, 4, call.data[4]) >> 4
    require call.data[56 len 12]
    require Mask(96, 4, call.data[4]) >> 4 * call.data[88 len 12] / call.data[56 len 12] > 0
    if Mask(1, 3, arg1):
        require ext_code.size(address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor Mask(160, 96, call.data[260]) >> 96))
        call address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor Mask(160, 96, call.data[260]) >> 96).approve(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args 0x8da0d80f5007ef1e431dd2127178d224e32c2ef4, Mask(96, 4, call.data[228]) >> 4
        require ext_call.success
    require ext_code.size(0x12459c951127e0c374ff9105dda097662a027093)
    call 0x12459c951127e0c374ff9105dda097662a027093.fillOrder(address[5] arg1, uint256[6] arg2, uint256 arg3, bool arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
         gas gas_remaining - 710 wei
        args address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor call.data[260 len 20]), address(0xa258b39954cef5cb142fd567a46cddb31a670124 xor call.data[388 len 20]) >> 1024, call.data[420] >> 1280, Mask(96, 4, call.data[228]) << 156, 1, bool(call.data[228]) + 27 << 248, call.data[324], call.data[356]
    require ext_call.success
    if ext_call.return_data[0] < Mask(96, 4, call.data[228]) >> 4:
        require 0 > Mask(96, 4, call.data[4]) >> 4
        if Mask(1, 2, arg1):
            require stor0[address(msg.sender)]
            require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
            call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0x2e1a7d4d with:
                 gas gas_remaining - 710 wei
                args 0
            require ext_call.success
        if Mask(1, 6, arg1):
            idx = 1
            while idx <= uint8(arg1):
                stor[uint16(arg1) + -idx + 3735936685] = 0
                idx = idx + 1
                continue 
        return -(Mask(96, 4, call.data[4]) >> 4)
    require call.data[280 len 12]
    require Mask(96, 4, call.data[228]) >> 4 * call.data[312 len 12] / call.data[280 len 12] > Mask(96, 4, call.data[4]) >> 4
    if not Mask(1, 2, arg1):
        if Mask(1, 6, arg1):
            idx = 1
            while idx <= uint8(arg1):
                stor[uint16(arg1) + -idx + 3735936685] = 0
                idx = idx + 1
                continue 
        return ((Mask(96, 4, call.data[228]) >> 4 * call.data[312 len 12] / call.data[280 len 12]) - (Mask(96, 4, call.data[4]) >> 4))
    require stor0[address(msg.sender)]
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args (Mask(96, 4, call.data[228]) >> 4 * Mask(96, 0, call.data[292]) / Mask(96, 0, call.data[260]))
    require ext_call.success
    if Mask(1, 6, arg1):
        idx = 1
        while idx <= uint8(arg1):
            stor[uint16(arg1) + -idx + 3735936685] = 0
            idx = idx + 1
            continue 
    return ((Mask(96, 4, call.data[228]) >> 4 * Mask(96, 0, call.data[292]) / Mask(96, 0, call.data[260])) - (Mask(96, 4, call.data[4]) >> 4))
}

function jMMeC(bytes arg1) {
    require stor0[address(msg.sender)]
    require ext_code.size(0x14fbca95be7e99c15cc2996c6c9d841e54b79425)
    call 0x14fbca95be7e99c15cc2996c6c9d841e54b79425.getOffer(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args (uint128(cd[228]) + 31337)
    require ext_call.success
    if uint128(cd[228]):
        if ext_call.return_data[0] < uint128(cd[228]):
            if Mask(1, 6, cd[260]):
                idx = 1
                while idx <= 2:
                    stor[uint16(cd[260]) + -idx + 3735936685] = 0
                    idx = idx + 1
                    continue 
                return 0
            else:
                return 0
        if Mask(1, 5, cd[260]):
            require block.gas_limit < 10 * 10^6
        require ext_code.size(0x12459c951127e0c374ff9105dda097662a027093)
        if bool(cd[260]):
            call 0x12459c951127e0c374ff9105dda097662a027093.getUnavailableTakerTokenAmount(bytes32 arg1) with:
                 gas gas_remaining - 710 wei
                args sha3(1316630630127624387, Mask(160, 96, call.data[68]) >> 96, 0, 13847067169082572429, address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor Mask(160, 96, call.data[36]) >> 96), address(0xa258b39954cef5cb142fd567a46cddb31a670124 xor Mask(160, 96, call.data[164]) >> 96), call.data[68] << 160, call.data[36] << 160, Mask(96, 100, call.data[4]) << 60, call.data[164] << 160, Mask(60, 196, call.data[4]), call.data[196])
        else:
            if not bool(cd[260]):
                call 0x12459c951127e0c374ff9105dda097662a027093.getUnavailableTakerTokenAmount(bytes32 arg1) with:
                     gas gas_remaining - 710 wei
                    args sha3(1316630630127624387, Mask(160, 96, call.data[68]) >> 96, 0, address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor Mask(160, 96, call.data[36]) >> 96), 13847067169082572429, address(0xa258b39954cef5cb142fd567a46cddb31a670124 xor Mask(160, 96, call.data[164]) >> 96), call.data[68] << 160, call.data[36] << 160, Mask(96, 100, call.data[4]) << 60, call.data[164] << 160, Mask(60, 196, call.data[4]), call.data[196])
            else:
                call 0x12459c951127e0c374ff9105dda097662a027093.getUnavailableTakerTokenAmount(bytes32 arg1) with:
                     gas gas_remaining - 710 wei
                    args sha3(1316630630127624387, Mask(160, 96, call.data[68]) >> 96, 0, address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor Mask(160, 96, call.data[36]) >> 96), address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor Mask(160, 96, call.data[36]) >> 96), address(0xa258b39954cef5cb142fd567a46cddb31a670124 xor Mask(160, 96, call.data[164]) >> 96), call.data[68] << 160, call.data[36] << 160, Mask(96, 100, call.data[4]) << 60, call.data[164] << 160, Mask(60, 196, call.data[4]), call.data[196])
        require ext_call.success
        if call.data[56 len 12] - ext_call.return_data[0] < Mask(96, 4, call.data[4]) >> 4:
            if Mask(1, 6, cd[260]):
                idx = 1
                while idx <= 2:
                    stor[uint16(cd[260]) + -idx + 3735936685] = 0
                    idx = idx + 1
                    continue 
                return 0
            else:
                return 0
        if bool(cd[260]):
            if Mask(1, 1, cd[260]):
                require stor0[address(msg.sender)]
                require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0xd0e30db0 with:
                   value uint128(cd[228]) wei
                     gas gas_remaining - 9710 wei
                require ext_call.success
            require ext_code.size(0x14fbca95be7e99c15cc2996c6c9d841e54b79425)
            call 0x14fbca95be7e99c15cc2996c6c9d841e54b79425.buy(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args uint128(cd[228]) + 31337, uint128(cd[228])
            require ext_call.success
            require ext_call.return_data[0]
            if Mask(1, 3, cd[260]):
                require ext_code.size(address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor Mask(160, 96, call.data[36]) >> 96))
                call address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor Mask(160, 96, call.data[36]) >> 96).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args 0x8da0d80f5007ef1e431dd2127178d224e32c2ef4, Mask(96, 4, call.data[4]) >> 4
                require ext_call.success
            require ext_code.size(0x12459c951127e0c374ff9105dda097662a027093)
            call 0x12459c951127e0c374ff9105dda097662a027093.fillOrder(address[5] arg1, uint256[6] arg2, uint256 arg3, bool arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                 gas gas_remaining - 710 wei
                args address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor call.data[36 len 20]), address(0xa258b39954cef5cb142fd567a46cddb31a670124 xor call.data[164 len 20]) >> 1024, call.data[196] >> 1280, Mask(96, 4, call.data[4]) << 156, 1, bool(call.data[4]) + 27 << 248, call.data[100], call.data[132]
            require ext_call.success
            if ext_call.return_data[0] < Mask(96, 4, call.data[4]) >> 4:
                require 0 > uint128(cd[228])
                if Mask(1, 2, cd[260]):
                    require stor0[address(msg.sender)]
                    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0x2e1a7d4d with:
                         gas gas_remaining - 710 wei
                        args 0
                    require ext_call.success
                if Mask(1, 6, cd[260]):
                    idx = 1
                    while idx <= uint8(cd[260]):
                        stor[uint16(cd[260]) + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                return -uint128(cd[228])
            require call.data[56 len 12]
            require Mask(96, 4, call.data[4]) >> 4 * call.data[88 len 12] / call.data[56 len 12] > uint128(cd[228])
            if not Mask(1, 2, cd[260]):
                if Mask(1, 6, cd[260]):
                    idx = 1
                    while idx <= uint8(cd[260]):
                        stor[uint16(cd[260]) + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                return ((Mask(96, 4, call.data[4]) >> 4 * call.data[88 len 12] / call.data[56 len 12]) - uint128(cd[228]))
            require stor0[address(msg.sender)]
            require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
            call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0x2e1a7d4d with:
                 gas gas_remaining - 710 wei
                args (Mask(96, 4, call.data[4]) >> 4 * Mask(96, 0, call.data[68]) / Mask(96, 0, call.data[36]))
            require ext_call.success
            if Mask(1, 6, cd[260]):
                idx = 1
                while idx <= uint8(cd[260]):
                    stor[uint16(cd[260]) + -idx + 3735936685] = 0
                    idx = idx + 1
                    continue 
            return ((Mask(96, 4, call.data[4]) >> 4 * Mask(96, 0, call.data[68]) / Mask(96, 0, call.data[36])) - uint128(cd[228]))
        if Mask(1, 1, cd[260]):
            require stor0[address(msg.sender)]
            require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
            call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0xd0e30db0 with:
               value Mask(96, 4, call.data[4]) >> 4 wei
                 gas gas_remaining - 9710 wei
            require ext_call.success
        require ext_code.size(0x12459c951127e0c374ff9105dda097662a027093)
        call 0x12459c951127e0c374ff9105dda097662a027093.fillOrder(address[5] arg1, uint256[6] arg2, uint256 arg3, bool arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
             gas gas_remaining - 710 wei
            args call.data[68 len 20], 0, address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor call.data[36 len 20]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(0xa258b39954cef5cb142fd567a46cddb31a670124 xor call.data[164 len 20]) >> 1024, call.data[196] >> 1280, Mask(96, 4, call.data[4]) << 156, 1, bool(call.data[4]) + 27 << 248, call.data[100], call.data[132]
        require ext_call.success
        require ext_call.return_data[0] >= Mask(96, 4, call.data[4]) >> 4
        require call.data[56 len 12]
        require Mask(96, 4, call.data[4]) >> 4 * call.data[88 len 12] / call.data[56 len 12] > 0
        if Mask(1, 3, cd[260]):
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args 0x14fbca95be7e99c15cc2996c6c9d841e54b79425, uint128(cd[228])
            require ext_call.success
        require ext_code.size(0x14fbca95be7e99c15cc2996c6c9d841e54b79425)
        call 0x14fbca95be7e99c15cc2996c6c9d841e54b79425.buy(uint256 arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args uint128(cd[228]) + 31337, uint128(cd[228])
        require ext_call.success
        require ext_call.return_data[0]
        require ext_call.return_data[0]
        require uint128(cd[228]) * ext_call.return_data[64] / ext_call.return_data[0] > Mask(96, 4, call.data[4]) >> 4
        if Mask(1, 2, cd[260]):
            require stor0[address(msg.sender)]
            require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
            call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0x2e1a7d4d with:
                 gas gas_remaining - 710 wei
                args (uint128(cd[228]) * ext_call.return_data[64] / ext_call.return_data[0])
            require ext_call.success
        if Mask(1, 6, cd[260]):
            idx = 1
            while idx <= uint8(cd[260]):
                stor[uint16(cd[260]) + -idx + 3735936685] = 0
                idx = idx + 1
                continue 
        return ((uint128(cd[228]) * ext_call.return_data[64] / ext_call.return_data[0]) - (Mask(96, 4, call.data[4]) >> 4))
    if ext_call.return_data[0] < ext_call.return_data[0]:
        if Mask(1, 6, cd[260]):
            idx = 1
            while idx <= 2:
                stor[uint16(cd[260]) + -idx + 3735936685] = 0
                idx = idx + 1
                continue 
            return 0
        else:
            return 0
    if Mask(1, 5, cd[260]):
        require block.gas_limit < 10 * 10^6
    require ext_code.size(0x12459c951127e0c374ff9105dda097662a027093)
    if bool(cd[260]):
        call 0x12459c951127e0c374ff9105dda097662a027093.getUnavailableTakerTokenAmount(bytes32 arg1) with:
             gas gas_remaining - 710 wei
            args sha3(1316630630127624387, Mask(160, 96, call.data[68]) >> 96, 0, 13847067169082572429, address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor Mask(160, 96, call.data[36]) >> 96), address(0xa258b39954cef5cb142fd567a46cddb31a670124 xor Mask(160, 96, call.data[164]) >> 96), call.data[68] << 160, call.data[36] << 160, Mask(96, 100, call.data[4]) << 60, call.data[164] << 160, Mask(60, 196, call.data[4]), call.data[196])
    else:
        if not bool(cd[260]):
            call 0x12459c951127e0c374ff9105dda097662a027093.getUnavailableTakerTokenAmount(bytes32 arg1) with:
                 gas gas_remaining - 710 wei
                args sha3(1316630630127624387, Mask(160, 96, call.data[68]) >> 96, 0, address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor Mask(160, 96, call.data[36]) >> 96), 13847067169082572429, address(0xa258b39954cef5cb142fd567a46cddb31a670124 xor Mask(160, 96, call.data[164]) >> 96), call.data[68] << 160, call.data[36] << 160, Mask(96, 100, call.data[4]) << 60, call.data[164] << 160, Mask(60, 196, call.data[4]), call.data[196])
        else:
            call 0x12459c951127e0c374ff9105dda097662a027093.getUnavailableTakerTokenAmount(bytes32 arg1) with:
                 gas gas_remaining - 710 wei
                args sha3(1316630630127624387, Mask(160, 96, call.data[68]) >> 96, 0, address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor Mask(160, 96, call.data[36]) >> 96), address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor Mask(160, 96, call.data[36]) >> 96), address(0xa258b39954cef5cb142fd567a46cddb31a670124 xor Mask(160, 96, call.data[164]) >> 96), call.data[68] << 160, call.data[36] << 160, Mask(96, 100, call.data[4]) << 60, call.data[164] << 160, Mask(60, 196, call.data[4]), call.data[196])
    require ext_call.success
    if call.data[56 len 12] - ext_call.return_data[0] < Mask(96, 4, call.data[4]) >> 4:
        if Mask(1, 6, cd[260]):
            idx = 1
            while idx <= 2:
                stor[uint16(cd[260]) + -idx + 3735936685] = 0
                idx = idx + 1
                continue 
            return 0
        else:
            return 0
    if bool(cd[260]):
        if Mask(1, 1, cd[260]):
            require stor0[address(msg.sender)]
            require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
            call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0xd0e30db0 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 9710 wei
            require ext_call.success
        require ext_code.size(0x14fbca95be7e99c15cc2996c6c9d841e54b79425)
        call 0x14fbca95be7e99c15cc2996c6c9d841e54b79425.buy(uint256 arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args uint128(cd[228]) + 31337, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        if Mask(1, 3, cd[260]):
            require ext_code.size(address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor Mask(160, 96, call.data[36]) >> 96))
            call address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor Mask(160, 96, call.data[36]) >> 96).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args 0x8da0d80f5007ef1e431dd2127178d224e32c2ef4, Mask(96, 4, call.data[4]) >> 4
            require ext_call.success
        require ext_code.size(0x12459c951127e0c374ff9105dda097662a027093)
        call 0x12459c951127e0c374ff9105dda097662a027093.fillOrder(address[5] arg1, uint256[6] arg2, uint256 arg3, bool arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
             gas gas_remaining - 710 wei
            args address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor call.data[36 len 20]), address(0xa258b39954cef5cb142fd567a46cddb31a670124 xor call.data[164 len 20]) >> 1024, call.data[196] >> 1280, Mask(96, 4, call.data[4]) << 156, 1, bool(call.data[4]) + 27 << 248, call.data[100], call.data[132]
        require ext_call.success
        if ext_call.return_data[0] < Mask(96, 4, call.data[4]) >> 4:
            require 0 > ext_call.return_data[0]
            if Mask(1, 2, cd[260]):
                require stor0[address(msg.sender)]
                require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
                call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0x2e1a7d4d with:
                     gas gas_remaining - 710 wei
                    args 0
                require ext_call.success
            if Mask(1, 6, cd[260]):
                idx = 1
                while idx <= uint8(cd[260]):
                    stor[uint16(cd[260]) + -idx + 3735936685] = 0
                    idx = idx + 1
                    continue 
            return -ext_call.return_data[0]
        require call.data[56 len 12]
        require Mask(96, 4, call.data[4]) >> 4 * call.data[88 len 12] / call.data[56 len 12] > ext_call.return_data[0]
        if not Mask(1, 2, cd[260]):
            if Mask(1, 6, cd[260]):
                idx = 1
                while idx <= uint8(cd[260]):
                    stor[uint16(cd[260]) + -idx + 3735936685] = 0
                    idx = idx + 1
                    continue 
            return ((Mask(96, 4, call.data[4]) >> 4 * call.data[88 len 12] / call.data[56 len 12]) - ext_call.return_data[0])
        require stor0[address(msg.sender)]
        require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
        call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0x2e1a7d4d with:
             gas gas_remaining - 710 wei
            args (Mask(96, 4, call.data[4]) >> 4 * Mask(96, 0, call.data[68]) / Mask(96, 0, call.data[36]))
        require ext_call.success
        if Mask(1, 6, cd[260]):
            idx = 1
            while idx <= uint8(cd[260]):
                stor[uint16(cd[260]) + -idx + 3735936685] = 0
                idx = idx + 1
                continue 
        return ((Mask(96, 4, call.data[4]) >> 4 * Mask(96, 0, call.data[68]) / Mask(96, 0, call.data[36])) - ext_call.return_data[0])
    if Mask(1, 1, cd[260]):
        require stor0[address(msg.sender)]
        require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
        call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0xd0e30db0 with:
           value Mask(96, 4, call.data[4]) >> 4 wei
             gas gas_remaining - 9710 wei
        require ext_call.success
    require ext_code.size(0x12459c951127e0c374ff9105dda097662a027093)
    call 0x12459c951127e0c374ff9105dda097662a027093.fillOrder(address[5] arg1, uint256[6] arg2, uint256 arg3, bool arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
         gas gas_remaining - 710 wei
        args call.data[68 len 20], 0, address(0x7400000000000000000000000089d24a6b4ccb1b6faa2625fe562bdd9a232603 xor call.data[36 len 20]), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, address(0xa258b39954cef5cb142fd567a46cddb31a670124 xor call.data[164 len 20]) >> 1024, call.data[196] >> 1280, Mask(96, 4, call.data[4]) << 156, 1, bool(call.data[4]) + 27 << 248, call.data[100], call.data[132]
    require ext_call.success
    require ext_call.return_data[0] >= Mask(96, 4, call.data[4]) >> 4
    require call.data[56 len 12]
    require Mask(96, 4, call.data[4]) >> 4 * call.data[88 len 12] / call.data[56 len 12] > 0
    if Mask(1, 3, cd[260]):
        require ext_code.size(address(ext_call.return_data[32]))
        call address(ext_call.return_data[32]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args 0x14fbca95be7e99c15cc2996c6c9d841e54b79425, ext_call.return_data[0]
        require ext_call.success
    require ext_code.size(0x14fbca95be7e99c15cc2996c6c9d841e54b79425)
    call 0x14fbca95be7e99c15cc2996c6c9d841e54b79425.buy(uint256 arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args uint128(cd[228]) + 31337, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    require ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[0] > Mask(96, 4, call.data[4]) >> 4
    if Mask(1, 2, cd[260]):
        require stor0[address(msg.sender)]
        require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
        call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0x2e1a7d4d with:
             gas gas_remaining - 710 wei
            args (ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[0])
        require ext_call.success
    if Mask(1, 6, cd[260]):
        idx = 1
        while idx <= uint8(cd[260]):
            stor[uint16(cd[260]) + -idx + 3735936685] = 0
            idx = idx + 1
            continue 
    return ((ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[0]) - (Mask(96, 4, call.data[4]) >> 4))
}

function sub_000000aa(?) {
    require stor0[address(msg.sender)]
    if not Mask(4, 232, arg1):
        if not bool(arg1):
            hash = sha256hash(10165364982246593652, 0, Mask(96, 160, call.data[68]), address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) >> 104) 
            require sha256hash.result
            require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address arg1, bytes32 arg2) with:
                 gas gas_remaining - 710 wei
                args address(call.data[68]), hash
            require ext_call.success
            if not call.data[68 len 12] - ext_call.return_data[0]:
                if Mask(1, 6, arg1):
                    idx = 1
                    while idx <= 2:
                        stor[uint16(arg1) + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    return 0
                else:
                    return 0
            if not Mask(96, 160, call.data[132]):
                if Mask(1, 1, arg1):
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
                       value (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18) wei
                         gas gas_remaining - 9710 wei
                    require ext_call.success
                if Mask(1, 5, arg1):
                    require block.gas_limit < 10 * 10^6
                call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas 100000 wei
                    args 0, 0, 0, 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240), Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240))
                require ext_call.success
                require Mask(96, 160, call.data[68]) >> 160
                require Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                if not Mask(1, 2, arg1):
                    if Mask(1, 6, arg1):
                        idx = 1
                        while idx <= arg1:
                            stor[uint16(arg1) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                    return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * call.data[119 len 12] / call.data[68 len 12])
                require stor0[address(msg.sender)]
                require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)):
                    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.withdrawToken(address arg1, uint256 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)), Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                else:
                    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                         gas gas_remaining - 710 wei
                        args (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                require ext_call.success
                if Mask(1, 6, arg1):
                    idx = 1
                    while idx <= arg1:
                        stor[uint16(arg1) + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
            if call.data[68 len 12] - ext_call.return_data[0] < call.data[132 len 12]:
                if Mask(1, 6, arg1):
                    idx = 1
                    while idx <= 2:
                        stor[uint16(arg1) + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    return 0
                else:
                    return 0
            if Mask(1, 1, arg1):
                require stor0[address(msg.sender)]
                require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
                   value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                     gas gas_remaining - 9710 wei
                require ext_call.success
            if Mask(1, 5, arg1):
                require block.gas_limit < 10 * 10^6
            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas 100000 wei
                args 0, 0, 0, 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132])
            require ext_call.success
            require Mask(96, 160, call.data[68]) >> 160
            require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
            if not Mask(1, 2, arg1):
                if Mask(1, 6, arg1):
                    idx = 1
                    while idx <= arg1:
                        stor[uint16(arg1) + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                return (call.data[132 len 12] * call.data[119 len 12] / call.data[68 len 12])
            require stor0[address(msg.sender)]
            require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
            if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.withdrawToken(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
            else:
                call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                     gas gas_remaining - 710 wei
                    args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
        else:
            hash = sha256hash(10165364982246593652, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[68]), 0, Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) >> 104) 
            require sha256hash.result
            require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address arg1, bytes32 arg2) with:
                 gas gas_remaining - 710 wei
                args address(call.data[68]), hash
            require ext_call.success
            if not call.data[68 len 12] - ext_call.return_data[0]:
                if Mask(1, 6, arg1):
                    idx = 1
                    while idx <= 2:
                        stor[uint16(arg1) + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    return 0
                else:
                    return 0
            if not Mask(96, 160, call.data[132]):
                if Mask(1, 1, arg1):
                    if Mask(1, 3, arg1):
                        require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)))
                        call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining - 710 wei
                            args 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819, (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18)
                        require ext_call.success
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                    if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)):
                        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.depositToken(address arg1, uint256 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)), (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18)
                    else:
                        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
                           value (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18) wei
                             gas gas_remaining - 9710 wei
                    require ext_call.success
                if Mask(1, 5, arg1):
                    require block.gas_limit < 10 * 10^6
                call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas 100000 wei
                    args 0, 0, 0, 0, Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240))
                require ext_call.success
                require Mask(96, 160, call.data[68]) >> 160
                require Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                if not Mask(1, 2, arg1):
                    if Mask(1, 6, arg1):
                        idx = 1
                        while idx <= arg1:
                            stor[uint16(arg1) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                    return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * call.data[119 len 12] / call.data[68 len 12])
                require stor0[address(msg.sender)]
                require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                     gas gas_remaining - 710 wei
                    args (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                require ext_call.success
                if Mask(1, 6, arg1):
                    idx = 1
                    while idx <= arg1:
                        stor[uint16(arg1) + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
            if call.data[68 len 12] - ext_call.return_data[0] < call.data[132 len 12]:
                if Mask(1, 6, arg1):
                    idx = 1
                    while idx <= 2:
                        stor[uint16(arg1) + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    return 0
                else:
                    return 0
            if Mask(1, 1, arg1):
                if Mask(1, 3, arg1):
                    require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]))
                    call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining - 710 wei
                        args 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819, (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                    require ext_call.success
                require stor0[address(msg.sender)]
                require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.depositToken(address arg1, uint256 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                else:
                    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
                       value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                         gas gas_remaining - 9710 wei
                require ext_call.success
            if Mask(1, 5, arg1):
                require block.gas_limit < 10 * 10^6
            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas 100000 wei
                args 0, 0, 0, 0, Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132])
            require ext_call.success
            require Mask(96, 160, call.data[68]) >> 160
            require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
            if not Mask(1, 2, arg1):
                if Mask(1, 6, arg1):
                    idx = 1
                    while idx <= arg1:
                        stor[uint16(arg1) + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                return (call.data[132 len 12] * call.data[119 len 12] / call.data[68 len 12])
            require stor0[address(msg.sender)]
            require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                 gas gas_remaining - 710 wei
                args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
    else:
        if 1 == Mask(4, 232, arg1) >> 232:
            if not bool(arg1):
                hash = sha256hash(5572632160975436519, 0, Mask(96, 160, call.data[68]), address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) >> 104) 
                require sha256hash.result
                require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.orderFills(address arg1, bytes32 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(call.data[68]), hash
                require ext_call.success
                if not call.data[68 len 12] - ext_call.return_data[0]:
                    if Mask(1, 6, arg1):
                        idx = 1
                        while idx <= 2:
                            stor[uint16(arg1) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        return 0
                    else:
                        return 0
                if not Mask(96, 160, call.data[132]):
                    if Mask(1, 1, arg1):
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                        call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0xd0e30db0 with:
                           value (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18) wei
                             gas gas_remaining - 9710 wei
                        require ext_call.success
                    if Mask(1, 5, arg1):
                        require block.gas_limit < 10 * 10^6
                    call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas 100000 wei
                        args 0, 0, 0, 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240), Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240))
                    require ext_call.success
                    require Mask(96, 160, call.data[68]) >> 160
                    require Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                    if not Mask(1, 2, arg1):
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= arg1:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                        return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * call.data[119 len 12] / call.data[68 len 12])
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                    if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)):
                        call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.withdrawToken(address arg1, uint256 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)), Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                    else:
                        call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                             gas gas_remaining - 710 wei
                            args (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                    require ext_call.success
                    if Mask(1, 6, arg1):
                        idx = 1
                        while idx <= arg1:
                            stor[uint16(arg1) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                    return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                if call.data[68 len 12] - ext_call.return_data[0] < call.data[132 len 12]:
                    if Mask(1, 6, arg1):
                        idx = 1
                        while idx <= 2:
                            stor[uint16(arg1) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        return 0
                    else:
                        return 0
                if Mask(1, 1, arg1):
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                    call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0xd0e30db0 with:
                       value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                         gas gas_remaining - 9710 wei
                    require ext_call.success
                if Mask(1, 5, arg1):
                    require block.gas_limit < 10 * 10^6
                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas 100000 wei
                    args 0, 0, 0, 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132])
                require ext_call.success
                require Mask(96, 160, call.data[68]) >> 160
                require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                if not Mask(1, 2, arg1):
                    if Mask(1, 6, arg1):
                        idx = 1
                        while idx <= arg1:
                            stor[uint16(arg1) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                    return (call.data[132 len 12] * call.data[119 len 12] / call.data[68 len 12])
                require stor0[address(msg.sender)]
                require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                    call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.withdrawToken(address arg1, uint256 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                else:
                    call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                         gas gas_remaining - 710 wei
                        args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
            else:
                hash = sha256hash(5572632160975436519, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[68]), 0, Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) >> 104) 
                require sha256hash.result
                require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.orderFills(address arg1, bytes32 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(call.data[68]), hash
                require ext_call.success
                if not call.data[68 len 12] - ext_call.return_data[0]:
                    if Mask(1, 6, arg1):
                        idx = 1
                        while idx <= 2:
                            stor[uint16(arg1) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        return 0
                    else:
                        return 0
                if not Mask(96, 160, call.data[132]):
                    if Mask(1, 1, arg1):
                        if Mask(1, 3, arg1):
                            require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)))
                            call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b, (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18)
                            require ext_call.success
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                        if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)):
                            call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.depositToken(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)), (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18)
                        else:
                            call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0xd0e30db0 with:
                               value (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18) wei
                                 gas gas_remaining - 9710 wei
                        require ext_call.success
                    if Mask(1, 5, arg1):
                        require block.gas_limit < 10 * 10^6
                    call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas 100000 wei
                        args 0, 0, 0, 0, Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240))
                    require ext_call.success
                    require Mask(96, 160, call.data[68]) >> 160
                    require Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                    if not Mask(1, 2, arg1):
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= arg1:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                        return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * call.data[119 len 12] / call.data[68 len 12])
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                    call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                         gas gas_remaining - 710 wei
                        args (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                    require ext_call.success
                    if Mask(1, 6, arg1):
                        idx = 1
                        while idx <= arg1:
                            stor[uint16(arg1) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                    return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                if call.data[68 len 12] - ext_call.return_data[0] < call.data[132 len 12]:
                    if Mask(1, 6, arg1):
                        idx = 1
                        while idx <= 2:
                            stor[uint16(arg1) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        return 0
                    else:
                        return 0
                if Mask(1, 1, arg1):
                    if Mask(1, 3, arg1):
                        require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]))
                        call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining - 710 wei
                            args 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b, (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                        require ext_call.success
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                    if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                        call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.depositToken(address arg1, uint256 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                    else:
                        call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0xd0e30db0 with:
                           value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                             gas gas_remaining - 9710 wei
                    require ext_call.success
                if Mask(1, 5, arg1):
                    require block.gas_limit < 10 * 10^6
                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas 100000 wei
                    args 0, 0, 0, 0, Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132])
                require ext_call.success
                require Mask(96, 160, call.data[68]) >> 160
                require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                if not Mask(1, 2, arg1):
                    if Mask(1, 6, arg1):
                        idx = 1
                        while idx <= arg1:
                            stor[uint16(arg1) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                    return (call.data[132 len 12] * call.data[119 len 12] / call.data[68 len 12])
                require stor0[address(msg.sender)]
                require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                     gas gas_remaining - 710 wei
                    args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
        else:
            if 2 == Mask(4, 232, arg1) >> 232:
                if not bool(arg1):
                    hash = sha256hash(11109560297177712838, 0, Mask(96, 160, call.data[68]), address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) >> 104) 
                    require sha256hash.result
                    require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.orderFills(address arg1, bytes32 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(call.data[68]), hash
                    require ext_call.success
                    if not call.data[68 len 12] - ext_call.return_data[0]:
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= 2:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                            return 0
                        else:
                            return 0
                    if not Mask(96, 160, call.data[132]):
                        if Mask(1, 1, arg1):
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                            call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0xd0e30db0 with:
                               value (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18) wei
                                 gas gas_remaining - 9710 wei
                            require ext_call.success
                        if Mask(1, 5, arg1):
                            require block.gas_limit < 10 * 10^6
                        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0, 0, 0, 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240), Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240))
                        require ext_call.success
                        require Mask(96, 160, call.data[68]) >> 160
                        require Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                        if not Mask(1, 2, arg1):
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * call.data[119 len 12] / call.data[68 len 12])
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                        if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)):
                            call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.withdrawToken(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)), Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                        else:
                            call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                        require ext_call.success
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= arg1:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                        return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                    if call.data[68 len 12] - ext_call.return_data[0] < call.data[132 len 12]:
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= 2:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                            return 0
                        else:
                            return 0
                    if Mask(1, 1, arg1):
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0xd0e30db0 with:
                           value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                             gas gas_remaining - 9710 wei
                        require ext_call.success
                    if Mask(1, 5, arg1):
                        require block.gas_limit < 10 * 10^6
                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas 100000 wei
                        args 0, 0, 0, 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132])
                    require ext_call.success
                    require Mask(96, 160, call.data[68]) >> 160
                    require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                    if not Mask(1, 2, arg1):
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= arg1:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                        return (call.data[132 len 12] * call.data[119 len 12] / call.data[68 len 12])
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                    if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.withdrawToken(address arg1, uint256 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                    else:
                        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                             gas gas_remaining - 710 wei
                            args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                else:
                    hash = sha256hash(11109560297177712838, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[68]), 0, Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) >> 104) 
                    require sha256hash.result
                    require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.orderFills(address arg1, bytes32 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(call.data[68]), hash
                    require ext_call.success
                    if not call.data[68 len 12] - ext_call.return_data[0]:
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= 2:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                            return 0
                        else:
                            return 0
                    if not Mask(96, 160, call.data[132]):
                        if Mask(1, 1, arg1):
                            if Mask(1, 3, arg1):
                                require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)))
                                call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args 0x9a2d163ab40f88c625fd475e807bbc3556566f80, (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18)
                                require ext_call.success
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                            if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)):
                                call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.depositToken(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)), (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18)
                            else:
                                call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0xd0e30db0 with:
                                   value (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18) wei
                                     gas gas_remaining - 9710 wei
                            require ext_call.success
                        if Mask(1, 5, arg1):
                            require block.gas_limit < 10 * 10^6
                        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0, 0, 0, 0, Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240))
                        require ext_call.success
                        require Mask(96, 160, call.data[68]) >> 160
                        require Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                        if not Mask(1, 2, arg1):
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * call.data[119 len 12] / call.data[68 len 12])
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                             gas gas_remaining - 710 wei
                            args (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                        require ext_call.success
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= arg1:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                        return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                    if call.data[68 len 12] - ext_call.return_data[0] < call.data[132 len 12]:
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= 2:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                            return 0
                        else:
                            return 0
                    if Mask(1, 1, arg1):
                        if Mask(1, 3, arg1):
                            require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]))
                            call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args 0x9a2d163ab40f88c625fd475e807bbc3556566f80, (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                            require ext_call.success
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                        if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                            call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.depositToken(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                        else:
                            call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0xd0e30db0 with:
                               value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                 gas gas_remaining - 9710 wei
                        require ext_call.success
                    if Mask(1, 5, arg1):
                        require block.gas_limit < 10 * 10^6
                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas 100000 wei
                        args 0, 0, 0, 0, Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132])
                    require ext_call.success
                    require Mask(96, 160, call.data[68]) >> 160
                    require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                    if not Mask(1, 2, arg1):
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= arg1:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                        return (call.data[132 len 12] * call.data[119 len 12] / call.data[68 len 12])
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                         gas gas_remaining - 710 wei
                        args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
            else:
                if 3 == Mask(4, 232, arg1) >> 232:
                    if not bool(arg1):
                        hash = sha256hash(2082825034140337647, 0, Mask(96, 160, call.data[68]), address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) >> 104) 
                        require sha256hash.result
                        require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                        call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.orderFills(address arg1, bytes32 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(call.data[68]), hash
                        require ext_call.success
                        if not call.data[68 len 12] - ext_call.return_data[0]:
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= 2:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                                return 0
                            else:
                                return 0
                        if not Mask(96, 160, call.data[132]):
                            if Mask(1, 1, arg1):
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0xd0e30db0 with:
                                   value (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18) wei
                                     gas gas_remaining - 9710 wei
                                require ext_call.success
                            if Mask(1, 5, arg1):
                                require block.gas_limit < 10 * 10^6
                            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                 gas 100000 wei
                                args 0, 0, 0, 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240), Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240))
                            require ext_call.success
                            require Mask(96, 160, call.data[68]) >> 160
                            require Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                            if not Mask(1, 2, arg1):
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= arg1:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * call.data[119 len 12] / call.data[68 len 12])
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                            if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)):
                                call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.withdrawToken(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)), Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                            else:
                                call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                                     gas gas_remaining - 710 wei
                                    args (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                            require ext_call.success
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                        if call.data[68 len 12] - ext_call.return_data[0] < call.data[132 len 12]:
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= 2:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                                return 0
                            else:
                                return 0
                        if Mask(1, 1, arg1):
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0xd0e30db0 with:
                               value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                 gas gas_remaining - 9710 wei
                            require ext_call.success
                        if Mask(1, 5, arg1):
                            require block.gas_limit < 10 * 10^6
                        call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0, 0, 0, 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132])
                        require ext_call.success
                        require Mask(96, 160, call.data[68]) >> 160
                        require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                        if not Mask(1, 2, arg1):
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return (call.data[132 len 12] * call.data[119 len 12] / call.data[68 len 12])
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                        if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.withdrawToken(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                        else:
                            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                    else:
                        hash = sha256hash(2082825034140337647, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[68]), 0, Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) >> 104) 
                        require sha256hash.result
                        require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                        call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.orderFills(address arg1, bytes32 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(call.data[68]), hash
                        require ext_call.success
                        if not call.data[68 len 12] - ext_call.return_data[0]:
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= 2:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                                return 0
                            else:
                                return 0
                        if not Mask(96, 160, call.data[132]):
                            if Mask(1, 1, arg1):
                                if Mask(1, 3, arg1):
                                    require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)))
                                    call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8, (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18)
                                    require ext_call.success
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)):
                                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.depositToken(address arg1, uint256 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)), (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18)
                                else:
                                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0xd0e30db0 with:
                                       value (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18) wei
                                         gas gas_remaining - 9710 wei
                                require ext_call.success
                            if Mask(1, 5, arg1):
                                require block.gas_limit < 10 * 10^6
                            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                 gas 100000 wei
                                args 0, 0, 0, 0, Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240))
                            require ext_call.success
                            require Mask(96, 160, call.data[68]) >> 160
                            require Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                            if not Mask(1, 2, arg1):
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= arg1:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * call.data[119 len 12] / call.data[68 len 12])
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                            require ext_call.success
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                        if call.data[68 len 12] - ext_call.return_data[0] < call.data[132 len 12]:
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= 2:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                                return 0
                            else:
                                return 0
                        if Mask(1, 1, arg1):
                            if Mask(1, 3, arg1):
                                require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]))
                                call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8, (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                require ext_call.success
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                            if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                                call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.depositToken(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                            else:
                                call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0xd0e30db0 with:
                                   value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                     gas gas_remaining - 9710 wei
                            require ext_call.success
                        if Mask(1, 5, arg1):
                            require block.gas_limit < 10 * 10^6
                        call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0, 0, 0, 0, Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132])
                        require ext_call.success
                        require Mask(96, 160, call.data[68]) >> 160
                        require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                        if not Mask(1, 2, arg1):
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return (call.data[132 len 12] * call.data[119 len 12] / call.data[68 len 12])
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                        call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                             gas gas_remaining - 710 wei
                            args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                else:
                    if not bool(arg1):
                        hash = sha256hash(6816767848202176836, 0, Mask(96, 160, call.data[68]), address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) >> 104) 
                        require sha256hash.result
                        require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                        call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.orderFills(address arg1, bytes32 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(call.data[68]), hash
                        require ext_call.success
                        if not call.data[68 len 12] - ext_call.return_data[0]:
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= 2:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                                return 0
                            else:
                                return 0
                        if not Mask(96, 160, call.data[132]):
                            if Mask(1, 1, arg1):
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0xd0e30db0 with:
                                   value (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18) wei
                                     gas gas_remaining - 9710 wei
                                require ext_call.success
                            if Mask(1, 5, arg1):
                                require block.gas_limit < 10 * 10^6
                            call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                 gas 100000 wei
                                args 0, 0, 0, 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240), Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240))
                            require ext_call.success
                            require Mask(96, 160, call.data[68]) >> 160
                            require Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                            if not Mask(1, 2, arg1):
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= arg1:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * call.data[119 len 12] / call.data[68 len 12])
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                            if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)):
                                call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.withdrawToken(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)), Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                            else:
                                call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                                     gas gas_remaining - 710 wei
                                    args (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                            require ext_call.success
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                        if call.data[68 len 12] - ext_call.return_data[0] < call.data[132 len 12]:
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= 2:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                                return 0
                            else:
                                return 0
                        if Mask(1, 1, arg1):
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                            call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0xd0e30db0 with:
                               value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                 gas gas_remaining - 9710 wei
                            require ext_call.success
                        if Mask(1, 5, arg1):
                            require block.gas_limit < 10 * 10^6
                        call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0, 0, 0, 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132])
                        require ext_call.success
                        require Mask(96, 160, call.data[68]) >> 160
                        require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                        if not Mask(1, 2, arg1):
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return (call.data[132 len 12] * call.data[119 len 12] / call.data[68 len 12])
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                        if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                            call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.withdrawToken(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                        else:
                            call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                    else:
                        hash = sha256hash(6816767848202176836, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[68]), 0, Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) >> 104) 
                        require sha256hash.result
                        require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                        call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.orderFills(address arg1, bytes32 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(call.data[68]), hash
                        require ext_call.success
                        if not call.data[68 len 12] - ext_call.return_data[0]:
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= 2:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                                return 0
                            else:
                                return 0
                        if not Mask(96, 160, call.data[132]):
                            if Mask(1, 1, arg1):
                                if Mask(1, 3, arg1):
                                    require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)))
                                    call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582, (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18)
                                    require ext_call.success
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)):
                                    call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.depositToken(address arg1, uint256 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)), (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18)
                                else:
                                    call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0xd0e30db0 with:
                                       value (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] + ((3 * 10^15 * Mask(96, 160, call.data[68]) >> 160) - (3 * 10^15 * ext_call.return_data[0]) / 10^18) wei
                                         gas gas_remaining - 9710 wei
                                require ext_call.success
                            if Mask(1, 5, arg1):
                                require block.gas_limit < 10 * 10^6
                            call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                 gas 100000 wei
                                args 0, 0, 0, 0, Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240))
                            require ext_call.success
                            require Mask(96, 160, call.data[68]) >> 160
                            require Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                            if not Mask(1, 2, arg1):
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= arg1:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * call.data[119 len 12] / call.data[68 len 12])
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                            call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                            require ext_call.success
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return (Mask(96, 160, call.data[132] + (call.data[68 len 12] - ext_call.return_data[0] << 240)) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                        if call.data[68 len 12] - ext_call.return_data[0] < call.data[132 len 12]:
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= 2:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                                return 0
                            else:
                                return 0
                        if Mask(1, 1, arg1):
                            if Mask(1, 3, arg1):
                                require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]))
                                call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582, (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                require ext_call.success
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                            if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                                call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.depositToken(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                            else:
                                call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0xd0e30db0 with:
                                   value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                     gas gas_remaining - 9710 wei
                            require ext_call.success
                        if Mask(1, 5, arg1):
                            require block.gas_limit < 10 * 10^6
                        call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0, 0, 0, 0, Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132])
                        require ext_call.success
                        require Mask(96, 160, call.data[68]) >> 160
                        require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                        if not Mask(1, 2, arg1):
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return (call.data[132 len 12] * call.data[119 len 12] / call.data[68 len 12])
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                        call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                             gas gas_remaining - 710 wei
                            args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
    require ext_call.success
    if Mask(1, 6, arg1):
        idx = 1
        while idx <= arg1:
            stor[uint16(arg1) + -idx + 3735936685] = 0
            idx = idx + 1
            continue 
    return (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
}

function sub_00000035(?) {
    require stor0[address(msg.sender)]
    if Mask(1, 5, arg1):
        require block.gas_limit < 10 * 10^6
    if not Mask(4, 232, arg1):
        hash = sha256hash(10165364982246593652, 0, Mask(96, 160, call.data[68]), address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) >> 104) 
        require sha256hash.result
        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address arg1, bytes32 arg2) with:
             gas gas_remaining - 710 wei
            args address(call.data[68]), hash
        require ext_call.success
        if (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] < Mask(96, 160, call.data[132]) >> 160:
            if Mask(1, 6, arg1):
                idx = 1
                while idx <= 2:
                    stor[uint16(arg1) + -idx + 3735936685] = 0
                    idx = idx + 1
                    continue 
                return 0
            else:
                return 0
        if not Mask(4, 228, arg1):
            hash = sha256hash(10165364982246593652, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
            require sha256hash.result
            require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address arg1, bytes32 arg2) with:
                 gas gas_remaining - 710 wei
                args address(call.data[228]), hash
            require ext_call.success
            if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                if Mask(1, 6, arg1):
                    idx = 1
                    while idx <= 2:
                        stor[uint16(arg1) + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    return 0
                else:
                    return 0
            if Mask(1, 1, arg1):
                require stor0[address(msg.sender)]
                require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
                   value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                     gas gas_remaining - 9710 wei
                require ext_call.success
            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas 100000 wei
                args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
            require ext_call.success
            require Mask(96, 160, call.data[68]) >> 160
            require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                 gas 100000 wei
                args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
            if not ext_call.success:
                require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                if Mask(1, 2, arg1):
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                         gas gas_remaining - 710 wei
                        args 0
                    require ext_call.success
                if Mask(1, 6, arg1):
                    idx = 1
                    while idx <= arg1:
                        stor[uint16(arg1) + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
            require Mask(96, 160, call.data[228]) >> 160
            require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
            if not Mask(1, 2, arg1):
                if Mask(1, 6, arg1):
                    idx = 1
                    while idx <= arg1:
                        stor[uint16(arg1) + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
            require stor0[address(msg.sender)]
            require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                 gas gas_remaining - 710 wei
                args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
        else:
            if 1 == Mask(4, 228, arg1) >> 228:
                hash = sha256hash(5572632160975436519, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                require sha256hash.result
                require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.orderFills(address arg1, bytes32 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(call.data[228]), hash
                require ext_call.success
                if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                    if Mask(1, 6, arg1):
                        idx = 1
                        while idx <= 2:
                            stor[uint16(arg1) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        return 0
                    else:
                        return 0
                if Mask(1, 1, arg1):
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
                       value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                         gas gas_remaining - 9710 wei
                    require ext_call.success
                call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas 100000 wei
                    args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                require ext_call.success
                require Mask(96, 160, call.data[68]) >> 160
                require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                require stor0[address(msg.sender)]
                require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.withdrawToken(address arg1, uint256 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                else:
                    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                         gas gas_remaining - 710 wei
                        args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                require ext_call.success
                if Mask(1, 3, arg1):
                    require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                    call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining - 710 wei
                        args 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                    require ext_call.success
                require stor0[address(msg.sender)]
                require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                    call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.depositToken(address arg1, uint256 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                else:
                    call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0xd0e30db0 with:
                       value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                         gas gas_remaining - 9710 wei
                require ext_call.success
                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas 100000 wei
                    args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                if not ext_call.success:
                    require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                    if Mask(1, 2, arg1):
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                        call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                             gas gas_remaining - 710 wei
                            args 0
                        require ext_call.success
                    if Mask(1, 6, arg1):
                        idx = 1
                        while idx <= arg1:
                            stor[uint16(arg1) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                    return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                require Mask(96, 160, call.data[228]) >> 160
                require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                if not Mask(1, 2, arg1):
                    if Mask(1, 6, arg1):
                        idx = 1
                        while idx <= arg1:
                            stor[uint16(arg1) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                    return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                require stor0[address(msg.sender)]
                require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                     gas gas_remaining - 710 wei
                    args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
            else:
                if 2 == Mask(4, 228, arg1) >> 228:
                    hash = sha256hash(11109560297177712838, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                    require sha256hash.result
                    require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.orderFills(address arg1, bytes32 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(call.data[228]), hash
                    require ext_call.success
                    if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= 2:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                            return 0
                        else:
                            return 0
                    if Mask(1, 1, arg1):
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
                           value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                             gas gas_remaining - 9710 wei
                        require ext_call.success
                    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas 100000 wei
                        args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                    require ext_call.success
                    require Mask(96, 160, call.data[68]) >> 160
                    require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                    if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.withdrawToken(address arg1, uint256 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                    else:
                        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                             gas gas_remaining - 710 wei
                            args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                    require ext_call.success
                    if Mask(1, 3, arg1):
                        require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                        call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining - 710 wei
                            args 0x9a2d163ab40f88c625fd475e807bbc3556566f80, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                        require ext_call.success
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                    if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.depositToken(address arg1, uint256 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                    else:
                        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0xd0e30db0 with:
                           value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                             gas gas_remaining - 9710 wei
                    require ext_call.success
                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas 100000 wei
                        args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                    if not ext_call.success:
                        require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                        if Mask(1, 2, arg1):
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                            call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args 0
                            require ext_call.success
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= arg1:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                        return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                    require Mask(96, 160, call.data[228]) >> 160
                    require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                    if not Mask(1, 2, arg1):
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= arg1:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                        return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                         gas gas_remaining - 710 wei
                        args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                else:
                    if 3 == Mask(4, 228, arg1) >> 228:
                        hash = sha256hash(2082825034140337647, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                        require sha256hash.result
                        require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                        call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.orderFills(address arg1, bytes32 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(call.data[228]), hash
                        require ext_call.success
                        if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= 2:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                                return 0
                            else:
                                return 0
                        if Mask(1, 1, arg1):
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
                               value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                 gas gas_remaining - 9710 wei
                            require ext_call.success
                        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                        require ext_call.success
                        require Mask(96, 160, call.data[68]) >> 160
                        require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                        if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.withdrawToken(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                        else:
                            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                        require ext_call.success
                        if Mask(1, 3, arg1):
                            require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                            call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                            require ext_call.success
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                        if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.depositToken(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                        else:
                            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0xd0e30db0 with:
                               value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                                 gas gas_remaining - 9710 wei
                        require ext_call.success
                        call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                        if not ext_call.success:
                            require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                            if Mask(1, 2, arg1):
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                                     gas gas_remaining - 710 wei
                                    args 0
                                require ext_call.success
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                        require Mask(96, 160, call.data[228]) >> 160
                        require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                        if not Mask(1, 2, arg1):
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                        call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                             gas gas_remaining - 710 wei
                            args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                    else:
                        hash = sha256hash(6816767848202176836, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                        require sha256hash.result
                        require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                        call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.orderFills(address arg1, bytes32 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(call.data[228]), hash
                        require ext_call.success
                        if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= 2:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                                return 0
                            else:
                                return 0
                        if Mask(1, 1, arg1):
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
                               value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                 gas gas_remaining - 9710 wei
                            require ext_call.success
                        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                        require ext_call.success
                        require Mask(96, 160, call.data[68]) >> 160
                        require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                        if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.withdrawToken(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                        else:
                            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                        require ext_call.success
                        if Mask(1, 3, arg1):
                            require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                            call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                            require ext_call.success
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                        if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                            call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.depositToken(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                        else:
                            call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0xd0e30db0 with:
                               value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                                 gas gas_remaining - 9710 wei
                        require ext_call.success
                        call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                        if not ext_call.success:
                            require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                            if Mask(1, 2, arg1):
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                                     gas gas_remaining - 710 wei
                                    args 0
                                require ext_call.success
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                        require Mask(96, 160, call.data[228]) >> 160
                        require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                        if not Mask(1, 2, arg1):
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                        call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                             gas gas_remaining - 710 wei
                            args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
    else:
        if 1 == Mask(4, 232, arg1) >> 232:
            hash = sha256hash(5572632160975436519, 0, Mask(96, 160, call.data[68]), address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) >> 104) 
            require sha256hash.result
            require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
            call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.orderFills(address arg1, bytes32 arg2) with:
                 gas gas_remaining - 710 wei
                args address(call.data[68]), hash
            require ext_call.success
            if (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] < Mask(96, 160, call.data[132]) >> 160:
                if Mask(1, 6, arg1):
                    idx = 1
                    while idx <= 2:
                        stor[uint16(arg1) + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    return 0
                else:
                    return 0
            if not Mask(4, 228, arg1):
                hash = sha256hash(10165364982246593652, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                require sha256hash.result
                require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address arg1, bytes32 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(call.data[228]), hash
                require ext_call.success
                if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                    if Mask(1, 6, arg1):
                        idx = 1
                        while idx <= 2:
                            stor[uint16(arg1) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        return 0
                    else:
                        return 0
                if Mask(1, 1, arg1):
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                    call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0xd0e30db0 with:
                       value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                         gas gas_remaining - 9710 wei
                    require ext_call.success
                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas 100000 wei
                    args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                require ext_call.success
                require Mask(96, 160, call.data[68]) >> 160
                require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                require stor0[address(msg.sender)]
                require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                    call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.withdrawToken(address arg1, uint256 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                else:
                    call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                         gas gas_remaining - 710 wei
                        args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                require ext_call.success
                if Mask(1, 3, arg1):
                    require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                    call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining - 710 wei
                        args 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                    require ext_call.success
                require stor0[address(msg.sender)]
                require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.depositToken(address arg1, uint256 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                else:
                    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
                       value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                         gas gas_remaining - 9710 wei
                require ext_call.success
                call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                     gas 100000 wei
                    args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                if not ext_call.success:
                    require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                    if Mask(1, 2, arg1):
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                             gas gas_remaining - 710 wei
                            args 0
                        require ext_call.success
                    if Mask(1, 6, arg1):
                        idx = 1
                        while idx <= arg1:
                            stor[uint16(arg1) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                    return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                require Mask(96, 160, call.data[228]) >> 160
                require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                if not Mask(1, 2, arg1):
                    if Mask(1, 6, arg1):
                        idx = 1
                        while idx <= arg1:
                            stor[uint16(arg1) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                    return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                require stor0[address(msg.sender)]
                require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                     gas gas_remaining - 710 wei
                    args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
            else:
                if 1 == Mask(4, 228, arg1) >> 228:
                    hash = sha256hash(5572632160975436519, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                    require sha256hash.result
                    require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                    call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.orderFills(address arg1, bytes32 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(call.data[228]), hash
                    require ext_call.success
                    if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= 2:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                            return 0
                        else:
                            return 0
                    if Mask(1, 1, arg1):
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                        call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0xd0e30db0 with:
                           value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                             gas gas_remaining - 9710 wei
                        require ext_call.success
                    call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas 100000 wei
                        args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                    require ext_call.success
                    require Mask(96, 160, call.data[68]) >> 160
                    require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                    call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas 100000 wei
                        args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                    if not ext_call.success:
                        require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                        if Mask(1, 2, arg1):
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                            call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args 0
                            require ext_call.success
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= arg1:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                        return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                    require Mask(96, 160, call.data[228]) >> 160
                    require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                    if not Mask(1, 2, arg1):
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= arg1:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                        return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                    call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                         gas gas_remaining - 710 wei
                        args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                else:
                    if 2 == Mask(4, 228, arg1) >> 228:
                        hash = sha256hash(11109560297177712838, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                        require sha256hash.result
                        require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.orderFills(address arg1, bytes32 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(call.data[228]), hash
                        require ext_call.success
                        if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= 2:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                                return 0
                            else:
                                return 0
                        if Mask(1, 1, arg1):
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                            call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0xd0e30db0 with:
                               value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                 gas gas_remaining - 9710 wei
                            require ext_call.success
                        call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                        require ext_call.success
                        require Mask(96, 160, call.data[68]) >> 160
                        require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                        if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                            call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.withdrawToken(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                        else:
                            call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                        require ext_call.success
                        if Mask(1, 3, arg1):
                            require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                            call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args 0x9a2d163ab40f88c625fd475e807bbc3556566f80, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                            require ext_call.success
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                        if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                            call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.depositToken(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                        else:
                            call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0xd0e30db0 with:
                               value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                                 gas gas_remaining - 9710 wei
                        require ext_call.success
                        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                        if not ext_call.success:
                            require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                            if Mask(1, 2, arg1):
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                                call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                                     gas gas_remaining - 710 wei
                                    args 0
                                require ext_call.success
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                        require Mask(96, 160, call.data[228]) >> 160
                        require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                        if not Mask(1, 2, arg1):
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                             gas gas_remaining - 710 wei
                            args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                    else:
                        if 3 == Mask(4, 228, arg1) >> 228:
                            hash = sha256hash(2082825034140337647, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                            require sha256hash.result
                            require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.orderFills(address arg1, bytes32 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(call.data[228]), hash
                            require ext_call.success
                            if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= 2:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                    return 0
                                else:
                                    return 0
                            if Mask(1, 1, arg1):
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0xd0e30db0 with:
                                   value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                     gas gas_remaining - 9710 wei
                                require ext_call.success
                            call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                 gas 100000 wei
                                args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                            require ext_call.success
                            require Mask(96, 160, call.data[68]) >> 160
                            require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                            if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.withdrawToken(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                            else:
                                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                                     gas gas_remaining - 710 wei
                                    args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                            require ext_call.success
                            if Mask(1, 3, arg1):
                                require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                                call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                                require ext_call.success
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                            if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                                call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.depositToken(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                            else:
                                call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0xd0e30db0 with:
                                   value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                                     gas gas_remaining - 9710 wei
                            require ext_call.success
                            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                 gas 100000 wei
                                args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                            if not ext_call.success:
                                require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                if Mask(1, 2, arg1):
                                    require stor0[address(msg.sender)]
                                    require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                                         gas gas_remaining - 710 wei
                                        args 0
                                    require ext_call.success
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= arg1:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                            require Mask(96, 160, call.data[228]) >> 160
                            require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                            if not Mask(1, 2, arg1):
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= arg1:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                        else:
                            hash = sha256hash(6816767848202176836, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                            require sha256hash.result
                            require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                            call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.orderFills(address arg1, bytes32 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(call.data[228]), hash
                            require ext_call.success
                            if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= 2:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                    return 0
                                else:
                                    return 0
                            if Mask(1, 1, arg1):
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0xd0e30db0 with:
                                   value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                     gas gas_remaining - 9710 wei
                                require ext_call.success
                            call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                 gas 100000 wei
                                args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                            require ext_call.success
                            require Mask(96, 160, call.data[68]) >> 160
                            require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                            if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.withdrawToken(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                            else:
                                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                                     gas gas_remaining - 710 wei
                                    args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                            require ext_call.success
                            if Mask(1, 3, arg1):
                                require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                                call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                                require ext_call.success
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                            if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                                call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.depositToken(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                            else:
                                call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0xd0e30db0 with:
                                   value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                                     gas gas_remaining - 9710 wei
                            require ext_call.success
                            call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                 gas 100000 wei
                                args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                            if not ext_call.success:
                                require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                if Mask(1, 2, arg1):
                                    require stor0[address(msg.sender)]
                                    require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                    call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                                         gas gas_remaining - 710 wei
                                        args 0
                                    require ext_call.success
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= arg1:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                            require Mask(96, 160, call.data[228]) >> 160
                            require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                            if not Mask(1, 2, arg1):
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= arg1:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                            call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
        else:
            if 2 == Mask(4, 232, arg1) >> 232:
                hash = sha256hash(11109560297177712838, 0, Mask(96, 160, call.data[68]), address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) >> 104) 
                require sha256hash.result
                require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.orderFills(address arg1, bytes32 arg2) with:
                     gas gas_remaining - 710 wei
                    args address(call.data[68]), hash
                require ext_call.success
                if (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] < Mask(96, 160, call.data[132]) >> 160:
                    if Mask(1, 6, arg1):
                        idx = 1
                        while idx <= 2:
                            stor[uint16(arg1) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        return 0
                    else:
                        return 0
                if not Mask(4, 228, arg1):
                    hash = sha256hash(10165364982246593652, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                    require sha256hash.result
                    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address arg1, bytes32 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(call.data[228]), hash
                    require ext_call.success
                    if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= 2:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                            return 0
                        else:
                            return 0
                    if Mask(1, 1, arg1):
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0xd0e30db0 with:
                           value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                             gas gas_remaining - 9710 wei
                        require ext_call.success
                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas 100000 wei
                        args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                    require ext_call.success
                    require Mask(96, 160, call.data[68]) >> 160
                    require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                    if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.withdrawToken(address arg1, uint256 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                    else:
                        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                             gas gas_remaining - 710 wei
                            args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                    require ext_call.success
                    if Mask(1, 3, arg1):
                        require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                        call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining - 710 wei
                            args 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                        require ext_call.success
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                    if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.depositToken(address arg1, uint256 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                    else:
                        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
                           value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                             gas gas_remaining - 9710 wei
                    require ext_call.success
                    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                         gas 100000 wei
                        args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                    if not ext_call.success:
                        require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                        if Mask(1, 2, arg1):
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args 0
                            require ext_call.success
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= arg1:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                        return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                    require Mask(96, 160, call.data[228]) >> 160
                    require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                    if not Mask(1, 2, arg1):
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= arg1:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                        return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                    require stor0[address(msg.sender)]
                    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                         gas gas_remaining - 710 wei
                        args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                else:
                    if 1 == Mask(4, 228, arg1) >> 228:
                        hash = sha256hash(5572632160975436519, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                        require sha256hash.result
                        require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                        call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.orderFills(address arg1, bytes32 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(call.data[228]), hash
                        require ext_call.success
                        if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= 2:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                                return 0
                            else:
                                return 0
                        if Mask(1, 1, arg1):
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                            call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0xd0e30db0 with:
                               value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                 gas gas_remaining - 9710 wei
                            require ext_call.success
                        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                        require ext_call.success
                        require Mask(96, 160, call.data[68]) >> 160
                        require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                        if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                            call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.withdrawToken(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                        else:
                            call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                        require ext_call.success
                        if Mask(1, 3, arg1):
                            require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                            call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                            require ext_call.success
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                        if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                            call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.depositToken(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                        else:
                            call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0xd0e30db0 with:
                               value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                                 gas gas_remaining - 9710 wei
                        require ext_call.success
                        call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                        if not ext_call.success:
                            require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                            if Mask(1, 2, arg1):
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                                     gas gas_remaining - 710 wei
                                    args 0
                                require ext_call.success
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                        require Mask(96, 160, call.data[228]) >> 160
                        require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                        if not Mask(1, 2, arg1):
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                        call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                             gas gas_remaining - 710 wei
                            args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                    else:
                        if 2 == Mask(4, 228, arg1) >> 228:
                            hash = sha256hash(11109560297177712838, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                            require sha256hash.result
                            require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                            call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.orderFills(address arg1, bytes32 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(call.data[228]), hash
                            require ext_call.success
                            if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= 2:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                    return 0
                                else:
                                    return 0
                            if Mask(1, 1, arg1):
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                                call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0xd0e30db0 with:
                                   value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                     gas gas_remaining - 9710 wei
                                require ext_call.success
                            call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                 gas 100000 wei
                                args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                            require ext_call.success
                            require Mask(96, 160, call.data[68]) >> 160
                            require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                            call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                 gas 100000 wei
                                args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                            if not ext_call.success:
                                require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                if Mask(1, 2, arg1):
                                    require stor0[address(msg.sender)]
                                    require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                                         gas gas_remaining - 710 wei
                                        args 0
                                    require ext_call.success
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= arg1:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                            require Mask(96, 160, call.data[228]) >> 160
                            require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                            if not Mask(1, 2, arg1):
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= arg1:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                            call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                        else:
                            if 3 == Mask(4, 228, arg1) >> 228:
                                hash = sha256hash(2082825034140337647, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                                require sha256hash.result
                                require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.orderFills(address arg1, bytes32 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(call.data[228]), hash
                                require ext_call.success
                                if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                                    if Mask(1, 6, arg1):
                                        idx = 1
                                        while idx <= 2:
                                            stor[uint16(arg1) + -idx + 3735936685] = 0
                                            idx = idx + 1
                                            continue 
                                        return 0
                                    else:
                                        return 0
                                if Mask(1, 1, arg1):
                                    require stor0[address(msg.sender)]
                                    require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0xd0e30db0 with:
                                       value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                         gas gas_remaining - 9710 wei
                                    require ext_call.success
                                call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                     gas 100000 wei
                                    args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                                require ext_call.success
                                require Mask(96, 160, call.data[68]) >> 160
                                require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                                if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.withdrawToken(address arg1, uint256 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                                else:
                                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                                         gas gas_remaining - 710 wei
                                        args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                                require ext_call.success
                                if Mask(1, 3, arg1):
                                    require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                                    call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                                    require ext_call.success
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.depositToken(address arg1, uint256 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                                else:
                                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0xd0e30db0 with:
                                       value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                                         gas gas_remaining - 9710 wei
                                require ext_call.success
                                call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                     gas 100000 wei
                                    args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                                if not ext_call.success:
                                    require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                    if Mask(1, 2, arg1):
                                        require stor0[address(msg.sender)]
                                        require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                        call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                                             gas gas_remaining - 710 wei
                                            args 0
                                        require ext_call.success
                                    if Mask(1, 6, arg1):
                                        idx = 1
                                        while idx <= arg1:
                                            stor[uint16(arg1) + -idx + 3735936685] = 0
                                            idx = idx + 1
                                            continue 
                                    return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                                require Mask(96, 160, call.data[228]) >> 160
                                require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                if not Mask(1, 2, arg1):
                                    if Mask(1, 6, arg1):
                                        idx = 1
                                        while idx <= arg1:
                                            stor[uint16(arg1) + -idx + 3735936685] = 0
                                            idx = idx + 1
                                            continue 
                                    return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                                     gas gas_remaining - 710 wei
                                    args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                            else:
                                hash = sha256hash(6816767848202176836, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                                require sha256hash.result
                                require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.orderFills(address arg1, bytes32 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(call.data[228]), hash
                                require ext_call.success
                                if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                                    if Mask(1, 6, arg1):
                                        idx = 1
                                        while idx <= 2:
                                            stor[uint16(arg1) + -idx + 3735936685] = 0
                                            idx = idx + 1
                                            continue 
                                        return 0
                                    else:
                                        return 0
                                if Mask(1, 1, arg1):
                                    require stor0[address(msg.sender)]
                                    require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0xd0e30db0 with:
                                       value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                         gas gas_remaining - 9710 wei
                                    require ext_call.success
                                call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                     gas 100000 wei
                                    args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                                require ext_call.success
                                require Mask(96, 160, call.data[68]) >> 160
                                require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                                if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.withdrawToken(address arg1, uint256 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                                else:
                                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                                         gas gas_remaining - 710 wei
                                        args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                                require ext_call.success
                                if Mask(1, 3, arg1):
                                    require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                                    call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                                    require ext_call.success
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                                    call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.depositToken(address arg1, uint256 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                                else:
                                    call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0xd0e30db0 with:
                                       value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                                         gas gas_remaining - 9710 wei
                                require ext_call.success
                                call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                     gas 100000 wei
                                    args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                                if not ext_call.success:
                                    require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                    if Mask(1, 2, arg1):
                                        require stor0[address(msg.sender)]
                                        require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                        call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                                             gas gas_remaining - 710 wei
                                            args 0
                                        require ext_call.success
                                    if Mask(1, 6, arg1):
                                        idx = 1
                                        while idx <= arg1:
                                            stor[uint16(arg1) + -idx + 3735936685] = 0
                                            idx = idx + 1
                                            continue 
                                    return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                                require Mask(96, 160, call.data[228]) >> 160
                                require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                if not Mask(1, 2, arg1):
                                    if Mask(1, 6, arg1):
                                        idx = 1
                                        while idx <= arg1:
                                            stor[uint16(arg1) + -idx + 3735936685] = 0
                                            idx = idx + 1
                                            continue 
                                    return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                                     gas gas_remaining - 710 wei
                                    args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
            else:
                if 3 == Mask(4, 232, arg1) >> 232:
                    hash = sha256hash(2082825034140337647, 0, Mask(96, 160, call.data[68]), address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) >> 104) 
                    require sha256hash.result
                    require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.orderFills(address arg1, bytes32 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(call.data[68]), hash
                    require ext_call.success
                    if (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] < Mask(96, 160, call.data[132]) >> 160:
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= 2:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                            return 0
                        else:
                            return 0
                    if not Mask(4, 228, arg1):
                        hash = sha256hash(10165364982246593652, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                        require sha256hash.result
                        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address arg1, bytes32 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(call.data[228]), hash
                        require ext_call.success
                        if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= 2:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                                return 0
                            else:
                                return 0
                        if Mask(1, 1, arg1):
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0xd0e30db0 with:
                               value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                 gas gas_remaining - 9710 wei
                            require ext_call.success
                        call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                        require ext_call.success
                        require Mask(96, 160, call.data[68]) >> 160
                        require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                        if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.withdrawToken(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                        else:
                            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                        require ext_call.success
                        if Mask(1, 3, arg1):
                            require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                            call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                            require ext_call.success
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                        if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.depositToken(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                        else:
                            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
                               value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                                 gas gas_remaining - 9710 wei
                        require ext_call.success
                        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                        if not ext_call.success:
                            require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                            if Mask(1, 2, arg1):
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                                call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                                     gas gas_remaining - 710 wei
                                    args 0
                                require ext_call.success
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                        require Mask(96, 160, call.data[228]) >> 160
                        require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                        if not Mask(1, 2, arg1):
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                             gas gas_remaining - 710 wei
                            args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                    else:
                        if 1 == Mask(4, 228, arg1) >> 228:
                            hash = sha256hash(5572632160975436519, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                            require sha256hash.result
                            require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                            call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.orderFills(address arg1, bytes32 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(call.data[228]), hash
                            require ext_call.success
                            if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= 2:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                    return 0
                                else:
                                    return 0
                            if Mask(1, 1, arg1):
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0xd0e30db0 with:
                                   value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                     gas gas_remaining - 9710 wei
                                require ext_call.success
                            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                 gas 100000 wei
                                args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                            require ext_call.success
                            require Mask(96, 160, call.data[68]) >> 160
                            require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                            if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                                call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.withdrawToken(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                            else:
                                call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                                     gas gas_remaining - 710 wei
                                    args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                            require ext_call.success
                            if Mask(1, 3, arg1):
                                require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                                call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                                require ext_call.success
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                            if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.depositToken(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                            else:
                                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0xd0e30db0 with:
                                   value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                                     gas gas_remaining - 9710 wei
                            require ext_call.success
                            call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                 gas 100000 wei
                                args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                            if not ext_call.success:
                                require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                if Mask(1, 2, arg1):
                                    require stor0[address(msg.sender)]
                                    require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                                    call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                                         gas gas_remaining - 710 wei
                                        args 0
                                    require ext_call.success
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= arg1:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                            require Mask(96, 160, call.data[228]) >> 160
                            require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                            if not Mask(1, 2, arg1):
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= arg1:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                            call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                        else:
                            if 2 == Mask(4, 228, arg1) >> 228:
                                hash = sha256hash(11109560297177712838, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                                require sha256hash.result
                                require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                                call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.orderFills(address arg1, bytes32 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(call.data[228]), hash
                                require ext_call.success
                                if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                                    if Mask(1, 6, arg1):
                                        idx = 1
                                        while idx <= 2:
                                            stor[uint16(arg1) + -idx + 3735936685] = 0
                                            idx = idx + 1
                                            continue 
                                        return 0
                                    else:
                                        return 0
                                if Mask(1, 1, arg1):
                                    require stor0[address(msg.sender)]
                                    require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0xd0e30db0 with:
                                       value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                         gas gas_remaining - 9710 wei
                                    require ext_call.success
                                call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                     gas 100000 wei
                                    args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                                require ext_call.success
                                require Mask(96, 160, call.data[68]) >> 160
                                require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.withdrawToken(address arg1, uint256 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                                else:
                                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                                         gas gas_remaining - 710 wei
                                        args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                                require ext_call.success
                                if Mask(1, 3, arg1):
                                    require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                                    call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args 0x9a2d163ab40f88c625fd475e807bbc3556566f80, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                                    require ext_call.success
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                                if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.depositToken(address arg1, uint256 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                                else:
                                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0xd0e30db0 with:
                                       value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                                         gas gas_remaining - 9710 wei
                                require ext_call.success
                                call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                     gas 100000 wei
                                    args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                                if not ext_call.success:
                                    require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                    if Mask(1, 2, arg1):
                                        require stor0[address(msg.sender)]
                                        require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                                        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                                             gas gas_remaining - 710 wei
                                            args 0
                                        require ext_call.success
                                    if Mask(1, 6, arg1):
                                        idx = 1
                                        while idx <= arg1:
                                            stor[uint16(arg1) + -idx + 3735936685] = 0
                                            idx = idx + 1
                                            continue 
                                    return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                                require Mask(96, 160, call.data[228]) >> 160
                                require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                if not Mask(1, 2, arg1):
                                    if Mask(1, 6, arg1):
                                        idx = 1
                                        while idx <= arg1:
                                            stor[uint16(arg1) + -idx + 3735936685] = 0
                                            idx = idx + 1
                                            continue 
                                    return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                                call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                                     gas gas_remaining - 710 wei
                                    args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                            else:
                                if 3 == Mask(4, 228, arg1) >> 228:
                                    hash = sha256hash(2082825034140337647, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                                    require sha256hash.result
                                    require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.orderFills(address arg1, bytes32 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(call.data[228]), hash
                                    require ext_call.success
                                    if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                                        if Mask(1, 6, arg1):
                                            idx = 1
                                            while idx <= 2:
                                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                                idx = idx + 1
                                                continue 
                                            return 0
                                        else:
                                            return 0
                                    if Mask(1, 1, arg1):
                                        require stor0[address(msg.sender)]
                                        require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                        call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0xd0e30db0 with:
                                           value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                             gas gas_remaining - 9710 wei
                                        require ext_call.success
                                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                         gas 100000 wei
                                        args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                                    require ext_call.success
                                    require Mask(96, 160, call.data[68]) >> 160
                                    require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                         gas 100000 wei
                                        args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                                    if not ext_call.success:
                                        require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                        if Mask(1, 2, arg1):
                                            require stor0[address(msg.sender)]
                                            require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                                                 gas gas_remaining - 710 wei
                                                args 0
                                            require ext_call.success
                                        if Mask(1, 6, arg1):
                                            idx = 1
                                            while idx <= arg1:
                                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                                idx = idx + 1
                                                continue 
                                        return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                                    require Mask(96, 160, call.data[228]) >> 160
                                    require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                    if not Mask(1, 2, arg1):
                                        if Mask(1, 6, arg1):
                                            idx = 1
                                            while idx <= arg1:
                                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                                idx = idx + 1
                                                continue 
                                        return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                                    require stor0[address(msg.sender)]
                                    require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                                         gas gas_remaining - 710 wei
                                        args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                                else:
                                    hash = sha256hash(6816767848202176836, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                                    require sha256hash.result
                                    require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                    call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.orderFills(address arg1, bytes32 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(call.data[228]), hash
                                    require ext_call.success
                                    if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                                        if Mask(1, 6, arg1):
                                            idx = 1
                                            while idx <= 2:
                                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                                idx = idx + 1
                                                continue 
                                            return 0
                                        else:
                                            return 0
                                    if Mask(1, 1, arg1):
                                        require stor0[address(msg.sender)]
                                        require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                        call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0xd0e30db0 with:
                                           value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                             gas gas_remaining - 9710 wei
                                        require ext_call.success
                                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                         gas 100000 wei
                                        args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                                    require ext_call.success
                                    require Mask(96, 160, call.data[68]) >> 160
                                    require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                                    require stor0[address(msg.sender)]
                                    require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                    if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                                        call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.withdrawToken(address arg1, uint256 arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                                    else:
                                        call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                                             gas gas_remaining - 710 wei
                                            args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                                    require ext_call.success
                                    if Mask(1, 3, arg1):
                                        require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                                        call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining - 710 wei
                                            args 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                                        require ext_call.success
                                    require stor0[address(msg.sender)]
                                    require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                    if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                                        call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.depositToken(address arg1, uint256 arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                                    else:
                                        call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0xd0e30db0 with:
                                           value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                                             gas gas_remaining - 9710 wei
                                    require ext_call.success
                                    call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                         gas 100000 wei
                                        args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                                    if not ext_call.success:
                                        require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                        if Mask(1, 2, arg1):
                                            require stor0[address(msg.sender)]
                                            require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                            call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                                                 gas gas_remaining - 710 wei
                                                args 0
                                            require ext_call.success
                                        if Mask(1, 6, arg1):
                                            idx = 1
                                            while idx <= arg1:
                                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                                idx = idx + 1
                                                continue 
                                        return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                                    require Mask(96, 160, call.data[228]) >> 160
                                    require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                    if not Mask(1, 2, arg1):
                                        if Mask(1, 6, arg1):
                                            idx = 1
                                            while idx <= arg1:
                                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                                idx = idx + 1
                                                continue 
                                        return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                                    require stor0[address(msg.sender)]
                                    require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                    call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                                         gas gas_remaining - 710 wei
                                        args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                else:
                    hash = sha256hash(6816767848202176836, 0, Mask(96, 160, call.data[68]), address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) >> 104) 
                    require sha256hash.result
                    require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                    call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.orderFills(address arg1, bytes32 arg2) with:
                         gas gas_remaining - 710 wei
                        args address(call.data[68]), hash
                    require ext_call.success
                    if (Mask(96, 160, call.data[68]) >> 160) - ext_call.return_data[0] < Mask(96, 160, call.data[132]) >> 160:
                        if Mask(1, 6, arg1):
                            idx = 1
                            while idx <= 2:
                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                idx = idx + 1
                                continue 
                            return 0
                        else:
                            return 0
                    if not Mask(4, 228, arg1):
                        hash = sha256hash(10165364982246593652, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                        require sha256hash.result
                        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address arg1, bytes32 arg2) with:
                             gas gas_remaining - 710 wei
                            args address(call.data[228]), hash
                        require ext_call.success
                        if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= 2:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                                return 0
                            else:
                                return 0
                        if Mask(1, 1, arg1):
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                            call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0xd0e30db0 with:
                               value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                 gas gas_remaining - 9710 wei
                            require ext_call.success
                        call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                        require ext_call.success
                        require Mask(96, 160, call.data[68]) >> 160
                        require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                        if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                            call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.withdrawToken(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                        else:
                            call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                        require ext_call.success
                        if Mask(1, 3, arg1):
                            require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                            call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                            require ext_call.success
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                        if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.depositToken(address arg1, uint256 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                        else:
                            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
                               value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                                 gas gas_remaining - 9710 wei
                        require ext_call.success
                        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                             gas 100000 wei
                            args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                        if not ext_call.success:
                            require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                            if Mask(1, 2, arg1):
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                                call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                                     gas gas_remaining - 710 wei
                                    args 0
                                require ext_call.success
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                        require Mask(96, 160, call.data[228]) >> 160
                        require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                        if not Mask(1, 2, arg1):
                            if Mask(1, 6, arg1):
                                idx = 1
                                while idx <= arg1:
                                    stor[uint16(arg1) + -idx + 3735936685] = 0
                                    idx = idx + 1
                                    continue 
                            return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                        require stor0[address(msg.sender)]
                        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
                        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
                             gas gas_remaining - 710 wei
                            args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                    else:
                        if 1 == Mask(4, 228, arg1) >> 228:
                            hash = sha256hash(5572632160975436519, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                            require sha256hash.result
                            require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                            call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.orderFills(address arg1, bytes32 arg2) with:
                                 gas gas_remaining - 710 wei
                                args address(call.data[228]), hash
                            require ext_call.success
                            if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= 2:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                    return 0
                                else:
                                    return 0
                            if Mask(1, 1, arg1):
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0xd0e30db0 with:
                                   value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                     gas gas_remaining - 9710 wei
                                require ext_call.success
                            call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                 gas 100000 wei
                                args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                            require ext_call.success
                            require Mask(96, 160, call.data[68]) >> 160
                            require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                            if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                                call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.withdrawToken(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                            else:
                                call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                                     gas gas_remaining - 710 wei
                                    args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                            require ext_call.success
                            if Mask(1, 3, arg1):
                                require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                                call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                                require ext_call.success
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                            if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.depositToken(address arg1, uint256 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                            else:
                                call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0xd0e30db0 with:
                                   value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                                     gas gas_remaining - 9710 wei
                            require ext_call.success
                            call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                 gas 100000 wei
                                args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                            if not ext_call.success:
                                require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                if Mask(1, 2, arg1):
                                    require stor0[address(msg.sender)]
                                    require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                                    call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                                         gas gas_remaining - 710 wei
                                        args 0
                                    require ext_call.success
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= arg1:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                            require Mask(96, 160, call.data[228]) >> 160
                            require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                            if not Mask(1, 2, arg1):
                                if Mask(1, 6, arg1):
                                    idx = 1
                                    while idx <= arg1:
                                        stor[uint16(arg1) + -idx + 3735936685] = 0
                                        idx = idx + 1
                                        continue 
                                return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                            require stor0[address(msg.sender)]
                            require ext_code.size(0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b)
                            call 0x4d55f76ce2dbbae7b48661bef9bd144ce0c9091b.0x2e1a7d4d with:
                                 gas gas_remaining - 710 wei
                                args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                        else:
                            if 2 == Mask(4, 228, arg1) >> 228:
                                hash = sha256hash(11109560297177712838, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                                require sha256hash.result
                                require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                                call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.orderFills(address arg1, bytes32 arg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(call.data[228]), hash
                                require ext_call.success
                                if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                                    if Mask(1, 6, arg1):
                                        idx = 1
                                        while idx <= 2:
                                            stor[uint16(arg1) + -idx + 3735936685] = 0
                                            idx = idx + 1
                                            continue 
                                        return 0
                                    else:
                                        return 0
                                if Mask(1, 1, arg1):
                                    require stor0[address(msg.sender)]
                                    require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                    call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0xd0e30db0 with:
                                       value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                         gas gas_remaining - 9710 wei
                                    require ext_call.success
                                call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                     gas 100000 wei
                                    args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                                require ext_call.success
                                require Mask(96, 160, call.data[68]) >> 160
                                require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                                    call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.withdrawToken(address arg1, uint256 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                                else:
                                    call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                                         gas gas_remaining - 710 wei
                                        args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                                require ext_call.success
                                if Mask(1, 3, arg1):
                                    require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                                    call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args 0x9a2d163ab40f88c625fd475e807bbc3556566f80, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                                    require ext_call.success
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                                if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.depositToken(address arg1, uint256 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                                else:
                                    call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0xd0e30db0 with:
                                       value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                                         gas gas_remaining - 9710 wei
                                require ext_call.success
                                call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                     gas 100000 wei
                                    args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                                if not ext_call.success:
                                    require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                    if Mask(1, 2, arg1):
                                        require stor0[address(msg.sender)]
                                        require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                                        call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                                             gas gas_remaining - 710 wei
                                            args 0
                                        require ext_call.success
                                    if Mask(1, 6, arg1):
                                        idx = 1
                                        while idx <= arg1:
                                            stor[uint16(arg1) + -idx + 3735936685] = 0
                                            idx = idx + 1
                                            continue 
                                    return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                                require Mask(96, 160, call.data[228]) >> 160
                                require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                if not Mask(1, 2, arg1):
                                    if Mask(1, 6, arg1):
                                        idx = 1
                                        while idx <= arg1:
                                            stor[uint16(arg1) + -idx + 3735936685] = 0
                                            idx = idx + 1
                                            continue 
                                    return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                                require stor0[address(msg.sender)]
                                require ext_code.size(0x9a2d163ab40f88c625fd475e807bbc3556566f80)
                                call 0x9a2d163ab40f88c625fd475e807bbc3556566f80.0x2e1a7d4d with:
                                     gas gas_remaining - 710 wei
                                    args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                            else:
                                if Mask(4, 228, arg1) >> 228 != 3:
                                    hash = sha256hash(6816767848202176836, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                                    require sha256hash.result
                                    require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                    call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.orderFills(address arg1, bytes32 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(call.data[228]), hash
                                    require ext_call.success
                                    if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                                        if Mask(1, 6, arg1):
                                            idx = 1
                                            while idx <= 2:
                                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                                idx = idx + 1
                                                continue 
                                            return 0
                                        else:
                                            return 0
                                    if Mask(1, 1, arg1):
                                        require stor0[address(msg.sender)]
                                        require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                        call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0xd0e30db0 with:
                                           value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                             gas gas_remaining - 9710 wei
                                        require ext_call.success
                                    call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                         gas 100000 wei
                                        args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                                    require ext_call.success
                                    require Mask(96, 160, call.data[68]) >> 160
                                    require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                                    call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                         gas 100000 wei
                                        args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                                    if not ext_call.success:
                                        require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                        if Mask(1, 2, arg1):
                                            require stor0[address(msg.sender)]
                                            require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                            call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                                                 gas gas_remaining - 710 wei
                                                args 0
                                            require ext_call.success
                                        if Mask(1, 6, arg1):
                                            idx = 1
                                            while idx <= arg1:
                                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                                idx = idx + 1
                                                continue 
                                        return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                                    require Mask(96, 160, call.data[228]) >> 160
                                    require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                    if not Mask(1, 2, arg1):
                                        if Mask(1, 6, arg1):
                                            idx = 1
                                            while idx <= arg1:
                                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                                idx = idx + 1
                                                continue 
                                        return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                                    require stor0[address(msg.sender)]
                                    require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                    call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                                         gas gas_remaining - 710 wei
                                        args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
                                else:
                                    hash = sha256hash(2082825034140337647, address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) >> 104) 
                                    require sha256hash.result
                                    require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.orderFills(address arg1, bytes32 arg2) with:
                                         gas gas_remaining - 710 wei
                                        args address(call.data[228]), hash
                                    require ext_call.success
                                    if call.data[228 len 12] - ext_call.return_data[0] < Mask(96, 160, call.data[292]) >> 160:
                                        if Mask(1, 6, arg1):
                                            idx = 1
                                            while idx <= 2:
                                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                                idx = idx + 1
                                                continue 
                                            return 0
                                        else:
                                            return 0
                                    if Mask(1, 1, arg1):
                                        require stor0[address(msg.sender)]
                                        require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                        call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0xd0e30db0 with:
                                           value (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18) wei
                                             gas gas_remaining - 9710 wei
                                        require ext_call.success
                                    call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                         gas 100000 wei
                                        args 0, Mask(96, 160, call.data[68]), 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[132], Mask(96, 8, call.data[100]) << 152, Mask(56, 200, call.data[100]), Mask(96, 104, call.data[100]) << 56, call.data[68], call.data[100], call.data[4], call.data[36], Mask(96, 160, call.data[132]) >> 160
                                    require ext_call.success
                                    require Mask(96, 160, call.data[68]) >> 160
                                    require Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160 > 0
                                    require stor0[address(msg.sender)]
                                    require ext_code.size(0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582)
                                    if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]):
                                        call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.withdrawToken(address arg1, uint256 arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[132]), Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160
                                    else:
                                        call 0x5e9a063dbc650944bdc824bd1c3b3196a5f1f582.0x2e1a7d4d with:
                                             gas gas_remaining - 710 wei
                                            args (Mask(96, 160, call.data[132]) >> 160 * Mask(96, 8, call.data[100]) >> 8 / Mask(96, 160, call.data[68]) >> 160)
                                    require ext_call.success
                                    if Mask(1, 3, arg1):
                                        require ext_code.size(address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]))
                                        call address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining - 710 wei
                                            args 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8, (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                                        require ext_call.success
                                    require stor0[address(msg.sender)]
                                    require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                    if address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]):
                                        call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.depositToken(address arg1, uint256 arg2) with:
                                             gas gas_remaining - 710 wei
                                            args address(0x10000000000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff523 xor call.data[292]), (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18)
                                    else:
                                        call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0xd0e30db0 with:
                                           value (Mask(96, 160, call.data[292]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[292]) >> 160 / 10^18) wei
                                             gas gas_remaining - 9710 wei
                                    require ext_call.success
                                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
                                         gas 100000 wei
                                        args 0xff0000000000000000008f3470a7388c05ee4e7af3d01d8c722b0ff52374 xor call.data[292], Mask(96, 160, call.data[228]), 0, Mask(96, 8, call.data[260]) << 152, Mask(56, 200, call.data[260]), Mask(96, 104, call.data[260]) << 56, call.data[228], call.data[260], call.data[164], call.data[196], Mask(96, 160, call.data[292]) >> 160
                                    if not ext_call.success:
                                        require 0 > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                        if Mask(1, 2, arg1):
                                            require stor0[address(msg.sender)]
                                            require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                            call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                                                 gas gas_remaining - 710 wei
                                                args 0
                                            require ext_call.success
                                        if Mask(1, 6, arg1):
                                            idx = 1
                                            while idx <= arg1:
                                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                                idx = idx + 1
                                                continue 
                                        return (-(Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                                    require Mask(96, 160, call.data[228]) >> 160
                                    require call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12] > (Mask(96, 160, call.data[132]) >> 160) + (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18)
                                    if not Mask(1, 2, arg1):
                                        if Mask(1, 6, arg1):
                                            idx = 1
                                            while idx <= arg1:
                                                stor[uint16(arg1) + -idx + 3735936685] = 0
                                                idx = idx + 1
                                                continue 
                                        return ((call.data[292 len 12] * call.data[279 len 12] / call.data[228 len 12]) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
                                    require stor0[address(msg.sender)]
                                    require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
                                    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.0x2e1a7d4d with:
                                         gas gas_remaining - 710 wei
                                        args (Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160)
    require ext_call.success
    if Mask(1, 6, arg1):
        idx = 1
        while idx <= arg1:
            stor[uint16(arg1) + -idx + 3735936685] = 0
            idx = idx + 1
            continue 
    return ((Mask(96, 160, call.data[292]) >> 160 * Mask(96, 8, call.data[260]) >> 8 / Mask(96, 160, call.data[228]) >> 160) - (Mask(96, 160, call.data[132]) >> 160) - (3 * 10^15 * Mask(96, 160, call.data[132]) >> 160 / 10^18))
}



}
