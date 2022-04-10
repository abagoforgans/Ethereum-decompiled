contract main {


// =======================  Init code  ======================


const _fallback = code.data[27 len 176]




// =====================  Runtime code  =====================


uint256 data;

function getData() {
    return data
}

function _fallback() payable {
    revert
}

function setData(uint256 arg1) {
    data = arg1
}



}
