contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;
uint8 stor8; offset 160
address stor8;
uint256 stor9;

function _fallback() payable {
    uint8(stor8.field_160) = 0
    require not msg.value
    address(stor8.field_0) = code.data[8505 len 20]
    stor9 = code.data[8525 len 32]
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
        if ext_code.size(stor0):
            call stor0.getAddress() with:
                 gas gas_remaining - 710 wei
            if ext_call.success:
                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
                         gas gas_remaining - 710 wei
                        args 0x1100000000000000000000000000000000000000000000000000000000000000
                    if ext_call.success:
                        return code.data[1800 len 6693]
    else:
        if ext_code.size(stor0):
            call stor0.getAddress() with:
                 gas gas_remaining - 710 wei
            if ext_call.success:
                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
                         gas gas_remaining - 710 wei
                        args 0x1100000000000000000000000000000000000000000000000000000000000000
                    if ext_call.success:
                        return code.data[1800 len 6693]
        else:
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
            if ext_code.size(stor0):
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                    if ext_code.size(address(ext_call.return_data[0])):
                        call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
                             gas gas_remaining - 710 wei
                            args 0x1100000000000000000000000000000000000000000000000000000000000000
                        if ext_call.success:
                            return code.data[1800 len 6693]
    revert
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - update()
#
array of uint256 price;
uint256 sub_97b87577;
uint256 lastUpdated;
uint8 lock; offset 160
uint128 stor8; offset 160
address adminAddress;
uint256 stor9;

function sub_2df7c12b(?) {
    return price[0 len price.length]
}

function sub_58836e9f(?) {
    return sub_97b87577
}

function sub_97b87577(?) {
    return sub_97b87577
}

function getPrice() {
    return price[0 len price.length]
}

function lastUpdated() {
    return lastUpdated
}

function lock() {
    return bool(lock)
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function updateInterval(uint256 arg1) {
    require adminAddress == msg.sender
    stor9 = arg1
}

function sub_0ba1fbfa(?) {
    require adminAddress == msg.sender
    stor8 = Mask(96, 0, not lock)
}

function sub_5cb6ce52(?) {
    require adminAddress == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
