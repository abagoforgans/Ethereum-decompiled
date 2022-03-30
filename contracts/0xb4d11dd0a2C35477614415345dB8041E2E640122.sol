contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
mapping of uint8 stor1;

function _fallback() {
    stor0[address(msg.sender)] = 1
    stor1[address(msg.sender)] = 1
    return code.data[83 len 974]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint256 sub_71947bfe;

function sub_29fe989f(?) {
    return bool(stor0[arg1])
}

function sub_71947bfe(?) {
    return sub_71947bfe[arg1]
}

function sub_e73675ec(?) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert 
}

function sub_80b2381e(?) {
    require stor0[address(msg.sender)]
    stor1[address(arg1)] = uint8(arg2)
}

function sub_84573694(?) {
    require stor0[address(msg.sender)]
    require arg1 != msg.sender
    stor0[address(arg1)] = uint8(arg2)
}

function sub_a665def2(?) {
    if sub_71947bfe[address(msg.sender)] < arg2:
        require stor0[address(msg.sender)]
    require sub_71947bfe[address(arg1)] + arg2 >= sub_71947bfe[address(arg1)]
    if not stor1[address(arg1)]:
        require stor0[address(arg1)]
    if not stor1[address(msg.sender)]:
        require stor0[address(msg.sender)]
    if not stor0[address(msg.sender)]:
        sub_71947bfe[address(msg.sender)] -= arg2
    sub_71947bfe[address(arg1)] += arg2
}



}
