contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[97 len 2345]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sellTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
}

function sub_e3d29231(?) {
    require balanceOf[address(msg.sender)] >= 1
    balanceOf[address(msg.sender)]--
    create contract with 0 wei
                    code: code.data[1310 len 992], arg1, arg2, arg3, arg4, arg5, arg6, msg.sender
    require create.new_address
    return address(create.new_address)
}



}
