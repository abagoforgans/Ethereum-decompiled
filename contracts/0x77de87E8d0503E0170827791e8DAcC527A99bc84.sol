contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor1;

function _fallback() payable {
    emit newOraclizeQuery(Array(len=53, data='Oraclize query was sent, standin', 'g by for the answer..'));
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                    stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                else:
                    if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                        stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                    else:
                        if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                            stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
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
    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
    mem[388] = mem[417 len 3]
    require ext_code.size(address(stor1))
    call address(stor1).getPrice(string rg1) with:
         gas gas_remaining - 50 wei
        args Array(len=3, data=mem[388])
    require ext_call.success
    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
        mem[452] = mem[481 len 3]
        mem[612] = mem[635 len 9]
        require ext_code.size(address(stor1))
        call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 9050 wei
            args 0, 96, 160, 3, mem[452], 105, 'html(https://www.youtube.com/wat', 'ch?v=9bZkp7q19f0).xpath(//*[cont', 'ains(@class, "watch-view-count")', ']/text())' >> 512, mem[612]
        require ext_call.success
    return code.data[1956 len 3513]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;
array of struct viewsCount;

function viewsCount() {
    return viewsCount[0 len viewsCount.length].field_0
}

function _fallback() payable {
    revert 
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function __callback(bytes32 arg1, string arg2) {
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                    stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                else:
                    if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                        stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                    else:
                        if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                            stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
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
    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).cbAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    viewsCount[].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 192] = uint256(viewsCount.field_0)
    idx = ceil32(arg2.length) + 192
    s = 0
    while ceil32(arg2.length) + viewsCount.length + 192 > idx + 32:
        mem[idx + 32] = viewsCount[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x4304d91e: Array(len=viewsCount.length, data=mem[ceil32(arg2.length) + 192 len viewsCount.length + (floor32(viewsCount.length - 1) + -viewsCount.length + 32 % 32)])
}

function update() payable {
    emit newOraclizeQuery(Array(len=53, data='Oraclize query was sent, standin', 'g by for the answer..'));
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
            else:
                if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                    stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                else:
                    if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                        stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                    else:
                        if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                            stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
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
    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
    mem[388] = mem[417 len 3]
    require ext_code.size(address(stor1))
    call address(stor1).getPrice(string rg1) with:
         gas gas_remaining - 50 wei
        args Array(len=3, data=mem[388])
    require ext_call.success
    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
        mem[452] = mem[481 len 3]
        mem[612] = mem[635 len 9]
        require ext_code.size(address(stor1))
        call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 9050 wei
            args 0, 96, 160, 3, mem[452], 105, 'html(https://www.youtube.com/wat', 'ch?v=9bZkp7q19f0).xpath(//*[cont', 'ains(@class, "watch-view-count")', ']/text())' >> 512, mem[612]
        require ext_call.success
}



}
