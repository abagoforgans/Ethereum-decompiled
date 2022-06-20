contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - sub_76223353(?)
#
const contractBalance = eth.balance(this.address)


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address stor102;
address stor103;
uint256 stor103;
array of uint256 stor104;
address stor105;
address stor106;
address stor107;
uint256 stor108;
uint256 sub_91dbbabe;
mapping of uint8 stor113;
array of uint256 stor114;

function owner() {
    return owner
}

function sub_91dbbabe(?) {
    if stor107 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed by Controller contract'
    return sub_91dbbabe
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function sub_93a3eaab(?) {
    require msg.sender == owner
    stor108 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_b8f230f2(?) {
    require msg.sender == owner
    stor114[] = Array(len=arg1.length, data=arg1[all])
}

function sub_22cc9a02(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    stor107 = arg1
}

function sub_df2b9119(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    stor106 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setLibAddress(address arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    stor105 = arg1
}

function sub_19669891(?) {
    if stor107 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed by Controller contract'
    return not bool(stor113[Mask(128, 128, arg1)])
}

function sub_2498b452(?) {
    require msg.sender == owner
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract balance must be greater than zero'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setContractAddresses(address arg1, address arg2, address arg3) {
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid controller address supplied'
    if not arg2:
        revert with 0, 'Invalid packs address supplied'
    if not arg3:
        revert with 0, 'Invalid lib address supplied'
    stor107 = arg1
    stor106 = arg2
    stor105 = arg3
}

function sub_2c51114e(?) payable {
    require msg.sender == owner
    if not stor102:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor102 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor104.length) = 0
            stor104.length.field_1 = 11
            stor104.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor104.length + 31 / 32 > idx:
                stor104[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor102 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor104.length) = 0
                stor104.length.field_1 = 12
                stor104.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor104.length + 31 / 32 > idx:
                    stor104[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor102 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor104.length) = 0
                    stor104.length.field_1 = 9
                    stor104.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor104.length + 31 / 32 > idx:
                        stor104[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor102 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor102 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor102 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor102 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor104.length) = 0
                        stor104.length.field_1 = 11
                        stor104.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor104.length + 31 / 32 > idx:
                            stor104[idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if not ext_code.size(stor102):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor102 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor104.length) = 0
                stor104.length.field_1 = 11
                stor104.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor104.length + 31 / 32 > idx:
                    stor104[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor102 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor104.length) = 0
                    stor104.length.field_1 = 12
                    stor104.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor104.length + 31 / 32 > idx:
                        stor104[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor102 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor104.length) = 0
                        stor104.length.field_1 = 9
                        stor104.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor104.length + 31 / 32 > idx:
                            stor104[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor102 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor102 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor102 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor102 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor104.length) = 0
                            stor104.length.field_1 = 11
                            stor104.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor104.length + 31 / 32 > idx:
                                stor104[idx].field_0 = 0
                                idx = idx + 1
                                continue 
    require ext_code.size(stor102)
    call stor102.getAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(stor103) != ext_call.return_data[12 len 20]:
        require ext_code.size(stor102)
        call stor102.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor103) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor103))
    require ext_code.size(address(stor103))
    call address(stor103).setCustomGasPrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f9d14748(?) {
    if stor107 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed by Controller contract'
    if not stor102:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor102 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor104.length) = 0
            stor104.length.field_1 = 11
            stor104.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor104.length + 31 / 32 > idx:
                stor104[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor102 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor104.length) = 0
                stor104.length.field_1 = 12
                stor104.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor104.length + 31 / 32 > idx:
                    stor104[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor102 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor104.length) = 0
                    stor104.length.field_1 = 9
                    stor104.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor104.length + 31 / 32 > idx:
                        stor104[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor102 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor102 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor102 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor102 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor104.length) = 0
                        stor104.length.field_1 = 11
                        stor104.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor104.length + 31 / 32 > idx:
                            stor104[idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if not ext_code.size(stor102):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor102 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor104.length) = 0
                stor104.length.field_1 = 11
                stor104.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor104.length + 31 / 32 > idx:
                    stor104[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor102 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor104.length) = 0
                    stor104.length.field_1 = 12
                    stor104.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor104.length + 31 / 32 > idx:
                        stor104[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor102 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor104.length) = 0
                        stor104.length.field_1 = 9
                        stor104.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor104.length + 31 / 32 > idx:
                            stor104[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor102 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor102 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor102 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor102 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor104.length) = 0
                            stor104.length.field_1 = 11
                            stor104.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor104.length + 31 / 32 > idx:
                                stor104[idx].field_0 = 0
                                idx = idx + 1
                                continue 
    require ext_code.size(stor102)
    call stor102.getAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(stor103) != ext_call.return_data[12 len 20]:
        require ext_code.size(stor102)
        call stor102.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor103) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor103))
    require ext_code.size(address(stor103))
    call address(stor103).getPrice(string arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 'URL', stor108
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function initialize(address arg1) {
    if uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    owner = arg1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    if not stor102:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor102 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor104.length) = 0
            stor104.length.field_1 = 11
            stor104.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor104.length + 31 / 32 > idx:
                stor104[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor102 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor104.length) = 0
                stor104.length.field_1 = 12
                stor104.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor104.length + 31 / 32 > idx:
                    stor104[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor102 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor104.length) = 0
                    stor104.length.field_1 = 9
                    stor104.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor104.length + 31 / 32 > idx:
                        stor104[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor102 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor102 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor102 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor102 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor104.length) = 0
                        stor104.length.field_1 = 11
                        stor104.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor104.length + 31 / 32 > idx:
                            stor104[idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if not ext_code.size(stor102):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor102 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor104.length) = 0
                stor104.length.field_1 = 11
                stor104.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor104.length + 31 / 32 > idx:
                    stor104[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor102 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor104.length) = 0
                    stor104.length.field_1 = 12
                    stor104.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor104.length + 31 / 32 > idx:
                        stor104[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor102 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor104.length) = 0
                        stor104.length.field_1 = 9
                        stor104.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor104.length + 31 / 32 > idx:
                            stor104[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor102 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor102 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor102 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor102 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor104.length) = 0
                            stor104.length.field_1 = 11
                            stor104.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor104.length + 31 / 32 > idx:
                                stor104[idx].field_0 = 0
                                idx = idx + 1
                                continue 
    require ext_code.size(stor102)
    call stor102.getAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(stor103) != ext_call.return_data[12 len 20]:
        require ext_code.size(stor102)
        call stor102.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor103) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor103))
    require ext_code.size(address(stor103))
    call address(stor103).setCustomGasPrice(uint256 arg1) with:
         gas gas_remaining wei
        args 10^10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor108 = 400000
    sub_91dbbabe = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}



}
