contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1588]




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;
mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function topUp() {
  stop
}

function sub_9e72d52e(?) {
    balanceOf[address(msg.sender)] = 0
    call msg.sender with:
       value balanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, this.address);
}

function _fallback() {
    emit LogS(Array(len=2, data='go'));
    if 0 == stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0x9efbea6358bed926b293d2ce63a730d6d98d43dd) > 0:
                stor0 = 0x9efbea6358bed926b293d2ce63a730d6d98d43dd
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                else:
                    if ext_code.size(0x9a1d6e5c6c8d081ac45c6af98b74a42442afba60) > 0:
                        stor0 = 0x9a1d6e5c6c8d081ac45c6af98b74a42442afba60
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
    mem[292] = mem[312 len 12]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getPrice(string rg1) with:
         gas gas_remaining - 50 wei
        args Array(len=12, data=mem[292])
    require ext_call.success
    if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
        emit LogB(0);
    else:
        mem[356] = mem[376 len 12]
        mem[420] = Mask(240, 8, 'random number between 0 and 100') >> 8, mem[451 len 1]
        require ext_code.size(address(stor1))
        call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 9050 wei
            args 0, 96, 160, 12, mem[356], 31, mem[420]
        require ext_call.success
        emit LogB(ext_call.return_data[0]);
}



}
