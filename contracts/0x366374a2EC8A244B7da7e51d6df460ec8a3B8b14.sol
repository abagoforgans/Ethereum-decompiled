contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;
address stor5;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor9 = 60000
    stor10 = 40000
    stor11 = 100
    require not msg.value
    stor5 = msg.sender
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
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
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
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
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
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
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor0)
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
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
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
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
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
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
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 11
                            stor2.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
         gas gas_remaining - 710 wei
        args 0x1100000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    return code.data[1764 len 8879]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - sub_70675489(?)
#
const sub_71c40de6(?) = -999999999

const sub_7883168f(?) = 999999999

const VERSION = 4


address stor0;
uint256 stor1;
array of uint256 stor2;
address owner;
mapping of uint8 stor6;
mapping of struct stor7;
uint256 sub_8cad44a6;
uint256 sub_45ce1bae;
uint256 sub_6ba199cc;

function sub_42ad5c86(?) {
    require stor6[address(msg.sender)]
    return sub_42ad5c86[address(msg.sender)][('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128 or ('signextend', 15, ('signextend', 15, ('param', 'arg2')))].field_256
}

function sub_45ce1bae(?) {
    return sub_45ce1bae
}

function sub_6ba199cc(?) {
    return sub_6ba199cc
}

function sub_836abd40(?) {
    require owner == msg.sender
    require arg4 < sub_42ad5c86[address(arg1)][('signextend', 15, ('signextend', 15, ('param', 'arg2'))) << 128 or ('signextend', 15, ('signextend', 15, ('param', 'arg3')))].field_0
    return sub_42ad5c86[address(arg1)][('signextend', 15, ('signextend', 15, ('param', 'arg2'))) << 128 or ('signextend', 15, ('signextend', 15, ('param', 'arg3')))][arg4].field_0, 
           sub_42ad5c86[address(arg1)][('signextend', 15, ('signextend', 15, ('param', 'arg2'))) << 128 or ('signextend', 15, ('signextend', 15, ('param', 'arg3')))].field_0,
           sub_42ad5c86[address(arg1)][('signextend', 15, ('signextend', 15, ('param', 'arg2'))) << 128 or ('signextend', 15, ('signextend', 15, ('param', 'arg3')))].field_256
}

function sub_8cad44a6(?) {
    return sub_8cad44a6
}

function owner() {
    return owner
}

function isMember(address arg1) {
    return bool(stor6[address(arg1)])
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_010c46bd(?) {
    return ((arg1 * sub_45ce1bae) + sub_8cad44a6)
}

function sub_555f6dbb(?) {
    require owner == msg.sender
    require arg1 > 0
    sub_6ba199cc = arg1
}

function addMember(address arg1) {
    require owner == msg.sender
    stor6[address(arg1)] = 1
    emit MemberAdded(arg1);
}

function removeMember(address arg1) {
    require owner == msg.sender
    stor6[address(arg1)] = 0
    emit MemberRemoved(arg1);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    require arg1
    owner = arg1
    emit OwnerChanged(owner, arg1);
}

function setOraclizeGasLimit(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1 > 0
    require arg2 > 0
    sub_45ce1bae = arg1
    sub_8cad44a6 = arg2
}

function withdraw(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= eth.balance(this.address)
    if arg1:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_b92615f2(?) {
    require stor6[address(msg.sender)]
    require sub_42ad5c86[address(msg.sender)][('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128 or ('signextend', 15, ('signextend', 15, ('param', 'arg2')))].field_256 > 0
    require sub_42ad5c86[address(msg.sender)][('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128 or ('signextend', 15, ('signextend', 15, ('param', 'arg2')))].field_0 - sub_42ad5c86[address(msg.sender)][('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128 or ('signextend', 15, ('signextend', 15, ('param', 'arg2')))].field_256 < sub_42ad5c86[address(msg.sender)][('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128 or ('signextend', 15, ('signextend', 15, ('param', 'arg2')))].field_0
    sub_42ad5c86[address(msg.sender)][('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128 or ('signextend', 15, ('signextend', 15, ('param', 'arg2')))].field_256--
    return stor[sub_42ad5c86[address(msg.sender)][('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128 or ('signextend', 15, ('signextend', 15, ('param', 'arg2')))].field_0 - sub_42ad5c86[address(msg.sender)][('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128 or ('signextend', 15, ('signextend', 15, ('param', 'arg2')))].field_256 + ('map', ('or', ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('param', 'arg1')))), ('signextend', 15, ('signextend', 15, ('param', 'arg2')))), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_42ad5c86', 8)))].field_0
}

function getFee(uint256 arg1) {
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor2.length) = 0
            uint255(stor2.length.field_1) = 11
            Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 12
                Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 9
                    Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 11
                        Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor0)
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 11
                Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 12
                    Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 9
                        Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor2.length) = 0
                            uint255(stor2.length.field_1) = 11
                            Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 'URL', (arg1 * sub_45ce1bae) + sub_8cad44a6
    require ext_call.success
    return (ext_call.return_data[0] + 10^14)
}

function __callback(bytes32 arg1, string arg2) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if arg2.length < ceil32(arg2.length):
        mem[ceil32(arg2.length) + 128] = 0
        if not stor0:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[ceil32(arg2.length) + 160] = 11
                mem[ceil32(arg2.length) + 192] = 'eth_mainnet'
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 11
                Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                mem[ceil32(arg2.length) + 256] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                require address(stor7[arg1].field_0)
                mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                mem[32] = sha3(address(stor7[arg1].field_0), 8)
                mem[64] = ceil32(arg2.length) + 256
                mem[ceil32(arg2.length) + 224] = 0
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[ceil32(arg2.length) + 160] = 12
                    mem[ceil32(arg2.length) + 192] = 'eth_ropsten3'
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 12
                    Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                    mem[ceil32(arg2.length) + 256] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    require address(stor7[arg1].field_0)
                    mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                    mem[32] = sha3(address(stor7[arg1].field_0), 8)
                    mem[64] = ceil32(arg2.length) + 256
                    mem[ceil32(arg2.length) + 224] = 0
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[ceil32(arg2.length) + 160] = 9
                        mem[ceil32(arg2.length) + 192] = 'eth_kovan'
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 9
                        Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                        mem[ceil32(arg2.length) + 256] = 0
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        require address(stor7[arg1].field_0)
                        mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                        mem[32] = sha3(address(stor7[arg1].field_0), 8)
                        mem[64] = ceil32(arg2.length) + 256
                        mem[ceil32(arg2.length) + 224] = 0
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                            mem[ceil32(arg2.length) + 192] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            require address(stor7[arg1].field_0)
                            mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                            mem[32] = sha3(address(stor7[arg1].field_0), 8)
                            mem[64] = ceil32(arg2.length) + 192
                            mem[ceil32(arg2.length) + 160] = 0
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[ceil32(arg2.length) + 160] = 11
                            mem[ceil32(arg2.length) + 192] = 'eth_rinkeby'
                            bool(stor2.length) = 0
                            uint255(stor2.length.field_1) = 11
                            Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                            mem[ceil32(arg2.length) + 256] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            require address(stor7[arg1].field_0)
                            mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                            mem[32] = sha3(address(stor7[arg1].field_0), 8)
                            mem[64] = ceil32(arg2.length) + 256
                            mem[ceil32(arg2.length) + 224] = 0
        else:
            if ext_code.size(stor0):
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                mem[ceil32(arg2.length) + 192] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                require address(stor7[arg1].field_0)
                mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                mem[32] = sha3(address(stor7[arg1].field_0), 8)
                mem[64] = ceil32(arg2.length) + 192
                mem[ceil32(arg2.length) + 160] = 0
            else:
                if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                    stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                    mem[ceil32(arg2.length) + 160] = 11
                    mem[ceil32(arg2.length) + 192] = 'eth_mainnet'
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 11
                    Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                    mem[ceil32(arg2.length) + 256] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    require address(stor7[arg1].field_0)
                    mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                    mem[32] = sha3(address(stor7[arg1].field_0), 8)
                    mem[64] = ceil32(arg2.length) + 256
                    mem[ceil32(arg2.length) + 224] = 0
                else:
                    if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                        stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                        mem[ceil32(arg2.length) + 160] = 12
                        mem[ceil32(arg2.length) + 192] = 'eth_ropsten3'
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 12
                        Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                        mem[ceil32(arg2.length) + 256] = 0
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        require address(stor7[arg1].field_0)
                        mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                        mem[32] = sha3(address(stor7[arg1].field_0), 8)
                        mem[64] = ceil32(arg2.length) + 256
                        mem[ceil32(arg2.length) + 224] = 0
                    else:
                        if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                            stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                            mem[ceil32(arg2.length) + 160] = 9
                            mem[ceil32(arg2.length) + 192] = 'eth_kovan'
                            bool(stor2.length) = 0
                            uint255(stor2.length.field_1) = 9
                            Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                            mem[ceil32(arg2.length) + 256] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            require address(stor7[arg1].field_0)
                            mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                            mem[32] = sha3(address(stor7[arg1].field_0), 8)
                            mem[64] = ceil32(arg2.length) + 256
                            mem[ceil32(arg2.length) + 224] = 0
                        else:
                            if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                    stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                else:
                                    if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                        stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                    else:
                                        if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                            stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                mem[ceil32(arg2.length) + 192] = 0
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).cbAddress() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require msg.sender == ext_call.return_data[12 len 20]
                                require address(stor7[arg1].field_0)
                                mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                                mem[32] = sha3(address(stor7[arg1].field_0), 8)
                                mem[64] = ceil32(arg2.length) + 192
                                mem[ceil32(arg2.length) + 160] = 0
                            else:
                                stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                                mem[ceil32(arg2.length) + 160] = 11
                                mem[ceil32(arg2.length) + 192] = 'eth_rinkeby'
                                bool(stor2.length) = 0
                                uint255(stor2.length.field_1) = 11
                                Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                                idx = 0
                                while stor2.length + 31 / 32 > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                mem[ceil32(arg2.length) + 256] = 0
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).cbAddress() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require msg.sender == ext_call.return_data[12 len 20]
                                require address(stor7[arg1].field_0)
                                mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                                mem[32] = sha3(address(stor7[arg1].field_0), 8)
                                mem[64] = ceil32(arg2.length) + 256
                                mem[ceil32(arg2.length) + 224] = 0
        require arg2.length >= 2
        require 0 < arg2.length
        require '[' == Mask(8, 248, mem[128])
        require arg2.length - 1 < arg2.length
        require ']' == Mask(8, -(8 * arg2.length + -ceil32(arg2.length) + 31) + 248, mem[arg2.length + 127 len ceil32(arg2.length) + -arg2.length + 1]) << 8 * arg2.length + -ceil32(arg2.length) + 31
    else:
        mem[arg2.length + 128] = 0
        if not stor0:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[arg2.length + 160] = 11
                mem[arg2.length + 192] = 'eth_mainnet'
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 11
                Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                mem[arg2.length + 256] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                require address(stor7[arg1].field_0)
                mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                mem[32] = sha3(address(stor7[arg1].field_0), 8)
                mem[64] = arg2.length + 256
                mem[arg2.length + 224] = 0
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[arg2.length + 160] = 12
                    mem[arg2.length + 192] = 'eth_ropsten3'
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 12
                    Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                    mem[arg2.length + 256] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    require address(stor7[arg1].field_0)
                    mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                    mem[32] = sha3(address(stor7[arg1].field_0), 8)
                    mem[64] = arg2.length + 256
                    mem[arg2.length + 224] = 0
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[arg2.length + 160] = 9
                        mem[arg2.length + 192] = 'eth_kovan'
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 9
                        Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                        mem[arg2.length + 256] = 0
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        require address(stor7[arg1].field_0)
                        mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                        mem[32] = sha3(address(stor7[arg1].field_0), 8)
                        mem[64] = arg2.length + 256
                        mem[arg2.length + 224] = 0
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                            mem[arg2.length + 192] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            require address(stor7[arg1].field_0)
                            mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                            mem[32] = sha3(address(stor7[arg1].field_0), 8)
                            mem[64] = arg2.length + 192
                            mem[arg2.length + 160] = 0
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[arg2.length + 160] = 11
                            mem[arg2.length + 192] = 'eth_rinkeby'
                            bool(stor2.length) = 0
                            uint255(stor2.length.field_1) = 11
                            Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                            mem[arg2.length + 256] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            require address(stor7[arg1].field_0)
                            mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                            mem[32] = sha3(address(stor7[arg1].field_0), 8)
                            mem[64] = arg2.length + 256
                            mem[arg2.length + 224] = 0
        else:
            if ext_code.size(stor0):
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                mem[arg2.length + 192] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                require address(stor7[arg1].field_0)
                mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                mem[32] = sha3(address(stor7[arg1].field_0), 8)
                mem[64] = arg2.length + 192
                mem[arg2.length + 160] = 0
            else:
                if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                    stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                    mem[arg2.length + 160] = 11
                    mem[arg2.length + 192] = 'eth_mainnet'
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 11
                    Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                    mem[arg2.length + 256] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    require address(stor7[arg1].field_0)
                    mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                    mem[32] = sha3(address(stor7[arg1].field_0), 8)
                    mem[64] = arg2.length + 256
                    mem[arg2.length + 224] = 0
                else:
                    if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                        stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                        mem[arg2.length + 160] = 12
                        mem[arg2.length + 192] = 'eth_ropsten3'
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 12
                        Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                        mem[arg2.length + 256] = 0
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        require address(stor7[arg1].field_0)
                        mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                        mem[32] = sha3(address(stor7[arg1].field_0), 8)
                        mem[64] = arg2.length + 256
                        mem[arg2.length + 224] = 0
                    else:
                        if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                            stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                            mem[arg2.length + 160] = 9
                            mem[arg2.length + 192] = 'eth_kovan'
                            bool(stor2.length) = 0
                            uint255(stor2.length.field_1) = 9
                            Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                            mem[arg2.length + 256] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            require address(stor7[arg1].field_0)
                            mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                            mem[32] = sha3(address(stor7[arg1].field_0), 8)
                            mem[64] = arg2.length + 256
                            mem[arg2.length + 224] = 0
                        else:
                            if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                    stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                else:
                                    if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                        stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                    else:
                                        if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                            stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                mem[arg2.length + 192] = 0
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).cbAddress() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require msg.sender == ext_call.return_data[12 len 20]
                                require address(stor7[arg1].field_0)
                                mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                                mem[32] = sha3(address(stor7[arg1].field_0), 8)
                                mem[64] = arg2.length + 192
                                mem[arg2.length + 160] = 0
                            else:
                                stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                                mem[arg2.length + 160] = 11
                                mem[arg2.length + 192] = 'eth_rinkeby'
                                bool(stor2.length) = 0
                                uint255(stor2.length.field_1) = 11
                                Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                                idx = 0
                                while stor2.length + 31 / 32 > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                mem[arg2.length + 256] = 0
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).cbAddress() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require msg.sender == ext_call.return_data[12 len 20]
                                require address(stor7[arg1].field_0)
                                mem[0] = uint128(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))
                                mem[32] = sha3(address(stor7[arg1].field_0), 8)
                                mem[64] = arg2.length + 256
                                mem[arg2.length + 224] = 0
        require arg2.length >= 2
        require 0 < arg2.length
        require '[' == Mask(8, 248, mem[128])
        require arg2.length - 1 < arg2.length
        require ']' == Mask(8, 248, mem[arg2.length + 127 len 1], 0)
    s = 0
    idx = 1
    t = 0
    while idx < arg2.length - 1:
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) >= '0':
            if Mask(8, 248, mem[idx + 128]) <= '9':
                s = Mask(8, 248, mem[idx + 128])
                idx = idx + 1
                t = (10 * t) + mem[idx + 128 len 1] - 48
                continue 
        if Mask(8, 248, mem[idx + 128]) != ',':
            s = Mask(8, 248, mem[idx + 128])
            idx = idx + 1
            t = t
            continue 
        if sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0 - sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_256 > 0:
            require sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0 + -sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_256 - 1 < sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0
            mem[0] = sha3(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7))))))), sha3(address(stor7[arg1].field_0), 8))
            stor[sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0 - sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_256 + ('map', ('or', ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7))))))), ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))), ('map', ('type', 160, ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7))))), ('name', 'sub_42ad5c86', 8)))].field_0 = t
        else:
            sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0++
            if not sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0 <= sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0 + 1:
                s = sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0 + sha3(sha3(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7))))))), sha3(address(stor7[arg1].field_0), 8))) + 1
                while sha3(sha3(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7))))))), sha3(address(stor7[arg1].field_0), 8))) + sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = sha3(('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7))))))), sha3(address(stor7[arg1].field_0), 8))
            sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))][sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0].field_0 = t
        s = Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        t = 0
        continue 
    if not t:
        emit 0xd3816890: arg1, address(stor7[arg1].field_0), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))), stor7[arg1].field_512, 0
    else:
        if sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0 - sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_256 > 0:
            require sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0 + -sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_256 - 1 < sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0
            stor[sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0 - sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_256 + ('map', ('or', ('mask_shl', 128, 0, 128, ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7))))))), ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))), ('map', ('type', 160, ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7))))), ('name', 'sub_42ad5c86', 8)))].field_0 = t
        else:
            sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0++
            if not sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0 <= sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0 + 1:
                idx = sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0 + 1
                while sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0 > idx:
                    sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))][sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_0].field_0 = t
        sub_42ad5c86[address(stor7[arg1].field_0)][('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))) << 128 or ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))].field_256++
        emit 0xd3816890: arg1, address(stor7[arg1].field_0), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('field', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7))))))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 384, ('stor', ('map', ('param', 'arg1'), ('name', 'stor7', 7)))))))), stor7[arg1].field_512, 1
    address(stor7[arg1].field_0) = 0
    stor7[arg1].field_256 = 0
    stor7[arg1].field_512 = 0
}



}
