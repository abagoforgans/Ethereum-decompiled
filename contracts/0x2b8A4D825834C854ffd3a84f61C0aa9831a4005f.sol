contract main {




// =====================  Runtime code  =====================


mapping of address stor0;
mapping of uint256 balanceOf;
array of uint256 stor5;
mapping of uint256 stor6;
array of uint256 stor7;
mapping of uint256 stor8;

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function buyToken() payable {
    require msg.sender
    require not stor0[stor7.length + 1]
    stor0[stor7.length + 1] = msg.sender
    balanceOf[address(msg.sender)]++
    stor5[address(msg.sender)]++
    stor5[address(msg.sender)][stor5[address(msg.sender)]] = stor7.length + 1
    stor6[stor7.length + 1] = stor5[address(msg.sender)]
    stor8[stor7.length + 1] = stor7.length
    stor7.length++
    stor7[stor7.length] = stor7.length + 1
}



}
