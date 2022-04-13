contract main {


// =======================  Init code  ======================


address stor2;

function _fallback() {
    stor2 = msg.sender
    return code.data[60 len 1011]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
array of uint256 names;
address owner;

function names(uint256 arg1) {
    require arg1 < names.length
    return names[arg1]
}

function owner() {
    return owner
}

function sub_d0906ee9(?) {
    return names.length
}

function End() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_2d2c2f8f(?) {
    require owner == msg.sender
    owner = arg1
}

function sub_69261cda(?) {
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512, bool(stor0[arg1].field_768)
}

function sub_a1079334(?) {
    if stor0[arg1].field_768:
        if owner != msg.sender:
            require stor0[arg1].field_256 == msg.sender
    else:
        names.length++
        if not names.length <= names.length + 1:
            idx = names.length + 1
            while names.length > idx:
                names[idx] = 0
                idx = idx + 1
                continue 
        names[names.length] = arg1
    stor0[arg1].field_768 = 1
    stor0[arg1].field_0 = arg2
    stor0[arg1].field_256 = msg.sender
    stor0[arg1].field_512 = arg3
}



}
