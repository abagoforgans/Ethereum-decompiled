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
    return code.data[1282 len 2088]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;
uint256 viewsCount;

function viewsCount() payable {
    return viewsCount
}

function _fallback() payable {
  stop
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

function __callback(bytes32 arg1, string arg2) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
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
    mem[64] = ceil32(arg2.length) + 160
    mem[ceil32(arg2.length) + 128] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                require idx < arg2.length
                idx = idx + 1
                s = (10 * s) + mem[idx + 128 len 1] - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    viewsCount = s
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
    mem[ceil32(arg2.length) + 452] = mem[ceil32(arg2.length) + 481 len 3]
    call address(ext_call.return_data[0]).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[ceil32(arg2.length) + 452])
    require ext_call.success
    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
        mem[ceil32(arg2.length) + 516] = mem[ceil32(arg2.length) + 545 len 3]
        mem[ceil32(arg2.length) + 676] = mem[ceil32(arg2.length) + 699 len 9]
        call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args 600, 96, 160, 3, mem[ceil32(arg2.length) + 516], 105, 'html(https://www.youtube.com/wat', 'ch?v=9bZkp7q19f0).xpath(//*[cont', 'ains(@class, "watch-view-count")', ']/text())' >> 512, mem[ceil32(arg2.length) + 676]
        require ext_call.success
}



}
