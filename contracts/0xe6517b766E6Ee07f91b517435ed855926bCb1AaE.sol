contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 192
uint32 stor1; offset 168
uint256 stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() {
    stor2 = msg.sender
    stor3 = msg.sender
    if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
        stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
    else:
        if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
            stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
        else:
            if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
            else:
                if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                    stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                else:
                    if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                        stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                    else:
                        if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                            stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                else:
                    if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                        stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                    else:
                        if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                            stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                        else:
                            if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
        require ext_code.size(stor0)
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    else:
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
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor1.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1.field_0))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
         gas gas_remaining - 50 wei
        args 0x1100000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require stor2 == msg.sender
    stor5 = 935
    stor7 = 25000
    stor6 = stor7 * stor4 / 10^6
    require stor2 == msg.sender
    stor8 = 2 * 10^17
    stor1.field_168 % 16777216 = 250000
    uint8(stor1.field_192) = 0
    return code.data[1498 len 8897]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
