contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;

function _fallback() payable {
    revert
}

function isSupported(address arg1, uint256 arg2) {
    return (arg2 and stor0[address(arg1)] == arg2)
}

function enableFeatures(uint256 arg1, bool arg2) {
    if not arg2:
        if arg1 and stor0[address(msg.sender)] == arg1:
            stor0[msg.sender] = !arg1 and stor0[msg.sender]
            emit FeaturesRemoval(arg1, msg.sender);
    else:
        if arg1 and stor0[address(msg.sender)] != arg1:
            stor0[msg.sender] = arg1 or stor0[msg.sender]
            emit FeaturesAddition(arg1, msg.sender);
}



}
