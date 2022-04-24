contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;
address stor5;
address stor7;
array of struct stor9;
uint256 stor12;

function _fallback() {
    stor5 = msg.sender
    require code.data[12963 len 20]
    stor7 = code.data[12963 len 20]
    require code.data[13079 len 32] < code.data[13111 len 32]
    require code.data[13207 len 32] < code.data[13239 len 32]
    require code.data[13111 len 32] <= code.data[13207 len 32]
    require code.data[13047 len 32] < code.data[13175 len 32]
    require ext_code.size(stor7)
    call stor7.0xd5abeb01 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require code.data[13175 len 32] < ext_call.return_data[0]
    stor9.length++
    if not stor9.length > stor9.length + 1:
        stor9[stor9.length].field_0 = code.data[13015 len 32]
        stor9[stor9.length].field_256 = code.data[12983 len 32]
        stor9[stor9.length].field_512 = 0
        stor9[stor9.length].field_768 = code.data[13047 len 32]
        stor9[stor9.length].field_1024 = code.data[13079 len 32]
        stor9[stor9.length].field_1280 = code.data[13111 len 32]
        stor9[stor9.length].field_1536 = 0
        stor9.length++
    else:
        idx = (7 * stor9.length) + 7
        while 7 * stor9.length > idx:
            stor9[idx].field_0 = 0
            stor9[idx].field_256 = 0
            stor9[idx].field_512 = 0
            stor9[idx].field_768 = 0
            stor9[idx].field_1024 = 0
            stor9[idx].field_1280 = 0
            stor9[idx].field_1536 = 0
            idx = idx + 7
            continue 
        stor9[stor9.length].field_0 = code.data[13015 len 32]
        stor9[stor9.length].field_256 = code.data[12983 len 32]
        stor9[stor9.length].field_512 = 0
        stor9[stor9.length].field_768 = code.data[13047 len 32]
        stor9[stor9.length].field_1024 = code.data[13079 len 32]
        stor9[stor9.length].field_1280 = code.data[13111 len 32]
        stor9[stor9.length].field_1536 = 0
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = (7 * stor9.length) + 7
            while 7 * stor9.length > idx:
                stor9[idx].field_0 = 0
                stor9[idx].field_256 = 0
                stor9[idx].field_512 = 0
                stor9[idx].field_768 = 0
                stor9[idx].field_1024 = 0
                stor9[idx].field_1280 = 0
                stor9[idx].field_1536 = 0
                idx = idx + 7
                continue 
    stor9[stor9.length].field_0 = code.data[13015 len 32]
    stor9[stor9.length].field_256 = code.data[12983 len 32]
    stor9[stor9.length].field_512 = code.data[13143 len 32]
    stor9[stor9.length].field_768 = code.data[13175 len 32]
    stor9[stor9.length].field_1024 = code.data[13207 len 32]
    stor9[stor9.length].field_1280 = code.data[13239 len 32]
    stor9[stor9.length].field_1536 = 0
    stor12 = block.timestamp
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
    return code.data[2263 len 10688]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
