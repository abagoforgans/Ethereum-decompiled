contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x87bb217883541a312fac2977c2a744219963586f
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    mem[356] = mem[376 len 12]
    call address(stor0).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=12, data=mem[356])
    require ext_call.success
    mem[420] = mem[440 len 12]
    mem[484] = Mask(192, 32, 'weather conditions in London') >> 32, mem[512 len 4]
    call address(stor0).query(uint256 rg1, string rg2, string rg3) with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args 60, 96, 160, 12, mem[420], 28, mem[484]
    require ext_call.success
    return code.data[872 len 1662]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#
address stor0;
uint256 stor0;

function _fallback() payable {
  stop
}

function checkWeather() payable {
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0) = ext_call.return_data[0] or Mask(96, 160, uint256(stor0))
    mem[356] = mem[376 len 12]
    call address(stor0).getPrice(string rg1) with:
         gas gas_remaining - 25050 wei
        args Array(len=12, data=mem[356])
    require ext_call.success
    mem[420] = mem[440 len 12]
    mem[484] = Mask(192, 32, 'weather conditions in London') >> 32, mem[512 len 4]
    call address(stor0).query(uint256 rg1, string rg2, string rg3) with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args 60, 96, 160, 12, mem[420], 28, mem[484]
    require ext_call.success
}



}
