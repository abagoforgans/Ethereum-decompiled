contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
        stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
    else:
        if ext_code.size(0x9efbea6358bed926b293d2ce63a730d6d98d43dd) > 0:
            stor1 = 0x9efbea6358bed926b293d2ce63a730d6d98d43dd
        else:
            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
            else:
                if ext_code.size(0x9a1d6e5c6c8d081ac45c6af98b74a42442afba60) > 0:
                    stor1 = 0x9a1d6e5c6c8d081ac45c6af98b74a42442afba60
    if not stor1:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0x9efbea6358bed926b293d2ce63a730d6d98d43dd) > 0:
                stor1 = 0x9efbea6358bed926b293d2ce63a730d6d98d43dd
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                else:
                    if ext_code.size(0x9a1d6e5c6c8d081ac45c6af98b74a42442afba60) > 0:
                        stor1 = 0x9a1d6e5c6c8d081ac45c6af98b74a42442afba60
    require ext_code.size(stor1)
    call stor1.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    mem[356] = mem[385 len 3]
    require ext_code.size(address(stor2))
    call address(stor2).getPrice(string rg1) with:
         gas gas_remaining - 50 wei
        args Array(len=3, data=mem[356])
    require ext_call.success
    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
        mem[420] = mem[449 len 3]
        mem[548] = mem[577 len 3]
        require ext_code.size(address(stor2))
        call address(stor2).query(uint256 rg1, string rg2, string rg3) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 9050 wei
            args 10, 96, 160, 3, mem[420], 67, 'json(https://poloniex.com/public', '?command=returnTicker).BTC_ETH.l', 'ast' >> 256, mem[548]
        require ext_call.success
    return code.data[1595 len 2340]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor2;
array of uint256 sub_822683c6;

function sub_822683c6(?) {
    return sub_822683c6[0 len sub_822683c6.length]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function changeOwner(address arg1) {
    if stor0 == msg.sender:
        stor0 = arg1
}

function __callback(bytes32 arg1, string arg2) {
    if not stor1:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0x9efbea6358bed926b293d2ce63a730d6d98d43dd) > 0:
                stor1 = 0x9efbea6358bed926b293d2ce63a730d6d98d43dd
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                else:
                    if ext_code.size(0x9a1d6e5c6c8d081ac45c6af98b74a42442afba60) > 0:
                        stor1 = 0x9a1d6e5c6c8d081ac45c6af98b74a42442afba60
    require ext_code.size(stor1)
    call stor1.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).cbAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    sub_822683c6[] = Array(len=arg2.length, data=arg2[all])
}

function update() payable {
    if not stor1:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0x9efbea6358bed926b293d2ce63a730d6d98d43dd) > 0:
                stor1 = 0x9efbea6358bed926b293d2ce63a730d6d98d43dd
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                else:
                    if ext_code.size(0x9a1d6e5c6c8d081ac45c6af98b74a42442afba60) > 0:
                        stor1 = 0x9a1d6e5c6c8d081ac45c6af98b74a42442afba60
    require ext_code.size(stor1)
    call stor1.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    mem[356] = mem[385 len 3]
    require ext_code.size(address(stor2))
    call address(stor2).getPrice(string rg1) with:
         gas gas_remaining - 50 wei
        args Array(len=3, data=mem[356])
    require ext_call.success
    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
        mem[420] = mem[449 len 3]
        mem[548] = mem[577 len 3]
        require ext_code.size(address(stor2))
        call address(stor2).query(uint256 rg1, string rg2, string rg3) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 9050 wei
            args 10, 96, 160, 3, mem[420], 67, 'json(https://poloniex.com/public', '?command=returnTicker).BTC_ETH.l', 'ast' >> 256, mem[548]
        require ext_call.success
}



}
