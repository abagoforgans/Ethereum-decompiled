contract main {


// =======================  Init code  ======================


uint8 stor1; offset 184
uint32 stor1; offset 160

function _fallback() payable {
    stor1.field_160 % 16777216 = 200000
    uint8(stor1.field_184) = 0
    return code.data[84 len 1847]
}



// =====================  Runtime code  =====================


address stor0;
uint32 oraclizeGas; offset 160
uint256 stor1;
uint256 sub_9a76efeb;
array of uint256 randomResult;

function oraclizeGas() {
    return oraclizeGas
}

function randomResult() {
    return randomResult[0 len randomResult.length]
}

function sub_9a76efeb(?) {
    return sub_9a76efeb
}

function _fallback() payable {
    revert 
}

function __callback(bytes32 arg1, string arg2) {
    randomResult[] = Array(len=arg2.length, data=arg2[all])
}

function sub_d2020698(?) payable {
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
    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
    sub_9a76efeb = 'SNAKES FOUR'
}



}
