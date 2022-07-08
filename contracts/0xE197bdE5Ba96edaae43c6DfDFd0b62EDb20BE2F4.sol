contract main {




// =====================  Runtime code  =====================


#
#  - sub_528faffe(?)
#  - sub_c93fe89e(?)
#
const contractName = 'OraclizeContract'

const contractVersion = '2.0'


address developerAddress;
address stor1;
uint256 stor3;
address stor4;
address stor6;
address stor7;
uint256 stor7;
array of uint256 stor8;
uint256 transferCount;
address sub_ea8a4593Address;
array of struct sub_54bef47a;
array of struct ethRate;

function getTransferCount() {
    return transferCount
}

function sub_54bef47a(?) {
    return sub_54bef47a[0 len sub_54bef47a.length].field_0
}

function getEthRate() {
    return ethRate[0 len ethRate.length].field_0
}

function developer() {
    return developerAddress
}

function sub_ea8a4593(?) {
    if developerAddress != msg.sender:
        revert with 0, 'Only an Developer required'
    return sub_ea8a4593Address
}

function destroyContract() {
    if developerAddress != msg.sender:
        revert with 0, 'Only an Developer required'
    selfdestruct(developerAddress)
}

function _fallback() payable {
  stop
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
    emit CompilerSilencer()
}

function transferDeveloper(address arg1) {
    if developerAddress != msg.sender:
        revert with 0, 'Only an Developer required'
    if not arg1:
        revert with 0, 'This address is 0!'
    emit 0xd734ca01: developerAddress, arg1
    developerAddress = arg1
}

function sub_139f122d(?) {
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(120, 0, 'OraclizeFeature', 0)), 'FreeTransferCounts'), arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function register() {
    if developerAddress != msg.sender:
        revert with 0, 'Only an Developer required'
    require ext_code.size(stor1)
    call stor1.register(bytes32 arg1, string arg2, string arg3) with:
         gas gas_remaining wei
        args stor3, 96, 160, 15, 'OraclizeFeature' << 136, 3, '2.0' % 16777216
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    ethRate[].field_0 = Array(len=arg2.length, data=arg2[all])
    emit LogPriceUpdated(Array(len=arg2.length, data=arg2[all]));
}

function getFee(uint256 arg1) {
    mem[96] = 15
    mem[128] = 'OraclizeFeature'
    mem[192 len 15] = 'OraclizeFeature'
    mem[160] = 15
    mem[207 len 0] = None
    mem[239] = sha3(Mask(120, 0, 'OraclizeFeature', 0))
    mem[271] = 'FreeTransferCounts'
    mem[207] = 50
    mem[321] = sha3(sha3(Mask(120, 0, 'OraclizeFeature', 0)), 'FreeTransferCounts')
    mem[353] = address(msg.sender)
    mem[289] = 52
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(120, 0, 'OraclizeFeature', 0)), 'FreeTransferCounts'), msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < transferCount:
        return 0
    mem[64] = ceil32(ethRate.length) + 405
    mem[373] = ethRate.length
    mem[0] = 15
    mem[405] = uint256(ethRate.field_0)
    idx = 405
    s = 0
    while ethRate.length + 373 > idx:
        mem[idx + 32] = ethRate[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < ethRate.length:
        require idx < ethRate.length
        if mem[idx + 405 len 1] < 48:
            if mem[idx + 405 len 1] != 46:
                s = mem[idx + 405 len 1]
                idx = idx + 1
                s = s
                t = t
                continue 
            s = mem[idx + 405 len 1]
            idx = idx + 1
            s = ethRate.length + -idx - 1
            t = t
            continue 
        if mem[idx + 405 len 1] > 57:
            if mem[idx + 405 len 1] != 46:
                s = mem[idx + 405 len 1]
                idx = idx + 1
                s = s
                t = t
                continue 
            s = mem[idx + 405 len 1]
            idx = idx + 1
            s = ethRate.length + -idx - 1
            t = t
            continue 
        if mem[idx + 405 len 1] != 46:
            s = mem[idx + 405 len 1]
            idx = idx + 1
            s = s
            t = (10 * t) + mem[idx + 405 len 1] - 48
            continue 
        s = mem[idx + 405 len 1]
        idx = idx + 1
        s = ethRate.length + -idx - 1
        t = (10 * t) + mem[idx + 405 len 1] - 48
        continue 
    mem[ceil32(ethRate.length) + 437] = uint256(sub_54bef47a.field_0)
    idx = ceil32(ethRate.length) + 437
    u = 0
    while ceil32(ethRate.length) + sub_54bef47a.length + 405 > idx:
        mem[idx + 32] = sub_54bef47a[u].field_256
        idx = idx + 32
        u = u + 1
        continue 
    u = 0
    idx = 0
    u = 0
    v = 0
    while idx < sub_54bef47a.length:
        require idx < sub_54bef47a.length
        if mem[idx + ceil32(ethRate.length) + 437 len 1] < 48:
            if mem[idx + ceil32(ethRate.length) + 437 len 1] != 46:
                u = mem[idx + ceil32(ethRate.length) + 437 len 1]
                idx = idx + 1
                u = u
                v = v
                continue 
            u = mem[idx + ceil32(ethRate.length) + 437 len 1]
            idx = idx + 1
            u = sub_54bef47a.length + -idx - 1
            v = v
            continue 
        if mem[idx + ceil32(ethRate.length) + 437 len 1] > 57:
            if mem[idx + ceil32(ethRate.length) + 437 len 1] != 46:
                u = mem[idx + ceil32(ethRate.length) + 437 len 1]
                idx = idx + 1
                u = u
                v = v
                continue 
            u = mem[idx + ceil32(ethRate.length) + 437 len 1]
            idx = idx + 1
            u = sub_54bef47a.length + -idx - 1
            v = v
            continue 
        if mem[idx + ceil32(ethRate.length) + 437 len 1] != 46:
            u = mem[idx + ceil32(ethRate.length) + 437 len 1]
            idx = idx + 1
            u = u
            v = (10 * v) + mem[idx + ceil32(ethRate.length) + 437 len 1] - 48
            continue 
        u = mem[idx + ceil32(ethRate.length) + 437 len 1]
        idx = idx + 1
        u = sub_54bef47a.length + -idx - 1
        v = (10 * v) + mem[idx + ceil32(ethRate.length) + 437 len 1] - 48
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
                var59001 = 32
            else:
                require ext_code.size(stor6)
                call stor6.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                address(stor7) = address(ext_call.return_data[0])
                var63001 = 32
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
        args ''
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((1001 * 10^18 / t * 10^s * v / 10^u * arg1) + (1001 * ext_call.return_data[0]) / 1000)
}



}
