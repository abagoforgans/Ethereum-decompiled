contract main {




// =====================  Runtime code  =====================


array of uint256 sub_02b8b9bf;
array of uint256 web;
address contractOwner;

function sub_02b8b9bf(?) {
    return sub_02b8b9bf[0 len sub_02b8b9bf.length]
}

function sub_98249222(?) {
    return web[0 len web.length]
}

function contractOwner() {
    return contractOwner
}

function webAddress() {
    return web[0 len web.length]
}

function _fallback() payable {
    revert
}

function setHash(string arg1) payable {
    require msg.sender == contractOwner
    sub_02b8b9bf[] = Array(len=arg1.length, data=arg1[all])
}



}
