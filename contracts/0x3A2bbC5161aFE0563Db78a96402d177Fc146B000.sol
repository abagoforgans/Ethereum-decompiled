contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - setupRace(uint256 arg1, uint256 arg2, address arg3)
#  - spawnRaceManual(uint256 arg1, uint256 arg2, bool arg3)
#
address stor0;
uint256 stor0;
address stor1;
array of uint256 stor2;
mapping of struct coinIndex;
mapping of uint256 stor7;
mapping of address stor8;
address stor14;
mapping of uint8 stor16;

function isOraclizeEnabled(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor16[arg1])
}

function coinIndex(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return coinIndex[arg1][arg2].field_0, 
           coinIndex[arg1][arg2].field_256,
           coinIndex[arg1][arg2].field_512,
           coinIndex[arg1][arg2].field_768
}

function _fallback() payable {
    revert
}

function addFunds() payable {
    require msg.sender == stor14
    emit AddFund(msg.value);
}

function manualRecovery(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor14
    require ext_code.size(arg1)
    call arg1.recovery() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function enableRefund(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor14
    emit RemoteBettingCloseInfo(arg1);
    require ext_code.size(arg1)
    call arg1.refund() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeRaceOwnership(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor14
    require ext_code.size(arg1)
    call arg1.changeOwnership(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function extractFund(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor14
    if not arg1:
        call stor14 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        require arg1 <= eth.balance(this.address)
        call stor14 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeOraclizeGasPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor14
    if not stor1:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor2.length) = 0
            stor2.length.field_1 = 11
            stor2.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor2.length) = 0
                stor2.length.field_1 = 12
                stor2.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 9
                    stor2.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor1)
    else:
        if not ext_code.size(stor1):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                stor2.length.field_1 = 11
                stor2.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 12
                    stor2.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 9
                        stor2.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 11
                            stor2.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor1)
    call stor1.getAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(stor0):
        require ext_code.size(stor1)
        call stor1.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
    require ext_code.size(address(stor0))
    call address(stor0).setCustomGasPrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_24606f29(?) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == stor14
    emit RemoteBettingCloseInfo(arg1);
    mem[96] = 0x5ad6ba4700000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.getChronus() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    require 0 < mem[mem[96] + 96]
    if not arg4:
        _15 = mem[mem[96] + 128]
        mem[ceil32(return_data.size) + 96] = 0x5ad6ba4700000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.getChronus() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 96] <= 4294967296
        require mem[ceil32(return_data.size) + 96] + 32 <= return_data.size
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 <= return_data.size
        require 2 < mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        if arg5 < uint32(_15 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 192] + 800):
            if arg5 > uint32(_15 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 192] - 800):
                mem[(2 * ceil32(return_data.size)) + 128 len arg3.length] = arg3[all]
                mem[(2 * ceil32(return_data.size)) + arg3.length + 128] = 0
                idx = 0
                s = 0
                t = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    require idx < arg3.length
                    if mem[(2 * ceil32(return_data.size)) + idx + 128 len 1] == 46:
                        if mem[idx + (2 * ceil32(return_data.size)) + 128 len 1] < 48:
                            idx = idx + 1
                            s = 1
                            t = t
                            continue 
                        if mem[idx + (2 * ceil32(return_data.size)) + 128 len 1] > 57:
                            idx = idx + 1
                            s = 1
                            t = t
                            continue 
                        idx = idx + 1
                        s = 1
                        t = (10 * t) + uint8(mem[idx + (2 * ceil32(return_data.size)) + 128 len 1] - 48)
                        continue 
                    if mem[idx + (2 * ceil32(return_data.size)) + 128 len 1] < 48:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if mem[idx + (2 * ceil32(return_data.size)) + 128 len 1] > 57:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    idx = idx + 1
                    s = s
                    t = (10 * t) + uint8(mem[idx + (2 * ceil32(return_data.size)) + 128 len 1] - 48)
                    continue 
                idx = 2
                s = t
                while idx:
                    idx = idx - 1
                    s = 10 * s
                    continue 
                coinIndex[address(arg1)][arg2].field_256 = s
                mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + 160 len arg3.length] = arg3[all]
                mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + arg3.length + 160] = 0
                idx = 0
                s = 0
                u = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    require idx < arg3.length
                    if mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + idx + 160 len 1] == 46:
                        if mem[idx + (2 * ceil32(return_data.size)) + ceil32(arg3.length) + 160 len 1] < 48:
                            idx = idx + 1
                            s = 1
                            u = u
                            continue 
                        if mem[idx + (2 * ceil32(return_data.size)) + ceil32(arg3.length) + 160 len 1] > 57:
                            idx = idx + 1
                            s = 1
                            u = u
                            continue 
                        idx = idx + 1
                        s = 1
                        u = (10 * u) + uint8(mem[idx + (2 * ceil32(return_data.size)) + ceil32(arg3.length) + 160 len 1] - 48)
                        continue 
                    if mem[idx + (2 * ceil32(return_data.size)) + ceil32(arg3.length) + 160 len 1] < 48:
                        idx = idx + 1
                        s = s
                        u = u
                        continue 
                    if mem[idx + (2 * ceil32(return_data.size)) + ceil32(arg3.length) + 160 len 1] > 57:
                        idx = idx + 1
                        s = s
                        u = u
                        continue 
                    idx = idx + 1
                    s = s
                    u = (10 * u) + uint8(mem[idx + (2 * ceil32(return_data.size)) + ceil32(arg3.length) + 160 len 1] - 48)
                    continue 
                idx = 2
                s = u
                while idx:
                    idx = idx - 1
                    s = 10 * s
                    continue 
                mem[(2 * ceil32(return_data.size)) + (2 * ceil32(arg3.length)) + 164] = arg2
                mem[(2 * ceil32(return_data.size)) + (2 * ceil32(arg3.length)) + 196] = s
                mem[(2 * ceil32(return_data.size)) + (2 * ceil32(arg3.length)) + 228] = arg4
                require ext_code.size(arg1)
                call arg1.priceCallback(bytes32 arg1, uint256 arg2, bool arg3) with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + (2 * ceil32(arg3.length)) + 164 len ceil32(return_data.size) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        _18 = mem[mem[96] + 128]
        mem[ceil32(return_data.size) + 96] = 0x5ad6ba4700000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.getChronus() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 96] <= 4294967296
        require mem[ceil32(return_data.size) + 96] + 32 <= return_data.size
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] <= 4294967296 and mem[ceil32(return_data.size) + 96] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 <= return_data.size
        require 1 < mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        if arg5 >= uint32(_18 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 160] + 800):
            mem[(2 * ceil32(return_data.size)) + 96] = 0x4564ea3600000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            call arg1.forceVoidExternal() with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size)]
        else:
            if arg5 <= uint32(_18 + mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 160] - 800):
                mem[(2 * ceil32(return_data.size)) + 96] = 0x4564ea3600000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                call arg1.forceVoidExternal() with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 100 len ceil32(return_data.size)]
            else:
                mem[(2 * ceil32(return_data.size)) + 128 len arg3.length] = arg3[all]
                mem[(2 * ceil32(return_data.size)) + arg3.length + 128] = 0
                idx = 0
                s = 0
                t = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    require idx < arg3.length
                    if mem[(2 * ceil32(return_data.size)) + idx + 128 len 1] == 46:
                        if mem[idx + (2 * ceil32(return_data.size)) + 128 len 1] < 48:
                            idx = idx + 1
                            s = 1
                            t = t
                            continue 
                        if mem[idx + (2 * ceil32(return_data.size)) + 128 len 1] > 57:
                            idx = idx + 1
                            s = 1
                            t = t
                            continue 
                        idx = idx + 1
                        s = 1
                        t = (10 * t) + uint8(mem[idx + (2 * ceil32(return_data.size)) + 128 len 1] - 48)
                        continue 
                    if mem[idx + (2 * ceil32(return_data.size)) + 128 len 1] < 48:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if mem[idx + (2 * ceil32(return_data.size)) + 128 len 1] > 57:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    idx = idx + 1
                    s = s
                    t = (10 * t) + uint8(mem[idx + (2 * ceil32(return_data.size)) + 128 len 1] - 48)
                    continue 
                idx = 2
                s = t
                while idx:
                    idx = idx - 1
                    s = 10 * s
                    continue 
                coinIndex[address(arg1)][arg2].field_0 = s
                mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + 160 len arg3.length] = arg3[all]
                mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + arg3.length + 160] = 0
                idx = 0
                s = 0
                u = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    require idx < arg3.length
                    if mem[(2 * ceil32(return_data.size)) + ceil32(arg3.length) + idx + 160 len 1] == 46:
                        if mem[idx + (2 * ceil32(return_data.size)) + ceil32(arg3.length) + 160 len 1] < 48:
                            idx = idx + 1
                            s = 1
                            u = u
                            continue 
                        if mem[idx + (2 * ceil32(return_data.size)) + ceil32(arg3.length) + 160 len 1] > 57:
                            idx = idx + 1
                            s = 1
                            u = u
                            continue 
                        idx = idx + 1
                        s = 1
                        u = (10 * u) + uint8(mem[idx + (2 * ceil32(return_data.size)) + ceil32(arg3.length) + 160 len 1] - 48)
                        continue 
                    if mem[idx + (2 * ceil32(return_data.size)) + ceil32(arg3.length) + 160 len 1] < 48:
                        idx = idx + 1
                        s = s
                        u = u
                        continue 
                    if mem[idx + (2 * ceil32(return_data.size)) + ceil32(arg3.length) + 160 len 1] > 57:
                        idx = idx + 1
                        s = s
                        u = u
                        continue 
                    idx = idx + 1
                    s = s
                    u = (10 * u) + uint8(mem[idx + (2 * ceil32(return_data.size)) + ceil32(arg3.length) + 160 len 1] - 48)
                    continue 
                idx = 2
                s = u
                while idx:
                    idx = idx - 1
                    s = 10 * s
                    continue 
                mem[(2 * ceil32(return_data.size)) + (2 * ceil32(arg3.length)) + 164] = arg2
                mem[(2 * ceil32(return_data.size)) + (2 * ceil32(arg3.length)) + 196] = s
                mem[(2 * ceil32(return_data.size)) + (2 * ceil32(arg3.length)) + 228] = arg4
                require ext_code.size(arg1)
                call arg1.priceCallback(bytes32 arg1, uint256 arg2, bool arg3) with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + (2 * ceil32(arg3.length)) + 164 len ceil32(return_data.size) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function __callback(bytes32 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 0
    mem[64] = ceil32(arg2.length) + 160
    if not stor1:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[64] = ceil32(arg2.length) + 224
            mem[ceil32(arg2.length) + 160] = 11
            mem[ceil32(arg2.length) + 192] = 'eth_mainnet'
            mem[0] = 2
            bool(stor2.length) = 0
            stor2.length.field_1 = 11
            stor2.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor1)
            call stor1.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != address(stor0):
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
            require ext_code.size(address(stor0))
            staticcall address(stor0).cbAddress() with:
                    gas gas_remaining wei
            mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == ext_call.return_data[12 len 20]
            idx = 0
            s = 0
            t = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < arg2.length
                if mem[idx + 128 len 1] == 46:
                    if mem[idx + 128 len 1] < 48:
                        idx = idx + 1
                        s = 1
                        t = t
                        continue 
                    if mem[idx + 128 len 1] > 57:
                        idx = idx + 1
                        s = 1
                        t = t
                        continue 
                    idx = idx + 1
                    s = 1
                    t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                    continue 
                if mem[idx + 128 len 1] < 48:
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                if mem[idx + 128 len 1] > 57:
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                idx = idx + 1
                s = s
                t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                continue 
            idx = 2
            s = t
            while idx:
                idx = idx - 1
                s = 10 * s
                continue 
            require s > 0
            mem[ceil32(arg2.length) + 224] = stor8[arg1]
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[64] = ceil32(arg2.length) + 224
                mem[ceil32(arg2.length) + 160] = 12
                mem[ceil32(arg2.length) + 192] = 'eth_ropsten3'
                mem[0] = 2
                bool(stor2.length) = 0
                stor2.length.field_1 = 12
                stor2.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != address(stor0):
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                require ext_code.size(address(stor0))
                staticcall address(stor0).cbAddress() with:
                        gas gas_remaining wei
                mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == ext_call.return_data[12 len 20]
                idx = 0
                s = 0
                t = 0
                while idx < arg2.length:
                    require idx < arg2.length
                    require idx < arg2.length
                    if mem[idx + 128 len 1] == 46:
                        if mem[idx + 128 len 1] < 48:
                            idx = idx + 1
                            s = 1
                            t = t
                            continue 
                        if mem[idx + 128 len 1] > 57:
                            idx = idx + 1
                            s = 1
                            t = t
                            continue 
                        idx = idx + 1
                        s = 1
                        t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                        continue 
                    if mem[idx + 128 len 1] < 48:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if mem[idx + 128 len 1] > 57:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    idx = idx + 1
                    s = s
                    t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                    continue 
                idx = 2
                s = t
                while idx:
                    idx = idx - 1
                    s = 10 * s
                    continue 
                require s > 0
                mem[ceil32(arg2.length) + 224] = stor8[arg1]
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 160] = 9
                    mem[ceil32(arg2.length) + 192] = 'eth_kovan'
                    mem[0] = 2
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 9
                    stor2.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] != address(stor0):
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).cbAddress() with:
                            gas gas_remaining wei
                    mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require msg.sender == ext_call.return_data[12 len 20]
                    idx = 0
                    s = 0
                    t = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        require idx < arg2.length
                        if mem[idx + 128 len 1] == 46:
                            if mem[idx + 128 len 1] < 48:
                                idx = idx + 1
                                s = 1
                                t = t
                                continue 
                            if mem[idx + 128 len 1] > 57:
                                idx = idx + 1
                                s = 1
                                t = t
                                continue 
                            idx = idx + 1
                            s = 1
                            t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                            continue 
                        if mem[idx + 128 len 1] < 48:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if mem[idx + 128 len 1] > 57:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        idx = idx + 1
                        s = s
                        t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                        continue 
                    idx = 2
                    s = t
                    while idx:
                        idx = idx - 1
                        s = 10 * s
                        continue 
                    require s > 0
                    mem[ceil32(arg2.length) + 224] = stor8[arg1]
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != address(stor0):
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).cbAddress() with:
                                gas gas_remaining wei
                        mem[ceil32(arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.sender == ext_call.return_data[12 len 20]
                        idx = 0
                        s = 0
                        t = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            require idx < arg2.length
                            if mem[idx + 128 len 1] == 46:
                                if mem[idx + 128 len 1] < 48:
                                    idx = idx + 1
                                    s = 1
                                    t = t
                                    continue 
                                if mem[idx + 128 len 1] > 57:
                                    idx = idx + 1
                                    s = 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                s = 1
                                t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                                continue 
                            if mem[idx + 128 len 1] < 48:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            if mem[idx + 128 len 1] > 57:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            idx = idx + 1
                            s = s
                            t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                            continue 
                        idx = 2
                        s = t
                        while idx:
                            idx = idx - 1
                            s = 10 * s
                            continue 
                        require s > 0
                        mem[ceil32(arg2.length) + 160] = stor8[arg1]
                    else:
                        stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 160] = 11
                        mem[ceil32(arg2.length) + 192] = 'eth_rinkeby'
                        mem[0] = 2
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != address(stor0):
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).cbAddress() with:
                                gas gas_remaining wei
                        mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.sender == ext_call.return_data[12 len 20]
                        idx = 0
                        s = 0
                        t = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            require idx < arg2.length
                            if mem[idx + 128 len 1] == 46:
                                if mem[idx + 128 len 1] < 48:
                                    idx = idx + 1
                                    s = 1
                                    t = t
                                    continue 
                                if mem[idx + 128 len 1] > 57:
                                    idx = idx + 1
                                    s = 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                s = 1
                                t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                                continue 
                            if mem[idx + 128 len 1] < 48:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            if mem[idx + 128 len 1] > 57:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            idx = idx + 1
                            s = s
                            t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                            continue 
                        idx = 2
                        s = t
                        while idx:
                            idx = idx - 1
                            s = 10 * s
                            continue 
                        require s > 0
                        mem[ceil32(arg2.length) + 224] = stor8[arg1]
    else:
        if ext_code.size(stor1):
            call stor1.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != address(stor0):
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
            require ext_code.size(address(stor0))
            staticcall address(stor0).cbAddress() with:
                    gas gas_remaining wei
            mem[ceil32(arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == ext_call.return_data[12 len 20]
            idx = 0
            s = 0
            t = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < arg2.length
                if mem[idx + 128 len 1] == 46:
                    if mem[idx + 128 len 1] < 48:
                        idx = idx + 1
                        s = 1
                        t = t
                        continue 
                    if mem[idx + 128 len 1] > 57:
                        idx = idx + 1
                        s = 1
                        t = t
                        continue 
                    idx = idx + 1
                    s = 1
                    t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                    continue 
                if mem[idx + 128 len 1] < 48:
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                if mem[idx + 128 len 1] > 57:
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                idx = idx + 1
                s = s
                t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                continue 
            idx = 2
            s = t
            while idx:
                idx = idx - 1
                s = 10 * s
                continue 
            require s > 0
            mem[ceil32(arg2.length) + 160] = stor8[arg1]
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[64] = ceil32(arg2.length) + 224
                mem[ceil32(arg2.length) + 160] = 11
                mem[ceil32(arg2.length) + 192] = 'eth_mainnet'
                mem[0] = 2
                bool(stor2.length) = 0
                stor2.length.field_1 = 11
                stor2.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != address(stor0):
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                require ext_code.size(address(stor0))
                staticcall address(stor0).cbAddress() with:
                        gas gas_remaining wei
                mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == ext_call.return_data[12 len 20]
                idx = 0
                s = 0
                t = 0
                while idx < arg2.length:
                    require idx < arg2.length
                    require idx < arg2.length
                    if mem[idx + 128 len 1] == 46:
                        if mem[idx + 128 len 1] < 48:
                            idx = idx + 1
                            s = 1
                            t = t
                            continue 
                        if mem[idx + 128 len 1] > 57:
                            idx = idx + 1
                            s = 1
                            t = t
                            continue 
                        idx = idx + 1
                        s = 1
                        t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                        continue 
                    if mem[idx + 128 len 1] < 48:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if mem[idx + 128 len 1] > 57:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    idx = idx + 1
                    s = s
                    t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                    continue 
                idx = 2
                s = t
                while idx:
                    idx = idx - 1
                    s = 10 * s
                    continue 
                require s > 0
                mem[ceil32(arg2.length) + 224] = stor8[arg1]
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 160] = 12
                    mem[ceil32(arg2.length) + 192] = 'eth_ropsten3'
                    mem[0] = 2
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 12
                    stor2.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] != address(stor0):
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).cbAddress() with:
                            gas gas_remaining wei
                    mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require msg.sender == ext_call.return_data[12 len 20]
                    idx = 0
                    s = 0
                    t = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        require idx < arg2.length
                        if mem[idx + 128 len 1] == 46:
                            if mem[idx + 128 len 1] < 48:
                                idx = idx + 1
                                s = 1
                                t = t
                                continue 
                            if mem[idx + 128 len 1] > 57:
                                idx = idx + 1
                                s = 1
                                t = t
                                continue 
                            idx = idx + 1
                            s = 1
                            t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                            continue 
                        if mem[idx + 128 len 1] < 48:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if mem[idx + 128 len 1] > 57:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        idx = idx + 1
                        s = s
                        t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                        continue 
                    idx = 2
                    s = t
                    while idx:
                        idx = idx - 1
                        s = 10 * s
                        continue 
                    require s > 0
                    mem[ceil32(arg2.length) + 224] = stor8[arg1]
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 160] = 9
                        mem[ceil32(arg2.length) + 192] = 'eth_kovan'
                        mem[0] = 2
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 9
                        stor2.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != address(stor0):
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).cbAddress() with:
                                gas gas_remaining wei
                        mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.sender == ext_call.return_data[12 len 20]
                        idx = 0
                        s = 0
                        t = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            require idx < arg2.length
                            if mem[idx + 128 len 1] == 46:
                                if mem[idx + 128 len 1] < 48:
                                    idx = idx + 1
                                    s = 1
                                    t = t
                                    continue 
                                if mem[idx + 128 len 1] > 57:
                                    idx = idx + 1
                                    s = 1
                                    t = t
                                    continue 
                                idx = idx + 1
                                s = 1
                                t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                                continue 
                            if mem[idx + 128 len 1] < 48:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            if mem[idx + 128 len 1] > 57:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            idx = idx + 1
                            s = s
                            t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                            continue 
                        idx = 2
                        s = t
                        while idx:
                            idx = idx - 1
                            s = 10 * s
                            continue 
                        require s > 0
                        mem[ceil32(arg2.length) + 224] = stor8[arg1]
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != address(stor0):
                                require ext_code.size(stor1)
                                call stor1.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                            require ext_code.size(address(stor0))
                            staticcall address(stor0).cbAddress() with:
                                    gas gas_remaining wei
                            mem[ceil32(arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.sender == ext_call.return_data[12 len 20]
                            idx = 0
                            s = 0
                            t = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                require idx < arg2.length
                                if mem[idx + 128 len 1] == 46:
                                    if mem[idx + 128 len 1] < 48:
                                        idx = idx + 1
                                        s = 1
                                        t = t
                                        continue 
                                    if mem[idx + 128 len 1] > 57:
                                        idx = idx + 1
                                        s = 1
                                        t = t
                                        continue 
                                    idx = idx + 1
                                    s = 1
                                    t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                                    continue 
                                if mem[idx + 128 len 1] < 48:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                if mem[idx + 128 len 1] > 57:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                idx = idx + 1
                                s = s
                                t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                                continue 
                            idx = 2
                            s = t
                            while idx:
                                idx = idx - 1
                                s = 10 * s
                                continue 
                            require s > 0
                            mem[ceil32(arg2.length) + 160] = stor8[arg1]
                        else:
                            stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[64] = ceil32(arg2.length) + 224
                            mem[ceil32(arg2.length) + 160] = 11
                            mem[ceil32(arg2.length) + 192] = 'eth_rinkeby'
                            mem[0] = 2
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 11
                            stor2.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != address(stor0):
                                require ext_code.size(stor1)
                                call stor1.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                            require ext_code.size(address(stor0))
                            staticcall address(stor0).cbAddress() with:
                                    gas gas_remaining wei
                            mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.sender == ext_call.return_data[12 len 20]
                            idx = 0
                            s = 0
                            t = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                require idx < arg2.length
                                if mem[idx + 128 len 1] == 46:
                                    if mem[idx + 128 len 1] < 48:
                                        idx = idx + 1
                                        s = 1
                                        t = t
                                        continue 
                                    if mem[idx + 128 len 1] > 57:
                                        idx = idx + 1
                                        s = 1
                                        t = t
                                        continue 
                                    idx = idx + 1
                                    s = 1
                                    t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                                    continue 
                                if mem[idx + 128 len 1] < 48:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                if mem[idx + 128 len 1] > 57:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                idx = idx + 1
                                s = s
                                t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                                continue 
                            idx = 2
                            s = t
                            while idx:
                                idx = idx - 1
                                s = 10 * s
                                continue 
                            require s > 0
                            mem[ceil32(arg2.length) + 224] = stor8[arg1]
    emit RemoteBettingCloseInfo(stor8[arg1]);
    if arg1 == coinIndex[stor8[arg1]][stor7[stor8[arg1]][arg1]].field_512:
        mem[32] = sha3(stor8[arg1], 6)
        if coinIndex[stor8[arg1]][stor7[stor8[arg1]][arg1]].field_0 <= 0:
            idx = 0
            s = 0
            t = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < arg2.length
                if mem[idx + 128 len 1] == 46:
                    if mem[idx + 128 len 1] < 48:
                        idx = idx + 1
                        s = 1
                        t = t
                        continue 
                    if mem[idx + 128 len 1] > 57:
                        idx = idx + 1
                        s = 1
                        t = t
                        continue 
                    idx = idx + 1
                    s = 1
                    t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                    continue 
                if mem[idx + 128 len 1] < 48:
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                if mem[idx + 128 len 1] > 57:
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                idx = idx + 1
                s = s
                t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                continue 
            idx = 2
            s = t
            while idx:
                idx = idx - 1
                s = 10 * s
                continue 
            coinIndex[stor8[arg1]][stor7[stor8[arg1]][arg1]].field_0 = s
            require ext_code.size(stor8[arg1])
            call stor8[arg1].priceCallback(bytes32 arg1, uint256 arg2, bool arg3) with:
                 gas gas_remaining wei
                args stor7[stor8[arg1]][arg1], s, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg1 == coinIndex[stor8[arg1]][stor7[stor8[arg1]][arg1]].field_768:
            mem[32] = sha3(stor8[arg1], 6)
            if coinIndex[stor8[arg1]][stor7[stor8[arg1]][arg1]].field_256 <= 0:
                idx = 0
                s = 0
                t = 0
                while idx < arg2.length:
                    require idx < arg2.length
                    require idx < arg2.length
                    if mem[idx + 128 len 1] == 46:
                        if mem[idx + 128 len 1] < 48:
                            idx = idx + 1
                            s = 1
                            t = t
                            continue 
                        if mem[idx + 128 len 1] > 57:
                            idx = idx + 1
                            s = 1
                            t = t
                            continue 
                        idx = idx + 1
                        s = 1
                        t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                        continue 
                    if mem[idx + 128 len 1] < 48:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if mem[idx + 128 len 1] > 57:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    idx = idx + 1
                    s = s
                    t = (10 * t) + uint8(mem[idx + 128 len 1] - 48)
                    continue 
                idx = 2
                s = t
                while idx:
                    idx = idx - 1
                    s = 10 * s
                    continue 
                coinIndex[stor8[arg1]][stor7[stor8[arg1]][arg1]].field_256 = s
                require ext_code.size(stor8[arg1])
                call stor8[arg1].priceCallback(bytes32 arg1, uint256 arg2, bool arg3) with:
                     gas gas_remaining wei
                    args stor7[stor8[arg1]][arg1], s, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
