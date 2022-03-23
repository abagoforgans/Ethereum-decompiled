contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 204]




// =====================  Runtime code  =====================


mapping of uint256 ratings;

function ratings(bytes32 arg1) payable {
    return ratings[arg1]
}

function _fallback() payable {
  stop
}

function setRating(bytes32 arg1, uint256 arg2) payable {
    ratings[arg1] = arg2
}



}
