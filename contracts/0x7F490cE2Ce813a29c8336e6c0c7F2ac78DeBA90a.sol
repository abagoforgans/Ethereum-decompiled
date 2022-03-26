contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[81 len 1032]
}



// =====================  Runtime code  =====================


const transfer(address arg1, uint256 arg2) = 0


address owner;
mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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

function addTx(address arg1, uint256 arg2, string arg3) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    emit Tx(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
}



}
