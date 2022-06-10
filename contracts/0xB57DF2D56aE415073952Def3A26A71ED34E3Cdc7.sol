contract main {




// =====================  Runtime code  =====================


array of uint256 description;

function getDescription() {
    return description[0 len description.length]
}

function _fallback() payable {
    revert
}

function setDescription(string arg1) {
    description[] = Array(len=arg1.length, data=arg1[all])
}



}
