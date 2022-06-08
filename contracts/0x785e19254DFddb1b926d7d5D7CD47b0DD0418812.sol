contract main {




// =====================  Runtime code  =====================


#
#  - sub_c93fe89e(?)
#  - sub_dd0f0159(?)
#
const getBalance = eth.balance(this.address)

const contractName = 'OraclizeContract'


address owner;
uint256 stor3;
address stor4;
address stor5;
address stor6;
address stor7;
uint256 stor7;
array of uint256 stor8;
uint8 stor11;
array of struct sub_f60b9701;
array of struct stor14;

function owner() {
    return owner
}

function sub_f60b9701(?) {
    return sub_f60b9701[0 len sub_f60b9701.length].field_0
}

function _fallback() payable {
  stop
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
    emit CompilerSilencer()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function register() {
    require msg.sender == owner
    require ext_code.size(stor5)
    call stor5.register(bytes32 arg1, string arg2, string arg3) with:
         gas gas_remaining wei
        args stor3, 96, 160, 15, 'OraclizeFeature' << 136, 1, uint8('1')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4fd7dcfa(?) {
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3('OraclizeContract', Mask(128, 128, 'FreeTransferCounts') >> 128, Mask(16, 112, 'FreeTransferCounts') >> 112), arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function __callback(bytes32 arg1, string arg2) {
    if not stor6:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor6 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor8.length) = 0
            stor8.length.field_1 = 11
            stor8.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor8.length + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor6 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor8.length) = 0
                stor8.length.field_1 = 12
                stor8.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor8.length + 31 / 32 > idx:
                    stor8[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor6 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor8.length) = 0
                    stor8.length.field_1 = 9
                    stor8.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        stor8[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor6 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor6 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor6 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor6 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor8.length) = 0
                        stor8.length.field_1 = 11
                        stor8.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            stor8[idx].field_0 = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor6)
    else:
        if not ext_code.size(stor6):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor6 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor8.length) = 0
                stor8.length.field_1 = 11
                stor8.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor8.length + 31 / 32 > idx:
                    stor8[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor6 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor8.length) = 0
                    stor8.length.field_1 = 12
                    stor8.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        stor8[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor6 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor8.length) = 0
                        stor8.length.field_1 = 9
                        stor8.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            stor8[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor6 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor6 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor6 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor6 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor8.length) = 0
                            stor8.length.field_1 = 11
                            stor8.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor8.length + 31 / 32 > idx:
                                stor8[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor6)
    call stor6.getAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(stor7):
        require ext_code.size(stor6)
        call stor6.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(address(stor7))
    call address(stor7).cbAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    stor14[].field_0 = Array(len=arg2.length, data=arg2[all])
    emit LogPriceUpdated(Array(len=arg2.length, data=arg2[all]));
}

