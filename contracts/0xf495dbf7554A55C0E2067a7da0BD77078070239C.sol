contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor0 = 1
    require not msg.value
    stor1 = msg.sender
    return code.data[100 len 1134]
}



// =====================  Runtime code  =====================


uint256 version;
address stor1;
mapping of address stor2;

function getVersion() {
    return version
}

function _fallback() payable {
    revert
}

function containsAdmin(address arg1) {
    return not not stor2[address(arg1)]
}

function addAdmin(address arg1) {
    require msg.sender == stor1
    stor2[address(arg1)] = arg1
    emit AdminAdded(arg1);
}

function deleteAdmin(address arg1) {
    require msg.sender == stor1
    stor2[address(arg1)] = 0
    emit AdminDeleted(arg1);
}



}
