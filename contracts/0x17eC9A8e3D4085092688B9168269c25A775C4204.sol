contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    stor5 = 25000
    if not stor0:
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
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).setProofType(bytes1 rg1) with:
         gas gas_remaining - 50 wei
        args 0x1100000000000000000000000000000000000000000000000000000000000000
    require ext_call.success
    stor2 = msg.sender
    return code.data[1204 len 4497]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;
address stor2;
uint256 counter;
uint256 errCounter;
uint256 stor5;

function counter() {
    return counter
}

function errCounter() {
    return errCounter
}

function destruct() payable {
    require stor2 == msg.sender
    selfdestruct(stor2)
}

function invest() payable {
  stop
}

function _fallback() {
    errCounter += 2
}

function changeGasLimitOfSafeSend(uint256 arg1) {
    require stor2 == msg.sender
    stor5 = arg1
}

function divest(uint256 arg1) payable {
    require stor2 == msg.sender
    require eth.balance(this.address) >= arg1
    call stor2 with:
       value arg1 wei
         gas stor5 wei
    require ext_call.success
}

function count() payable {
    require stor2 == msg.sender
    if not stor0:
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
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    mem[580] = mem[609 len 3]
    require ext_code.size(address(stor1))
    call address(stor1).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args Array(len=3, data=mem[580]), stor5 + 125000
    require ext_call.success
    if ext_call.return_data[0] <= (125000 * block.gasprice) + (stor5 * block.gasprice) + 10^18:
        mem[676] = mem[705 len 3]
        mem[772] = mem[797 len 7]
        require ext_code.size(address(stor1))
        call address(stor1).query2_withGasLimit(uint256 rg1, string rg2, string rg3, string rg4, uint256 rg5) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 9050 wei
            args 0, 160, 224, 320, stor5 + 125000, 3, mem[676], 39, 'json(https://typbr.com/counter).', 'counter', mem[772], 192, code.data[4305 len 192]
        require ext_call.success
}

function __callback(bytes32 arg1, string arg2, bytes arg3) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if not stor0:
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
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 0
    require ext_code.size(address(stor1))
    call address(stor1).cbAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 192
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0
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
    counter = s
}



}