function getFee(uint256 arg1) {
    mem[96] = 16
    mem[128] = 'OraclizeContract'
    mem[192 len 16] = 'OraclizeContract'
    mem[208] = 'FreeTransferCounts'
    mem[160] = 34
    mem[258] = sha3('OraclizeContract', Mask(128, 128, 'FreeTransferCounts') >> 128, Mask(16, 112, 'FreeTransferCounts') >> 112)
    mem[290] = address(msg.sender)
    mem[226] = 52
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3('OraclizeContract', Mask(128, 128, 'FreeTransferCounts') >> 128, Mask(16, 112, 'FreeTransferCounts') >> 112), msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < stor11:
        return 0
    mem[64] = ceil32(stor14.length) + 342
    mem[310] = stor14.length
    mem[0] = 14
    mem[342] = uint256(stor14.field_0)
    idx = 342
    s = 0
    while stor14.length + 310 > idx:
        mem[idx + 32] = stor14[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < stor14.length:
        require idx < stor14.length
        if mem[idx + 342 len 1] < 48:
            if mem[idx + 342 len 1] != 46:
                s = mem[idx + 342 len 1]
                idx = idx + 1
                s = s
                t = t
                continue 
            s = mem[idx + 342 len 1]
            idx = idx + 1
            s = stor14.length + -idx - 1
            t = t
            continue 
        if mem[idx + 342 len 1] > 57:
            if mem[idx + 342 len 1] != 46:
                s = mem[idx + 342 len 1]
                idx = idx + 1
                s = s
                t = t
                continue 
            s = mem[idx + 342 len 1]
            idx = idx + 1
            s = stor14.length + -idx - 1
            t = t
            continue 
        if mem[idx + 342 len 1] != 46:
            s = mem[idx + 342 len 1]
            idx = idx + 1
            s = s
            t = (10 * t) + mem[idx + 342 len 1] - 48
            continue 
        s = mem[idx + 342 len 1]
        idx = idx + 1
        s = stor14.length + -idx - 1
        t = (10 * t) + mem[idx + 342 len 1] - 48
        continue 
    mem[ceil32(stor14.length) + 374] = uint256(sub_f60b9701.field_0)
    idx = ceil32(stor14.length) + 374
    u = 0
    while ceil32(stor14.length) + sub_f60b9701.length + 342 > idx:
        mem[idx + 32] = sub_f60b9701[u].field_256
        idx = idx + 32
        u = u + 1
        continue 
    u = 0
    idx = 0
    u = 0
    v = 0
    while idx < sub_f60b9701.length:
        require idx < sub_f60b9701.length
        if mem[idx + ceil32(stor14.length) + 374 len 1] < 48:
            if mem[idx + ceil32(stor14.length) + 374 len 1] != 46:
                u = mem[idx + ceil32(stor14.length) + 374 len 1]
                idx = idx + 1
                u = u
                v = v
                continue 
            u = mem[idx + ceil32(stor14.length) + 374 len 1]
            idx = idx + 1
            u = sub_f60b9701.length + -idx - 1
            v = v
            continue 
        if mem[idx + ceil32(stor14.length) + 374 len 1] > 57:
            if mem[idx + ceil32(stor14.length) + 374 len 1] != 46:
                u = mem[idx + ceil32(stor14.length) + 374 len 1]
                idx = idx + 1
                u = u
                v = v
                continue 
            u = mem[idx + ceil32(stor14.length) + 374 len 1]
            idx = idx + 1
            u = sub_f60b9701.length + -idx - 1
            v = v
            continue 
        if mem[idx + ceil32(stor14.length) + 374 len 1] != 46:
            u = mem[idx + ceil32(stor14.length) + 374 len 1]
            idx = idx + 1
            u = u
            v = (10 * v) + mem[idx + ceil32(stor14.length) + 374 len 1] - 48
            continue 
        u = mem[idx + ceil32(stor14.length) + 374 len 1]
        idx = idx + 1
        u = sub_f60b9701.length + -idx - 1
        v = (10 * v) + mem[idx + ceil32(stor14.length) + 374 len 1] - 48
        continue 
    require t
    require 10^u
    if not stor6:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor6 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor8.length) = 0
            stor8.length.field_1 = 11
            stor8.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor8.length + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor6 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor8.length) = 0
                stor8.length.field_1 = 12
                stor8.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor8.length + 31 / 32 > idx:
                    stor8[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor6 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor8.length) = 0
                    stor8.length.field_1 = 9
                    stor8.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        stor8[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor6 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor6 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor6 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor6 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor8.length) = 0
                        stor8.length.field_1 = 11
                        stor8.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            stor8[idx].field_0 = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor6)
        call stor6.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != address(stor7):
            require ext_code.size(stor6)
            call stor6.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            address(stor7) = address(ext_call.return_data[0])
    else:
        if ext_code.size(stor6):
            call stor6.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) == address(stor7):
                var56001 = 32
            else:
                require ext_code.size(stor6)
                call stor6.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                address(stor7) = address(ext_call.return_data[0])
                var60001 = 32
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor6 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor8.length) = 0
                stor8.length.field_1 = 11
                stor8.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor8.length + 31 / 32 > idx:
                    stor8[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor6 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor8.length) = 0
                    stor8.length.field_1 = 12
                    stor8.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        stor8[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor6 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor8.length) = 0
                        stor8.length.field_1 = 9
                        stor8.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            stor8[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor6 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor6 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor6 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor6 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor8.length) = 0
                            stor8.length.field_1 = 11
                            stor8.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor8.length + 31 / 32 > idx:
                                stor8[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor6)
            call stor6.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != address(stor7):
                require ext_code.size(stor6)
                call stor6.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                address(stor7) = address(ext_call.return_data[0])
    require ext_code.size(address(stor7))
    call address(stor7).getPrice(string arg1) with:
         gas gas_remaining wei
        args 'URL'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((1001 * 10^18 / t * 10^s * v / 10^u * arg1) + (1001 * ext_call.return_data[0]) / 1000)
}



}
