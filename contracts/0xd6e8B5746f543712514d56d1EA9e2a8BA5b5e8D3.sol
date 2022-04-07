contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 603]




// =====================  Runtime code  =====================


array of address address;

function list(uint256 arg1) {
    require arg1 < address.length
    return address(address[arg1])
}

function getCount() {
    return address.length
}

function getAddress(uint256 arg1) {
    require arg1 < address.length
    return address(address[arg1])
}

function _fallback() payable {
    revert
}

function add(address arg1) {
    address.length++
    if not address.length <= address.length + 1:
        idx = address.length + 1
        while address.length > idx:
            uint256(address[idx]) = 0
            idx = idx + 1
            continue 
    address(address[address.length]) = arg1
    emit Added(arg1);
}



}
