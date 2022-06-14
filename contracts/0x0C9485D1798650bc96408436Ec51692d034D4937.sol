contract main {




// =====================  Runtime code  =====================


address owner;

function getOwner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_a1ef48d1(?) {
    if owner != msg.sender:
        revert with 0, '1'
    return 1
}

function setOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, '1'
    owner = arg1
}

function sub_57e1000a(?) {
    require arg1 <= 4
    if not arg1:
        revert with 0, '3'
    require arg1 <= 4
    if arg1 == 1:
        return 1
    require arg1 <= 4
    if arg1 == 2:
        return 2
    require arg1 <= 4
    if arg1 == 3:
        return 3
    require arg1 <= 4
    if arg1 != 4:
        revert with 0, '4'
    return 4
}



}
