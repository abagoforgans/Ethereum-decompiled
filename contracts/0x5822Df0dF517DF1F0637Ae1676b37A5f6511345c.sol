contract main {


// =======================  Init code  ======================


const _fallback = code.data[29 len 248]




// =====================  Runtime code  =====================


uint256 count;

function getCount() {
    return count
}

function _fallback() payable {
    revert
}

function add(uint256 arg1) {
    count += arg1
    return count
}



}
