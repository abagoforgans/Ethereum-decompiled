contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 705]




// =====================  Runtime code  =====================


array of uint256 name;

function getName(address arg1) {
    return name[address(arg1)][0 len name[address(arg1)].length]
}

function hasName(address arg1) {
    return bool(name[address(arg1)].length)
}

function _fallback() payable {
    revert 
}

function setName(string arg1) {
    if arg1.length >= 3:
        name[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}



}
