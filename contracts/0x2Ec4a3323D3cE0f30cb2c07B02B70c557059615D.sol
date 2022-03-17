contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 203]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function exp2(uint256 arg1) payable {
    return ((arg1^11 / 5376) + (arg1^10 / 24320) + (arg1^9 / 35200) + (arg1^8 / 40320) + (arg1^7 / 5040))
}

function exp(uint256 arg1) payable {
    return (arg1 + (arg1^2 / 2) + (arg1^3 / 6) + (arg1^4 / 24) + (arg1^5 / 120) + (arg1^6 / 208) + (arg1^11 / 5376) + (arg1^10 / 24320) + (arg1^9 / 35200) + (arg1^8 / 40320) + (arg1^7 / 5040) + 1)
}



}
