contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint8 stor1;
uint8 stor1; offset 8

function _fallback() payable {
    if bool(code.data[1062 len 32]) == 1:
        uint8(stor1.field_0) = 1
        bool(stor0.length) = 0
        stor0.length.field_1 = 7
        stor0.length.field_8 = 'testnet' / 256
        idx = 0
        while stor0.length + 31 / 32 > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not code.data[1062 len 32]:
        uint8(stor1.field_8) = 1
        bool(stor0.length) = 0
        stor0.length.field_1 = 7
        stor0.length.field_8 = 'mainnet' / 256
        idx = 0
        while stor0.length + 31 / 32 > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
    return code.data[587 len 475]
}



// =====================  Runtime code  =====================


array of uint256 network;
uint8 stor1;
uint8 stor1; offset 8

function sub_0b48b678(?) payable {
    return bool(uint8(stor1.field_0))
}

function network() payable {
    return network[0 len network.length]
}

function sub_e81b0462(?) payable {
    return bool(uint8(stor1.field_8))
}

function _fallback() payable {
  stop
}



}
