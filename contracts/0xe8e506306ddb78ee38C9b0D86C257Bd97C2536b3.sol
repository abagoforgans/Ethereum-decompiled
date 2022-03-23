contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 339]




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint8 stor0; offset 16

function ran() payable {
    return bool(uint8(stor0.field_0))
}

function forked() payable {
    return bool(uint8(stor0.field_8))
}

function notforked() payable {
    return bool(uint8(stor0.field_16))
}

function _fallback() payable {
    require block.number >= 1920000
    require not uint8(stor0.field_0)
    uint8(stor0.field_0) = 1
    if eth.balance(0xbf4ed7b27f1d666546e30d74d50d173d20bca754) >= 10000000 * 10^18:
        uint8(stor0.field_8) = 1
    if eth.balance(0x304a554a310c7e546dfe434669c62820b7d83490) >= 3000000 * 10^18:
        uint8(stor0.field_16) = 1
    require bool(uint8(stor0.field_16)) != bool(uint8(stor0.field_8))
}



}
