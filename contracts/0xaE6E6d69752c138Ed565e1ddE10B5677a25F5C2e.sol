contract main {


// =======================  Init code  ======================


function _fallback() payable {
    require eth.balance(0x304a554a310c7e546dfe434669c62820b7d83490) >= 1000 * 10^18 * 3600
    selfdestruct(code.data[163 len 20])
}



// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}



}
