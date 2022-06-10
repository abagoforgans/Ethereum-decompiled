contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;

function name() {
    return name[0 len name.length]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function changeName(string arg1) {
    require msg.sender == owner
    name[] = Array(len=arg1.length, data=arg1[all])
}



}
