contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor1;

function _fallback() payable {
    call stor0.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if 0 == ext_call.return_data[12 len 20]:
        if ext_code.size(0x1d11e5eae3112dbd44f99266872ff1d07c77dce8) > 0:
            stor0 = 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8
        else:
            if ext_code.size(0x9efbea6358bed926b293d2ce63a730d6d98d43dd) > 0:
                stor0 = 0x9efbea6358bed926b293d2ce63a730d6d98d43dd
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
        call stor0.0x38cc4831 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
    mem[356] = mem[385 len 3]
    call address(ext_call.return_data[0]).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[356])
    require ext_call.success
    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
        mem[420] = mem[449 len 3]
        mem[548] = mem[575 len 5]
        call address(stor1).0xadf59f99 with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args 0, 96, 160, 3, mem[420], 69, 'xml(https://www.fueleconomy.gov/', 'ws/rest/fuelprices).fuelPrices.d', 'iesel' >> 256, mem[548]
        require ext_call.success
    return code.data[1245 len 2044]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;
uint256 sub_2b5f892f;

function sub_2b5f892f(?) payable {
    return sub_2b5f892f
}

function _fallback() payable {
  stop
}

function update(uint256 arg1) payable {
    call stor0.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if 0 == ext_call.return_data[12 len 20]:
        if ext_code.size(0x1d11e5eae3112dbd44f99266872ff1d07c77dce8) > 0:
            stor0 = 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8
        else:
            if ext_code.size(0x9efbea6358bed926b293d2ce63a730d6d98d43dd) > 0:
                stor0 = 0x9efbea6358bed926b293d2ce63a730d6d98d43dd
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
        call stor0.0x38cc4831 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
    mem[356] = mem[385 len 3]
    call address(ext_call.return_data[0]).0x524f3889 with:
         gas gas_remaining - 25050 wei
        args Array(len=3, data=mem[356])
    require ext_call.success
    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
        mem[420] = mem[449 len 3]
        mem[548] = mem[575 len 5]
        call address(stor1).0xadf59f99 with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 34050 wei
            args arg1, 96, 160, 3, mem[420], 69, 'xml(https://www.fueleconomy.gov/', 'ws/rest/fuelprices).fuelPrices.d', 'iesel' >> 256, mem[548]
        require ext_call.success
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    call stor0.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != 0:
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        call address(ext_call.return_data[0]).0xc281d19e with:
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
        call stor0.0x38cc4831 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
        call address(ext_call.return_data[0]).0xc281d19e with:
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
    sub_2b5f892f = s
}



}
