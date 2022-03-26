contract main {


// =======================  Init code  ======================


array of uint256 stor2;
uint8 stor3; offset 24
uint32 stor3;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 0
    stor2.length.field_8 = mem[128 len 31]
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3.field_0 % 16777216 = 550000
    uint8(stor3.field_24) = 0
    return code.data[276 len 1852]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint32 oraclizeGas;
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

function sub_d2020698(?) {
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
