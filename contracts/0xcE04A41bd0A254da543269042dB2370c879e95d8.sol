contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor1;

function _fallback() payable {
    call stor0.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if 0 == ext_call.return_data[12 len 20]:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0x9efbea6358bed926b293d2ce63a730d6d98d43dd) > 0:
                stor0 = 0x9efbea6358bed926b293d2ce63a730d6d98d43dd
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
        call stor0.getAddress() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
    mem[388] = mem[417 len 3]
    call address(ext_call.return_data[0]).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[388])
    require ext_call.success
    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
        mem[452] = mem[481 len 3]
        mem[612] = mem[635 len 9]
        call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args 0, 96, 160, 3, mem[452], 105, 'html(https://www.youtube.com/wat', 'ch?v=9bZkp7q19f0).xpath(//*[cont', 'ains(@class, "watch-view-count")', ']/text())' >> 512, mem[612]
        require ext_call.success
    return code.data[1282 len 2165]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;
array of uint256 viewsCount;

function viewsCount() payable {
    return viewsCount[0 len viewsCount.length]
}

function _fallback() payable {
  stop
}

function __callback(bytes32 arg1, string arg2) payable {
    call stor0.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != 0:
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        call address(ext_call.return_data[0]).cbAddress() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    else:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0x9efbea6358bed926b293d2ce63a730d6d98d43dd) > 0:
                stor0 = 0x9efbea6358bed926b293d2ce63a730d6d98d43dd
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
        call stor0.getAddress() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        call address(ext_call.return_data[0]).cbAddress() with:
             gas gas_remaining - 25050 wei
    require msg.sender == ext_call.return_data[12 len 20]
    viewsCount[] = Array(len=arg2.length, data=arg2[all])
}

function update(uint256 arg1) payable {
    call stor0.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if 0 == ext_call.return_data[12 len 20]:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0x9efbea6358bed926b293d2ce63a730d6d98d43dd) > 0:
                stor0 = 0x9efbea6358bed926b293d2ce63a730d6d98d43dd
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
        call stor0.getAddress() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
    mem[388] = mem[417 len 3]
    call address(ext_call.return_data[0]).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[388])
    require ext_call.success
    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
        mem[452] = mem[481 len 3]
        mem[612] = mem[635 len 9]
        call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args arg1, 96, 160, 3, mem[452], 105, 'html(https://www.youtube.com/wat', 'ch?v=9bZkp7q19f0).xpath(//*[cont', 'ains(@class, "watch-view-count")', ']/text())' >> 512, mem[612]
        require ext_call.success
}



}
