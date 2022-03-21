contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;

function _fallback() payable {
    mem[96 len -5480] = code.data[5539 len -5480]
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor2 = mem[96]
    return code.data[59 len 5480]
}



// =====================  Runtime code  =====================


#
#  - sub_252a1437(?)
#  - post(string arg1)
#
address stor0;
address stor1;
uint256 stor1;
uint256 stor2;
mapping of address stor11;

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
        if ext_call.success:
            if msg.sender == ext_call.return_data[12 len 20]:
    else:
        if ext_code.size(0x1d11e5eae3112dbd44f99266872ff1d07c77dce8) > 0:
            stor0 = 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8
        else:
            if ext_code.size(0x9efbea6358bed926b293d2ce63a730d6d98d43dd) > 0:
                stor0 = 0x9efbea6358bed926b293d2ce63a730d6d98d43dd
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
        call stor0.getAddress() with:
             gas gas_remaining - 25050 wei
        if ext_call.success:
            uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
            call address(ext_call.return_data[0]).cbAddress() with:
                 gas gas_remaining - 25050 wei
            if msg.sender == ext_call.return_data[12 len 20]:
    revert 
}

function __callback(bytes32 arg1, string arg2, bytes arg3) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    call stor0.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != 0:
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        call address(ext_call.return_data[0]).cbAddress() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    else:
        if ext_code.size(0x1d11e5eae3112dbd44f99266872ff1d07c77dce8) > 0:
            stor0 = 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8
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
    if stor2 > s:
        call address(stor11[arg1]) with:
           value s wei
             gas 0 wei
}

function sub_b10504ff(?) payable {
    call stor0.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20]:
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
             gas gas_remaining - 25050 wei
            args 0x1100000000000000000000000000000000000000000000000000000000000000
        require ext_call.success
    else:
        if ext_code.size(0x1d11e5eae3112dbd44f99266872ff1d07c77dce8) > 0:
            stor0 = 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8
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
        call address(ext_call.return_data[0]).setProofType(bytes1 rg1) with:
             gas gas_remaining - 25050 wei
            args 0x1100000000000000000000000000000000000000000000000000000000000000
    call stor0.getAddress() with:
         gas gas_remaining - 25050 wei
    if 0 == ext_call.return_data[12 len 20]:
        if ext_code.size(0x1d11e5eae3112dbd44f99266872ff1d07c77dce8) > 0:
            stor0 = 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8
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
    mem[ceil32(arg1.length) + 484] = mem[ceil32(arg1.length) + 513 len 3]
    call address(ext_call.return_data[0]).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[ceil32(arg1.length) + 484])
    require ext_call.success
    if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
        uint256(stor11[0]) = msg.sender or Mask(96, 160, uint256(stor11[0]))
    else:
        mem[ceil32(arg1.length) + 580] = mem[ceil32(arg1.length) + 609 len 3]
        mem[ceil32(arg1.length) + 708] = mem[ceil32(arg1.length) + 734 len 6]
        call address(stor1).query2(uint256 rg1, string rg2, string rg3, string rg4) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args 0, 128, 192, 320, 3, mem[ceil32(arg1.length) + 580], 70, 'json(https://graph.facebook.com/', 'me/friends).result.summary.total', '_count' >> 256, mem[ceil32(arg1.length) + 708], 0
        require ext_call.success
        uint256(stor11[ext_call.return_data[0]]) = msg.sender or Mask(96, 160, uint256(stor11[ext_call.return_data[0]]))
}



}
