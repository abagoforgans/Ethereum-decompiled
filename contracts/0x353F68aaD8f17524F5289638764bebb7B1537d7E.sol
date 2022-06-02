contract main {




// =====================  Runtime code  =====================


#
#  - sub_03c05762(?)
#  - sub_29042591(?)
#  - sub_5a2f9b13(?)
#  - sub_b83375a6(?)
#  - sub_b918df55(?)
#  - sub_d2589bde(?)
#
address databaseAddress;
address sub_ef9fa23cAddress;
address owner;
uint256 sub_80cb11a6;
uint8 stor4;

function expired() {
    return bool(stor4)
}

function database() {
    return databaseAddress
}

function sub_80cb11a6(?) {
    return sub_80cb11a6
}

function owner() {
    return owner
}

function sub_ef9fa23c(?) {
    return sub_ef9fa23cAddress
}

function _fallback() payable {
    revert
}

function sub_8871c163(?) {
    require msg.sender == owner
    sub_80cb11a6 = arg1
}

function closeContract() {
    require msg.sender == owner
    require not stor4
    stor4 = 1
}



}
