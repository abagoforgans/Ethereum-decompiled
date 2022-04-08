contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;
address stor4;

function _fallback() payable {
    stor1 = 0x8d5bd2aba04a07bfa0cc976c73ed45b23cc6d6a2
    stor2 = 0x688d12d97d0e480559b6beb6ee9907b625c14adb
    stor3 = 0x34972356af9b8912c1dc2737fd43352a8146d23d
    stor4 = 0x259bbd479bd174129a3ccb007f608d52cd2630e9
    require not msg.value
    return code.data[368 len 1536]
}



// =====================  Runtime code  =====================


const contract_md5 = '847df4b1ba31f28b9399b52d784e4a8e'


mapping of uint8 stor0;
address stor1;
address stor2;
address stor3;
address stor4;

function isSignedByAlex() {
    return (bool(stor0[stor1]) == 1)
}

function isSignedByToly() {
    return (bool(stor0[stor3]) == 1)
}

function isSignedByAndrey() {
    return (bool(stor0[stor2]) == 1)
}

function isSignedByEugene() {
    return (bool(stor0[stor4]) == 1)
}

function isSignedBy(address arg1) {
    return (bool(stor0[address(arg1)]) == 1)
}

function sing() {
    if bool(stor0[address(msg.sender)]) != 1:
        stor0[address(msg.sender)] = 1
}

function singBy(address arg1) {
    if bool(stor0[address(arg1)]) != 1:
        stor0[address(arg1)] = 1
}

function contract_sha256() {
    return 'cd195ff7ac4743a1c878f0100e138e36471bb79c0254d58806b8244080979116'
}

function _fallback() {
    if bool(stor0[address(msg.sender)]) != 1:
        stor0[address(msg.sender)] = 1
}

function isSignedByAll() {
    if bool(stor0[stor1]) != 1:
        return (bool(stor0[stor1]) == 1)
    if bool(stor0[stor2]) != 1:
        return (bool(stor0[stor2]) == 1)
    if bool(stor0[stor3]) != 1:
        return (bool(stor0[stor3]) == 1)
    return (bool(stor0[stor4]) == 1)
}



}
